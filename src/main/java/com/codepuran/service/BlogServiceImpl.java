package com.codepuran.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codepuran.model.Blog;
import com.codepuran.repository.BlogRepository;

@Service
public class BlogServiceImpl implements BlogService {
	
	@Autowired
	private BlogRepository blogRepository;

	@Override
	public void delete(Blog blog) {
		// TODO Auto-generated method stub
		blogRepository.delete(blog);
	}

	@Override
	public Blog save(Blog blog) {
		// TODO Auto-generated method stub
		return blogRepository.save(blog);
	}

	@Override
	public Blog findById(Integer id) {
		// TODO Auto-generated method stub
		return blogRepository.findOne(id);
	}

	@Override
	public List<Blog> findAll() {
		// TODO Auto-generated method stub
		return blogRepository.findAll();
	}

	@Override
	public List<Blog> findTop4ByOrderByIdDesc() {
		// TODO Auto-generated method stub
		return blogRepository.findTop4ByOrderByIdDesc();
	}

}
