package com.codepuran.controllers;

import java.security.Principal;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.codepuran.model.Cart;
import com.codepuran.model.CartItem;
import com.codepuran.model.Products;
import com.codepuran.model.User;
import com.codepuran.service.CartItemService;
import com.codepuran.service.CartService;
import com.codepuran.service.ProductsService;
import com.codepuran.service.UserService;

@Controller
@RequestMapping(value = "/cart")
public class CartController {

	@Autowired
	private ProductsService productsService;

	@Autowired
	private CartService cartService;

	@Autowired
	private CartItemService cartItemService;

	@Autowired
	private UserService userService;

	@GetMapping(value = "/add")
	public ModelAndView AddToCart(HttpServletRequest request, Principal principal, @RequestParam(value = "productID",required = true) Integer id ,
			@RequestParam(value = "qty",required = true) Integer qty, @RequestParam(value = "func", required = true)String func) {

		if( qty != null && qty.intValue() == 0)throw new IllegalArgumentException();

		User user = userService.findByUsername(principal.getName());
		Cart userCart = cartService.findByUser(user);

		Products product = productsService.findById(id);
		CartItem cartItem = cartItemService.findByProductAndCart(product,userCart);

		if(cartItem == null) {
			cartItem = new CartItem();
			cartItem.setProduct(product);
			cartItem = cartItemService.addItem(cartItem);
			System.out.println("cart item null");
		}

		Set<CartItem> userCartItems = userCart.getCartItems();
		boolean contains = userCartItems.contains(cartItem);

//		if (contains && qty != null) {
//			cartItem.setQty(qty);
//			System.out.println("yes yes");
//		}
//		else if (contains && qty == null) {
//			cartItem.setQty(cartItem.getQty() + 1);
//		}
//		else if (!contains && qty != null) {
//			cartItem.setQty(qty);
//		}
	
		if (contains && func.equals("set")) {
			cartItem.setQty(qty);
			System.out.println("yes set");
		}
		else if (contains && func.equals("add")) {
			cartItem.setQty(cartItem.getQty() + qty);
			System.out.println("yes add");
		}
		else if (!contains) {
			cartItem.setQty(qty);
			System.out.println("no --");
		}

		cartItem.setCart(userCart);
		cartItem = cartItemService.addItem(cartItem);
		userCartItems.add(cartItem);
		
		userCart.setCartItems(userCartItems);
		cartService.save(userCart);
		
		String prevUrl = request.getHeader("Referer");
		return new ModelAndView("redirect:"+prevUrl);
	}

	@GetMapping(value = "/delete")
	public ModelAndView removeFromCart(HttpServletRequest request, Principal principal, 
			@RequestParam(value = "productID",required = true) Integer id) {

		User user = userService.findByUsername(principal.getName());
		Cart userCart = cartService.findByUser(user);
		Set<CartItem> userCartItems = userCart.getCartItems();

		Products product = productsService.findById(id);
		CartItem cartItem = cartItemService.findByProductAndCart(product,userCart);

		if(cartItem == null || !userCartItems.contains(cartItem) ) {
			throw new IllegalArgumentException("item not found");
		}

		userCartItems.remove(cartItem);
		cartItemService.removeItem(cartItem);
		
		userCart.setCartItems(userCartItems);
		cartService.save(userCart);
		
		String prevUrl = request.getHeader("Referer");
		return new ModelAndView("redirect:"+prevUrl);
	}

	@GetMapping(value = "")
	public ModelAndView cart( Principal principal ) {
		User user = userService.findByUsername(principal.getName());

		Cart userCart = cartService.findByUser(user);
		return new ModelAndView("cart","cart",userCart);
	}
}
