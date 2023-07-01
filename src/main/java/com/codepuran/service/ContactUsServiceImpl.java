package com.codepuran.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codepuran.model.ContactUs;
import com.codepuran.repository.ContactUsRepository;

@Service
public class ContactUsServiceImpl implements ContactUsService {
	
	@Autowired
	private ContactUsRepository contactUsRepository;

	@Override
	public List<ContactUs> findAll() {
		// TODO Auto-generated method stub
		return contactUsRepository.findAll();
	}

	@Override
	@Transactional
	public ContactUs save(ContactUs contactUs) {
		// TODO Auto-generated method stub
		return contactUsRepository.save(contactUs);
	}

	@Override
	public ContactUs findById(int id) {
		// TODO Auto-generated method stub
		return contactUsRepository.findById(id);
	}

	@Override
	@Transactional
	public void delete(ContactUs contactUs) {
		// TODO Auto-generated method stub
		contactUsRepository.delete(contactUs);
	}
}
