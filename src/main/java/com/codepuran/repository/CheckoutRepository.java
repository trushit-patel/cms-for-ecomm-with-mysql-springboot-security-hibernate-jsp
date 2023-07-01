package com.codepuran.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codepuran.model.Checkout;
import com.codepuran.model.User;

@Repository
public interface CheckoutRepository extends JpaRepository<Checkout, Integer> {

	Checkout findByUser(User user);
}
