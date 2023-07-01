package com.codepuran.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codepuran.model.Checkout;
import com.codepuran.model.User;

@Service
public interface CheckoutService {

	List<Checkout> findAll();
	Checkout save(Checkout checkout);
	Checkout findById(int id);
	void delete(Checkout checkout);
	Checkout findByUser(User user);
}
