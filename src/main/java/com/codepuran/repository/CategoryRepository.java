package com.codepuran.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.codepuran.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer> {

	Optional<Category> findById(int id);
}
