package com.codepuran.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codepuran.model.About;

@Service
public interface AboutService {
	
	List<About> findAll();
	About save(About about);
	About findById(int id);
	void delete(About about);
}
