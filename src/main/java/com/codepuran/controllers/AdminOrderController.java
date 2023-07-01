package com.codepuran.controllers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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

import javassist.NotFoundException;

@Controller
@RequestMapping(value = "/admin/")
public class AdminOrderController {
	
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
	
	@GetMapping(value = "/order/{username}/{orderid}")
	private ModelAndView getOrder(@PathVariable(value = "username") String username,HttpServletRequest request,@PathVariable(value = "orderid", required = true)Integer id) throws NotFoundException {
		
		User user = userService.findByUsername(username);
		
		
		Orders order = ordersService.findByUserAndId(user,id);
		
		if(order == null)throw new NotFoundException("The order does not exist");
		
		Map<String, Object> map = new HashMap<>();
		
		if (order.getOrderItems().isEmpty() || order.getOrderItems() == null) {
			map.put("messages",new ArrayList<String>(Arrays.asList("This order does not have any items")));
			return new ModelAndView("redirect:/admin/orders").addAllObjects(map);
		}
		
		Checkout userCheckoutDetails = checkoutService.findByUser(user);
		if(userCheckoutDetails == null) throw new NotFoundException(username+"ChecOutDetails");
		
		map.put("order", order);
		map.put("checkoutForm", userCheckoutDetails);
		return new ModelAndView("admin/order").addAllObjects(map);
	}
	
	@GetMapping(value = "/order")
	private ModelAndView getOrders() throws NotFoundException {
		
		List<Orders> orders = ordersService.findAll();
		Map<String, Object> map = new HashMap<>();
		map.put("orders", orders);
		
		return new ModelAndView("admin/orders").addAllObjects(map);
	}
	
	@GetMapping(value = "/order/delete/{id}")
	private ModelAndView getOrders(@PathVariable(value = "id", required = true)int id) throws NotFoundException {
		
		Orders order = ordersService.findById(id);
		
		if(order == null)throw new NotFoundException("The order does not exist");
		
		Collection<OrderItem> orderItems = orderItemService.findByOrder(order);
		if(!orderItems.isEmpty()) {
			orderItemService.deleteAll(orderItems);
		}
		ordersService.deleteOrder(order);
		
		return new ModelAndView("redirect:/admin/order");
	}

}
