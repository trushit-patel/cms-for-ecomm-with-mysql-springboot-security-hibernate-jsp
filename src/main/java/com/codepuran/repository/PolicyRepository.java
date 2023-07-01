package com.codepuran.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codepuran.model.Policy;

@Repository
public interface PolicyRepository extends JpaRepository<Policy, Integer> {
	
	Policy findByPolicyName(String policyName);

}
