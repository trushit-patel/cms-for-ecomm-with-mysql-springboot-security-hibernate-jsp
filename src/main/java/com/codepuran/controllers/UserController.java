package com.codepuran.controllers;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.codepuran.model.Cart;
import com.codepuran.model.Checkout;
import com.codepuran.model.OrderItem;
import com.codepuran.model.Orders;
import com.codepuran.model.Role;
import com.codepuran.model.User;
import com.codepuran.service.CartItemService;
import com.codepuran.service.CartService;
import com.codepuran.service.CheckoutService;
import com.codepuran.service.OrderItemService;
import com.codepuran.service.OrdersService;
import com.codepuran.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private OrdersService ordersService;

	@Autowired
	private OrderItemService orderItemService;

	@Autowired
	private CartService cartService;

	@Autowired
	private CartItemService cartItemService;

	@Autowired
	private CheckoutService checkoutService;

	@GetMapping(value = { "/account"})
	public ModelAndView myAccount(Authentication authentication) {
		UserDetails userDetails = (UserDetails) authentication.getPrincipal();
		User user = userService.findByUsername(userDetails.getUsername());


		Map<String, Object> map = new HashMap<>();
		map.put("userForm",user);
		map.put("orders", ordersService.findByUser(user));
		return new ModelAndView("my-account").addAllObjects(map);
	}

	@GetMapping(value = { "/account/delete"})
	@Transactional
	public ModelAndView deleteMyAccount(Authentication authentication,HttpServletRequest request) {

		UserDetails userDetails = (UserDetails) authentication.getPrincipal();
		User user = userService.findByUsername(userDetails.getUsername());

		Cart userCart = cartService.findByUser(user);
//		List<CartItem> cartItems = cartItemService.findByCart(userCart);
//		if(!cartItems.isEmpty()) {
//			System.out.println("in if c");
//			System.out.println(cartItems.size());
//			cartItemService.deleteAllInCollection(cartItems);
//		}
		cartService.delete(userCart);

		List<Orders> orders = ordersService.findByUser(user);
		if(!orders.isEmpty()) {

			System.out.println("in if o");

			Collection<OrderItem> orderItems = orderItemService.findByOrders(orders);
			if(!orderItems.isEmpty()) {
				orderItemService.deleteAll(orderItems);
				System.out.println("in if oi");
			}
			ordersService.deleteAll(orders);
//			for (Orders order : orders) {
//				ordersService.deleteOrder(order);
//			}
		}

		Checkout checkout = checkoutService.findByUser(user);
		if (checkout != null) {
			checkoutService.delete(checkout);
		}
		
		Set<Role> roles = user.getRoles();
		roles.clear();
		user.setRoles(roles);

		user = userService.save(user);
		userService.delete(user);
		
		HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }

		return new ModelAndView("redirect:/");
	}
}
