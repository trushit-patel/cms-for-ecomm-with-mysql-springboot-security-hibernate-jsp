package com.codepuran.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.codepuran.model.Policy;
import com.codepuran.service.PolicyService;

import javassist.NotFoundException;

@Controller
@RequestMapping(value = "/admin/")
public class AdminPolicyController {

	@Autowired
	private PolicyService policyService;
	
	@GetMapping(value = "/policy/edit/{policyName}")
	public ModelAndView getPolicy(@PathVariable(value = "policyName" , required = true)String policyName) throws NotFoundException {
		
		Policy policy = policyService.findByPolicyName(policyName);
		
		if (policy == null) throw new NotFoundException("Policy Not found");
		
		Map<String, Object> map = new HashMap<>();
		map.put("policyEdit", policy);
		map.put("policies", policyService.findAll());
		
		return new ModelAndView("admin/policies").addAllObjects(map);
	}
	
	@GetMapping(value = "/policy")
	public ModelAndView getAllPolicies() throws NotFoundException {
		
		Map<String, Object> map = new HashMap<>();
		map.put("policyEdit", new Policy());
		map.put("policies", policyService.findAll());
		
		return new ModelAndView("admin/policies").addAllObjects(map);
	}
	
	@PostMapping(value = "/policy/save")
	public ModelAndView savePolicy(@ModelAttribute(value = "policyEdit") Policy policy) {
		
		if(policy == null)throw new IllegalArgumentException();
		policyService.save(policy);
		
		return new ModelAndView("redirect:/admin/policy");
	}
	
	@GetMapping(value = "/policy/delete/{id}")
	public ModelAndView deletePolicy(@PathVariable(value = "id" , required = true)Integer id) throws NotFoundException {
		
		Policy policy = policyService.findById(id);
		
		if (policy == null) throw new NotFoundException("Policy Not found");
		
		policyService.delete(policy);
		
		return new ModelAndView("redirect:/admin/policy");
	}
}

