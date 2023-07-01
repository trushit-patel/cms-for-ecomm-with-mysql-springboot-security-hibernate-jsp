package com.codepuran.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codepuran.model.ContactUs;

@Service
public interface ContactUsService {
	
	List<ContactUs> findAll();
	ContactUs save(ContactUs contactUs);
	ContactUs findById(int id);
	void delete(ContactUs contactUs);
}
