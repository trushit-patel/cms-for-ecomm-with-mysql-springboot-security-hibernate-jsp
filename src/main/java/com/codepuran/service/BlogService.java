package com.codepuran.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codepuran.model.Blog;

@Service
public interface BlogService {

	void delete(Blog blog);
	
	Blog save(Blog blog);
	
	Blog findById(Integer id);
	
	List<Blog> findAll();
	
	List<Blog> findTop4ByOrderByIdDesc();
}
