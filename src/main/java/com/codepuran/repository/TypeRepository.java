package com.codepuran.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.codepuran.model.Type;

public interface TypeRepository extends JpaRepository<Type, Integer> {

	Optional<Type> findById(int id);
}
