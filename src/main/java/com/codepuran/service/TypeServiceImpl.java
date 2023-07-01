package com.codepuran.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codepuran.model.Type;
import com.codepuran.repository.TypeRepository;


@Service
public class TypeServiceImpl implements TypeService {

	@Autowired
    private TypeRepository typeRepository;

    @Override
    public List<Type> findAll() {
        return typeRepository.findAll();
    }

    @Override
    public Type findById(int id) {
        return typeRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Not found"));
    }

    @Override
    public Type save(Type type) {
        return typeRepository.save(type);
    }

    @Override
    public void delete(Type type) {
        typeRepository.delete(type);
    }
}
