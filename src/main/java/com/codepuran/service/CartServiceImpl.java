package com.codepuran.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codepuran.model.Cart;
import com.codepuran.model.CartItem;
import com.codepuran.model.OrderItem;
import com.codepuran.model.User;
import com.codepuran.repository.CartRepository;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartRepository cartRepository;

	@Override
	public Cart findByUser(User user) {
		// TODO Auto-generated method stub
		return cartRepository.findByUser(user);
	}

	@Override
	public Cart save(Cart cart) {
		// TODO Auto-generated method stub

		double total = 0;

		if(cart.getCartItems() != null && !cart.getCartItems().isEmpty() ) {
			for (CartItem item : cart.getCartItems()) {
				total += item.getItemTotal();
			}
		}

		cart.setCartTotal(total);

		return cartRepository.save(cart);
	}

	@Override
	public void delete(Cart cart) {
		// TODO Auto-generated method stub
		cartRepository.delete(cart);
	}

}
