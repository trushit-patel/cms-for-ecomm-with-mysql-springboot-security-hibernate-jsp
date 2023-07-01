package com.codepuran.service;

import java.util.Collection;
import java.util.List;

import org.springframework.stereotype.Service;

import com.codepuran.model.OrderItem;
import com.codepuran.model.Orders;
import com.codepuran.model.Products;

@Service
public interface OrderItemService {

	OrderItem addItem(OrderItem orderItem);
	void removeItem(OrderItem orderItem);
	OrderItem findById(int id);
	OrderItem findByProduct(Products product);
	List<OrderItem> findAll();
	Collection<OrderItem> findByOrders(Collection<Orders> orders);
	void deleteAll(Collection<OrderItem> orderItems);
	
	Collection<OrderItem> findByOrder(Orders order);
}
