package com.codepuran.repository;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.codepuran.model.OrderItem;
import com.codepuran.model.Orders;
import com.codepuran.model.Products;

public interface OrderItemsRepository extends JpaRepository<OrderItem, Integer> {
	
	OrderItem findByProduct(Products product);
	
	@Modifying
	@Query("SELECT oi FROM OrderItem oi WHERE oi.order IN (:orders)")
	Collection<OrderItem> findByOrders(@Param("orders") Collection<Orders> orders);
	
	Collection<OrderItem> findByOrder(Orders order);
	
	@Modifying
    @Query("delete from OrderItem o where o in (:orderItems) ")
    void deleteAll(@Param("orderItems") Collection<OrderItem> orderItems);
}
