package com.codepuran.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codepuran.model.About;

@Repository
public interface AboutRepository extends JpaRepository<About, Integer> {

}
