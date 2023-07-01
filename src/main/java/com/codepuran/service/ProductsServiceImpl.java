package com.codepuran.service;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.codepuran.dto.Filter;
import com.codepuran.model.Category;
import com.codepuran.model.Products;
import com.codepuran.repository.ProductsRepository;

@Service
public class ProductsServiceImpl implements ProductsService {

	@Autowired
	private ProductsRepository productsRepository;

	@Override
	public List<Products> findAll() {
		// TODO Auto-generated method stub
		return productsRepository.findAll();
	}

	@Override
	public List<Products> findAll(Filter filter) {
		// TODO Auto-generated method stub

//		if(filter.getCategoryIds() == null) filter.setCategoryIds(Collections.emptyList());
//		if(filter.getTypeIds() == null) filter.setTypeIds(Collections.emptyList());
		System.err.println(filter.getCategoryIds());
		return productsRepository.findByPriceBetweenAndCategoryIdInOrCategoryIdIsNullAndTypeIdInOrTypeIdIsNull(filter.getMinPrice(),
				filter.getMaxPrice(),
				filter.getCategoryIds(),
				filter.getTypeIds());
	}

	@Override
	public Products save(Products product) {
		// TODO Auto-generated method stub
		return productsRepository.save(product);
	}

	@Override
	public Products findById(int id) {
		// TODO Auto-generated method stub
		return productsRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Not found"));
	}

	@Override
	public void delete(Products product) {
		// TODO Auto-generated method stub
		productsRepository.delete(product);
	}

	@Override
	public List<Products> findByFilter(Filter filter) {
		// TODO Auto-generated method stub
//		if(filter.getCategoryIds() == null) filter.setCategoryIds(Collections.emptyList());
//		if(filter.getTypeIds() == null) filter.setTypeIds(Collections.emptyList());
		System.err.println(filter.getCategoryIds());
		return productsRepository.findByFilter(
				filter.getMinPrice(),
				filter.getMaxPrice(),
				filter.getCategoryIds(),
				filter.getTypeIds()
				);
	}

	@Override
	public List<Products> findAllProductsWithSorting(String field) {
		// TODO Auto-generated method stub
		return productsRepository.findAll(new Sort(Sort.Direction.ASC, field));
	}

	@Override
	public Page<Products> findAllProductsWithPagination(int page, int size) {
		// TODO Auto-generated method stub
		return productsRepository.findAll(new PageRequest(page, size));
	}

	@Override
	public Page<Products> findAllProductsWithPaginationAndSorting(int page, int size, String field, String sortDir) {
		// TODO Auto-generated method stub
		Sort.Direction sortDirection = null;

		if ("ASC".equalsIgnoreCase(sortDir)) {
		    sortDirection = Sort.Direction.ASC;
		} else if ("DESC".equalsIgnoreCase(sortDir)) {
		    sortDirection = Sort.Direction.DESC;
		}
		
		Sort sort = new Sort(sortDirection, field);
		return productsRepository.findAll(new PageRequest(page, size, sort));
	}

	@Override
	public List<Products> findByIsFeaturedProductTrue() {
		// TODO Auto-generated method stub
		return productsRepository.findByFeaturedProductTrue();
	}

	@Override
	public List<Products> findTop5ByCategoryOrderByIdDesc(Category category) {
		// TODO Auto-generated method stub
		return productsRepository.findTop5ByCategoryOrderByIdDesc(category);
	}

	@Override
	public Page<Products> findByCategoryWithPaginationAndSorting(Category category, int page, int size, String field, String sortDir) {
		// TODO Auto-generated method stub
		
		Sort.Direction sortDirection = null;

		if ("ASC".equalsIgnoreCase(sortDir)) {
		    sortDirection = Sort.Direction.ASC;
		} else if ("DESC".equalsIgnoreCase(sortDir)) {
		    sortDirection = Sort.Direction.DESC;
		}
		
		Sort sort = new Sort(sortDirection, field);
		return productsRepository.findByCategory(category, new PageRequest(page, size, sort));
	}

}
