package com.codepuran.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codepuran.model.Policy;

@Service
public interface PolicyService {

	List<Policy> findAll();
	
	Policy findById(Integer id);
	
	Policy save(Policy policy);
	
	void delete(Policy policy);
	
	Policy findByPolicyName(String policyName);
}
