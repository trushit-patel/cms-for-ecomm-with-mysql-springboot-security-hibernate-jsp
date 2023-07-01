package com.codepuran.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codepuran.model.Testimonials;

@Service
public interface TestimonialService {
	
	Testimonials findById(Integer id);
	Testimonials save(Testimonials testimonials);
	List<Testimonials> findAll();
	void delete(Testimonials testimonials);
}
