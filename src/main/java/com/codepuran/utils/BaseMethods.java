package com.codepuran.utils;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.codepuran.model.Cart;
import com.codepuran.repository.CartRepository;
import com.codepuran.service.CartService;
import com.codepuran.service.UserService;

@Component
public class BaseMethods {
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private UserService userService;

	public void setUserCartInSession(String userName, HttpServletRequest httpServletRequest) {
		HttpSession session = httpServletRequest.getSession(true);
		
		Cart cart = cartService.findByUser(userService.findByUsername(userName));
		session.setAttribute("cartItems", cart.getCartItems());
	}
}
