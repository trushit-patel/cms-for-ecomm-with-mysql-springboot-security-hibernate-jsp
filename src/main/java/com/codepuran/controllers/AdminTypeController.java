package com.codepuran.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.codepuran.model.Category;
import com.codepuran.model.Products;
import com.codepuran.model.Type;
import com.codepuran.service.ProductsService;
import com.codepuran.service.TypeService;

@Controller
@RequestMapping("/admin")
public class AdminTypeController {
	
	@Autowired
	private TypeService typeService;
	
	@Autowired
	private ProductsService productsService;
    
    @GetMapping("/type")
    public ModelAndView types() {
    	
    	Map< String, Object> map = new HashMap<>();
    	
    	map.put("typeForm", new Type());
    	map.put("types", typeService.findAll());
    	
        return new ModelAndView("admin/types").addAllObjects(map);
    }
    
    @GetMapping("/type/edit")
    public ModelAndView edit(@RequestParam(value = "id",required = true) Integer integer) {
    	
    	Map< String, Object> map = new HashMap<>();
    	
    	map.put("typeForm", typeService.findById(integer));
    	map.put("types", typeService.findAll());
    	
        return new ModelAndView("admin/types").addAllObjects(map);
    }
    
    @GetMapping("/type/delete")
    public ModelAndView delete(@RequestParam(value = "id",required = true) Integer integer) {
    	
    	Type type = typeService.findById(integer);
    	//productsService.deleteByList(type.getProducts());
    	typeService.delete(type);
    	
        return new ModelAndView("redirect:/admin/type");
    }
    
    @PostMapping("/type/add")
    public ModelAndView save(@ModelAttribute Type type) {
    	
    	typeService.save(type);
    	
        return new ModelAndView("redirect:/admin/type");
    }
}