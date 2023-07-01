package com.codepuran.service;

import org.springframework.stereotype.Service;

import com.codepuran.model.Cart;
import com.codepuran.model.User;

@Service
public interface CartService {
	Cart findByUser(User user);
	Cart save(Cart cart);
	void delete(Cart cart);
}
