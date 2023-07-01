package com.codepuran.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.codepuran.model.Type;

@Service
public interface TypeService {

	List<Type> findAll();
	Type save(Type type );
	Type findById(int id);
	void delete(Type product);
}
