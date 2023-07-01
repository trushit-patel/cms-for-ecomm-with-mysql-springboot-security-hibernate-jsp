package com.codepuran.service;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codepuran.model.Cart;
import com.codepuran.model.CartItem;
import com.codepuran.model.Products;
import com.codepuran.repository.CartItemrRepository;

import javassist.NotFoundException;

@Service
public class CartItemServiceImpl implements CartItemService {
	@Autowired
	private CartItemrRepository cartItemrRepository;


	@Override
	public CartItem addItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		cartItem.setItemTotal(cartItem.getQty() * cartItem.getProduct().getSalePrice());
		return cartItemrRepository.save(cartItem);
	}

	@Override
	public void removeItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		cartItemrRepository.delete(cartItem);
	}

	@Override
	public CartItem findById(int id) {
		// TODO Auto-generated method stub
		return cartItemrRepository.findOne(id);
	}

	@Override
	public CartItem findByProduct(Products product) {
		// TODO Auto-generated method stub
		return cartItemrRepository.findByProduct(product);
	}

	@Override
	public List<CartItem> findAll() {
		// TODO Auto-generated method stub
		return cartItemrRepository.findAll();
	}

	@Override public CartItem findByProductAndCart(Products product, Cart cart) {
		// TODO Auto-generated method stub
		return cartItemrRepository.findByProductAndCart(product, cart);
	}

	@Override
	@Transactional
	public void deleteAllInCollection(Collection<CartItem> cartItems) {
		// TODO Auto-generated method stub
		cartItemrRepository.deleteAll(cartItems);
	}

	@Override
	public List<CartItem> findByCart(Cart cart) {
		// TODO Auto-generated method stub
		return cartItemrRepository.findByCart(cart);
	}
}
