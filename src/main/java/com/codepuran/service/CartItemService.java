package com.codepuran.service;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.codepuran.model.Cart;
import com.codepuran.model.CartItem;
import com.codepuran.model.Products;

@Service
public interface CartItemService {
	
	CartItem addItem(CartItem cartItem);
	void removeItem(CartItem cartItem);
	CartItem findById(int id);
	CartItem findByProduct(Products product);
	CartItem findByProductAndCart(Products product,Cart cart);
	List<CartItem> findByCart(Cart cart);
	
	@Transactional
	void deleteAllInCollection(Collection<CartItem> cartItems);
	
	List<CartItem> findAll();
}
