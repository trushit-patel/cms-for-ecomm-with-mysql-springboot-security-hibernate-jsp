package com.codepuran.repository;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.codepuran.model.Cart;
import com.codepuran.model.CartItem;
import com.codepuran.model.Products;

@Repository
public interface CartItemrRepository extends JpaRepository<CartItem, Integer> {

	CartItem findByProduct(Products product);
	CartItem findByProductAndCart(Products product,Cart cart);
	List<CartItem> findByCart(Cart cart);
	
	@Modifying
    @Query("delete from CartItem c where c in :cartItems ")
    void deleteAll(@Param("cartItems") Collection<CartItem> cartItems);
}
