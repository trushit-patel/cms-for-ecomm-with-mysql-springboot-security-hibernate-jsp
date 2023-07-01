package com.codepuran.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codepuran.model.Checkout;
import com.codepuran.model.User;
import com.codepuran.repository.CheckoutRepository;

@Service
public class CheckoutServiceImpl implements CheckoutService {
	
	@Autowired
	private CheckoutRepository checkoutRepository;

	@Override
	public List<Checkout> findAll() {
		// TODO Auto-generated method stub
		return checkoutRepository.findAll();
	}

	@Override
	public Checkout save(Checkout checkout) {
		// TODO Auto-generated method stub
		return checkoutRepository.save(checkout);
	}

	@Override
	public Checkout findById(int id) {
		// TODO Auto-generated method stub
		return checkoutRepository.findOne(id);
	}

	@Override
	public void delete(Checkout checkout) {
		// TODO Auto-generated method stub
		checkoutRepository.delete(checkout);
	}

	@Override
	public Checkout findByUser(User user) {
		// TODO Auto-generated method stub
		return checkoutRepository.findByUser(user);
	}

}
