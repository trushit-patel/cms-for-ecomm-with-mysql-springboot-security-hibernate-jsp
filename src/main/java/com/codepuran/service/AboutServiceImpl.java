package com.codepuran.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codepuran.model.About;
import com.codepuran.repository.AboutRepository;

@Service
public class AboutServiceImpl implements AboutService {
	
	@Autowired
	private AboutRepository aboutRepository;

	@Override
	public List<About> findAll() {
		
		return aboutRepository.findAll();
	}

	@Override
	public About save(About about) {
		
		return aboutRepository.save(about);
	}

	@Override
	public About findById(int id) {
		
		return aboutRepository.findOne(id);
	}

	@Override
	public void delete(About about) {
		
		aboutRepository.delete(about);
	}

}
