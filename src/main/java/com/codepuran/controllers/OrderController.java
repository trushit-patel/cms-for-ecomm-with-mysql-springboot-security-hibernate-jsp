package com.codepuran.controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.codepuran.model.Cart;
import com.codepuran.model.CartItem;
import com.codepuran.model.Checkout;
import com.codepuran.model.OrderItem;
import com.codepuran.model.Orders;
import com.codepuran.model.User;
import com.codepuran.service.CartItemService;
import com.codepuran.service.CartService;
import com.codepuran.service.CheckoutService;
import com.codepuran.service.OrderItemService;
import com.codepuran.service.OrdersService;
import com.codepuran.service.UserService;
import com.codepuran.validator.CheckoutValidator;

import javassist.NotFoundException;

@Controller
public class OrderController {

	@Autowired
	private CartService cartService;
	
	@Autowired
	private CartItemService cartItemService;

	@Autowired
	private UserService userService;
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private OrderItemService orderItemService;
	
	@Autowired
	private CheckoutService checkoutService;
	
	@Autowired
	private CheckoutValidator checkoutValidator;
	
	@PostMapping(value = "/checkout")
	private String order(Principal principal,HttpServletRequest request,@ModelAttribute("checkoutForm") Checkout checkout, BindingResult bindingResult,Model model) {
		
		User user = userService.findByUsername(principal.getName());
		checkout.setUser(user);
		
		Cart userCart = cartService.findByUser(user);
		
		checkoutValidator.validate(checkout, bindingResult);

		if (bindingResult.hasErrors()) {
			
			Map<String, Object> map = new HashMap<>();
			map.put("userCart", userCart);
			model.addAllAttributes(map);
			
			return "/checkout";
		}
		
		checkout = checkoutService.save(checkout);
		
		Orders order = new Orders();
		order.setUser(user);
		order.setOrderTotal(userCart.getCartTotal());//added now
		order = ordersService.placeOrder(order);
		
		Set<CartItem> userCartItems = userCart.getCartItems();
		
		Set<OrderItem> userOrderItems = new HashSet<>();
		for (CartItem cartItem : userCartItems) {
			
			OrderItem orderItem = new OrderItem();
			orderItem.setProduct(cartItem.getProduct());
			orderItem.setQty(cartItem.getQty());
			orderItem.setOrder(order);
			orderItem.setItemTotal(cartItem.getItemTotal());
			
			orderItemService.addItem(orderItem);
			userOrderItems.add(orderItem);
		}
		
//		order.setOrderItems(userOrderItems);
//		ordersService.placeOrder(order);
		
		cartItemService.deleteAllInCollection(userCartItems);
//		userCartItems.clear();
//		userCart.setCartItems(userCartItems);
//		cartService.save(userCart);
		
		return "redirect:/cart";
	}
	
	@GetMapping(value = "/checkout")
	private ModelAndView checkout(Principal principal,HttpServletRequest request) {
		
		User user = userService.findByUsername(principal.getName());
		Cart userCart = cartService.findByUser(user);
		
		Map<String, Object> map = new HashMap<>();
		
		if (userCart.getCartItems().isEmpty() || userCart.getCartItems() == null) {
			map.put("messages",new ArrayList<String>(Arrays.asList("Your cart is empty")));
			return new ModelAndView("redirect:/cart").addAllObjects(map);
		}
		
		Checkout userCheckoutDetails = checkoutService.findByUser(user);
		if(userCheckoutDetails == null) {
			userCheckoutDetails = new Checkout();
		}
		
		map.put("userCart", userCart);
		map.put("checkoutForm", userCheckoutDetails);
		return new ModelAndView("checkout").addAllObjects(map);
	}
	
	@GetMapping(value = "/order")
	private ModelAndView getOrder(Principal principal,HttpServletRequest request,@RequestParam(value = "id" , required = true)Integer id) throws NotFoundException {
		
		User user = userService.findByUsername(principal.getName());
		Orders order = ordersService.findById(id);
		
		if(order == null)throw new NotFoundException("The order does not exist");
		
		Map<String, Object> map = new HashMap<>();
		
		if (order.getOrderItems().isEmpty() || order.getOrderItems() == null) {
			map.put("messages",new ArrayList<String>(Arrays.asList("This order does not have any items")));
			return new ModelAndView("redirect:/account").addAllObjects(map);
		}
		
		Checkout userCheckoutDetails = checkoutService.findByUser(user);
		if(userCheckoutDetails == null) {
			userCheckoutDetails = new Checkout();
		}
		
		map.put("order", order);
		map.put("checkoutForm", userCheckoutDetails);
		return new ModelAndView("order").addAllObjects(map);
	}
}
