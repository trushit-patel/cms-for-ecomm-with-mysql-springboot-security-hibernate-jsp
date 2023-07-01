package com.codepuran.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.codepuran.model.Testimonials;

public interface TestimonialRepository extends JpaRepository<Testimonials, Integer> {
	Testimonials findById(Integer id);
}
