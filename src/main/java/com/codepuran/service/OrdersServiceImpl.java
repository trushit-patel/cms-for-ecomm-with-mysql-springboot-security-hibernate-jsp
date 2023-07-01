package com.codepuran.service;

import java.util.Collection;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codepuran.model.OrderItem;
import com.codepuran.model.Orders;
import com.codepuran.model.User;
import com.codepuran.repository.OrdersRepository;

@Service
public class OrdersServiceImpl implements OrdersService {
	
	@Autowired
	private OrdersRepository ordersRepository;

	@Override
	public List<Orders> findAll() {
		// TODO Auto-generated method stub
		return ordersRepository.findAll();
	}

	@Override
	public List<Orders> findByUser(User user) {
		// TODO Auto-generated method stub
		return ordersRepository.findByUser(user);
	}

	@Override
	@Transactional
	public Orders placeOrder(Orders order) {
		// TODO Auto-generated method stub
		
//		double total = 0;
//		
//		for (OrderItem item : order.getOrderItems()) {
//			total += item.getItemTotal();
//		}
//		
//		order.setOrderTotal(total);
		return ordersRepository.save(order);
	}

	@Override
	@Transactional
	public void deleteOrder(Orders order) {
		// TODO Auto-generated method stub
		ordersRepository.delete(order);
	}

	@Override
	public Orders findById(int id) {
		// TODO Auto-generated method stub
		return ordersRepository.findOne(id);
	}

	@Override
	public void deleteAll(Collection<Orders> orders) {
		// TODO Auto-generated method stub
		ordersRepository.deleteAll(orders);
	}

	@Override
	public Orders findByUserAndId(User user, Integer id) {
		// TODO Auto-generated method stub
		return ordersRepository.findByUserAndId(user, id);
	}

}
