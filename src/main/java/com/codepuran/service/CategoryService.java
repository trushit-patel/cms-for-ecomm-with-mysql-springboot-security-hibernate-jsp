package com.codepuran.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.codepuran.model.Category;
import com.codepuran.model.Products;

@Service
public interface CategoryService {

	List<Category> findAll();
	Category save(Category category);
	Category findById(int id);
	void delete(Category category);
}
