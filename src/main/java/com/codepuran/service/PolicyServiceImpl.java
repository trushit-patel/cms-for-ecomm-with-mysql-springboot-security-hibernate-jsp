package com.codepuran.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codepuran.model.Policy;
import com.codepuran.repository.PolicyRepository;

@Service
public class PolicyServiceImpl implements PolicyService {
	
	@Autowired
	private PolicyRepository policyRepository;

	@Override
	public List<Policy> findAll() {
		// TODO Auto-generated method stub
		return policyRepository.findAll();
	}

	@Override
	public Policy findById(Integer id) {
		// TODO Auto-generated method stub
		return policyRepository.findOne(id);
	}

	@Override
	public Policy save(Policy policy) {
		// TODO Auto-generated method stub
		return policyRepository.save(policy);
	}

	@Override
	public void delete(Policy policy) {
		// TODO Auto-generated method stub
		policyRepository.delete(policy);
	}

	@Override
	public Policy findByPolicyName(String policyName) {
		// TODO Auto-generated method stub
		return policyRepository.findByPolicyName(policyName);
	}

}
