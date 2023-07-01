package com.codepuran.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.codepuran.dto.Filter;
import com.codepuran.model.Category;
import com.codepuran.model.Products;

@Service
public interface ProductsService {

	List<Products> findAll();
	List<Products> findAll(Filter filter);
	List<Products> findByFilter(Filter filter);
	Products save(Products product);
	Products findById(int id);
	void delete(Products product);
	
	List<Products> findByIsFeaturedProductTrue();
	
	List<Products> findTop5ByCategoryOrderByIdDesc(Category category);
	
	List<Products> findAllProductsWithSorting(String field);
	
	Page<Products> findAllProductsWithPagination(int page, int size);
	
	Page<Products> findAllProductsWithPaginationAndSorting(int page, int size, String field, String sortDir);
	
	Page<Products> findByCategoryWithPaginationAndSorting(Category category, int page, int size, String field, String sortDir);
}
