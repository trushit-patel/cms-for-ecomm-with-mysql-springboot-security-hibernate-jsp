package com.codepuran.service;

import java.util.Collection;
import java.util.List;

import org.springframework.stereotype.Service;

import com.codepuran.model.Orders;
import com.codepuran.model.User;

@Service
public interface OrdersService {

	List<Orders> findAll();
	
	List<Orders> findByUser(User user);
	
	Orders findById(int id);
	
	Orders findByUserAndId(User user, Integer id);
	
	Orders placeOrder(Orders order);
	
	void deleteOrder(Orders order);
	
	void deleteAll(Collection<Orders> orders);
}
