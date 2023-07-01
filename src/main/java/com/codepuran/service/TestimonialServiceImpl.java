package com.codepuran.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codepuran.model.Testimonials;
import com.codepuran.repository.TestimonialRepository;

@Service
public class TestimonialServiceImpl implements TestimonialService {
	
	@Autowired
	private TestimonialRepository testimonialRepository;

	@Override
	public Testimonials findById(Integer id) {
		// TODO Auto-generated method stub
		return testimonialRepository.findById(id);
	}

	@Override
	public Testimonials save(Testimonials testimonials) {
		// TODO Auto-generated method stub
		return testimonialRepository.save(testimonials);
	}

	@Override
	public List<Testimonials> findAll() {
		// TODO Auto-generated method stub
		return testimonialRepository.findAll();
	}

	@Override
	public void delete(Testimonials testimonials) {
		// TODO Auto-generated method stub
		testimonialRepository.delete(testimonials);
	}

}
