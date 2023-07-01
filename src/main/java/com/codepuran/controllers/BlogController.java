package com.codepuran.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.codepuran.service.BlogService;

@Controller
public class BlogController {
	
	@Autowired
	private BlogService blogService;

	@GetMapping(value = "/blogs")
	public ModelAndView blogs() {
		Map<String, Object> map = new HashMap<>();
		map.put("blogs",blogService.findAll());
		return new ModelAndView("blogs").addAllObjects(map);
	}
	
	@GetMapping(value = "/blog")
	public ModelAndView blog(@RequestParam(value = "id", required = true)Integer id) {
		Map<String, Object> map = new HashMap<>();
		map.put("blog",blogService.findById(id));
		return new ModelAndView("blog-details").addAllObjects(map);
	}
}
