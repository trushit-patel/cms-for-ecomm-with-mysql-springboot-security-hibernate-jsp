package com.codepuran.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.codepuran.model.ContactUs;
import com.codepuran.service.ContactUsService;

@Controller
@RequestMapping(value = "/admin/")
public class AdminContactUsController {

	@Autowired
	private ContactUsService contactUsService;
	
	@GetMapping(value = "/contact")
	public ModelAndView getContactPage() {
		
		List<ContactUs> contactUs = contactUsService.findAll();
		
		Map<String, Object> map = new HashMap<>();
		map.put("contactEdit", !contactUs.isEmpty() ? contactUs.get(0) : new ContactUs());
		
		return new ModelAndView("admin/contactUs").addAllObjects(map);
	}
	
	@PostMapping(value = "/contact")
	public ModelAndView saveContact(@ModelAttribute(value = "contactEdit") ContactUs contactUs) {
		
		if(contactUs == null)throw new IllegalArgumentException();
		contactUsService.save(contactUs);
		
		return new ModelAndView("redirect:/admin/contact");
	}
}
