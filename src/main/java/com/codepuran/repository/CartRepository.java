package com.codepuran.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codepuran.model.Cart;
import com.codepuran.model.User;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {
	
	Cart findByUser(User user);
}
