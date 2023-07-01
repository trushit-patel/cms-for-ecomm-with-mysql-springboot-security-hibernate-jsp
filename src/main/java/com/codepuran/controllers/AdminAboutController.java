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

import com.codepuran.model.About;
import com.codepuran.service.AboutService;

@Controller
@RequestMapping(value = "/admin/")
public class AdminAboutController {

	@Autowired
	private AboutService aboutService;
	
	@GetMapping(value = "/about")
	public ModelAndView getAbout() {
		
		List<About> abouts = aboutService.findAll();
		
		Map<String, Object> map = new HashMap<>();
		map.put("aboutEdit", !abouts.isEmpty() ? abouts.get(0) : new About());
		
		return new ModelAndView("admin/aboutUs").addAllObjects(map);
	}
	
	@PostMapping(value = "/about")
	public ModelAndView saveAbout(@ModelAttribute(value = "aboutEdit") About about) {
		
		if(about == null)throw new IllegalArgumentException();
		aboutService.save(about);
		
		return new ModelAndView("redirect:/admin/about");
	}
}
