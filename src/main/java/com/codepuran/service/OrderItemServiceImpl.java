package com.codepuran.service;

import java.util.Collection;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codepuran.model.OrderItem;
import com.codepuran.model.Orders;
import com.codepuran.model.Products;
import com.codepuran.repository.OrderItemsRepository;

@Service
public class OrderItemServiceImpl implements OrderItemService {
	
	@Autowired
	private OrderItemsRepository orderItemsRepository;

	@Override
	@Transactional
	public OrderItem addItem(OrderItem orderItem) {
		// TODO Auto-generated method stub
		return orderItemsRepository.save(orderItem);
	}

	@Override
	@Transactional
	public void removeItem(OrderItem orderItem) {
		// TODO Auto-generated method stub
		orderItemsRepository.delete(orderItem);
	}

	@Override
	public OrderItem findById(int id) {
		// TODO Auto-generated method stub
		return orderItemsRepository.findOne(id);
	}

	@Override
	public OrderItem findByProduct(Products product) {
		// TODO Auto-generated method stub
		return orderItemsRepository.findByProduct(product);
	}

	@Override
	public List<OrderItem> findAll() {
		// TODO Auto-generated method stub
		return orderItemsRepository.findAll();
	}

	@Override
	public Collection<OrderItem> findByOrders(Collection<Orders> orders) {
		// TODO Auto-generated method stub
		return orderItemsRepository.findByOrders(orders);
	}

	@Override
	@Transactional
	public void deleteAll(Collection<OrderItem> orderItems) {
		// TODO Auto-generated method stub
		orderItemsRepository.deleteAll(orderItems);
	}

	@Override
	public Collection<OrderItem> findByOrder(Orders order) {
		// TODO Auto-generated method stub
		return orderItemsRepository.findByOrder(order);
	}

}
