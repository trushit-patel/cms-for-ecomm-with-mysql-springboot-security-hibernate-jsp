package com.codepuran.repository;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.codepuran.model.CartItem;
import com.codepuran.model.Orders;
import com.codepuran.model.User;

@Repository
public interface OrdersRepository extends JpaRepository<Orders, Integer> {

	List<Orders> findByUser(User user);
	
	@Modifying
    @Query("delete from Orders c where c in (:orders) ")
    void deleteAll(@Param("orders") Collection<Orders> orders);
	
	Orders findByUserAndId(User user, Integer id);
}
