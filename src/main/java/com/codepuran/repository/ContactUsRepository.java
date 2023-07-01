package com.codepuran.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codepuran.model.ContactUs;

@Repository
public interface ContactUsRepository extends JpaRepository<ContactUs, Integer> {
	
	ContactUs findById(int id);
}
