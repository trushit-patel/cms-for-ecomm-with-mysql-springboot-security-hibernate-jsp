package com.codepuran.controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.EntityManager;

import org.hibernate.cfg.annotations.EntityBinder;
import org.hibernate.jpa.internal.EntityManagerImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.codepuran.model.Category;
import com.codepuran.model.Products;
import com.codepuran.model.Type;
import com.codepuran.service.CategoryService;
import com.codepuran.service.ProductsService;
import com.codepuran.utils.FileUploadUtil;

@Controller
@RequestMapping("/admin")
public class AdminCategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductsService productsService;
    
    @GetMapping("/category")
    public ModelAndView categories() {
    	
    	Map< String, Object> map = new HashMap<>();
    	
    	map.put("categoryForm", new Category());
    	map.put("categories", categoryService.findAll());
    	
        return new ModelAndView("admin/categories").addAllObjects(map);
    }
    
    @GetMapping("/category/edit")
    public ModelAndView edit(@RequestParam(value = "id",required = true) Integer integer) {
    	
    	Map< String, Object> map = new HashMap<>();
    	
    	map.put("categoryForm", categoryService.findById(integer));
    	map.put("categories", categoryService.findAll());
    	
        return new ModelAndView("admin/categories").addAllObjects(map);
    }
    
    @GetMapping("/category/delete")
    public ModelAndView delete(@RequestParam(value = "id",required = true) Integer integer) {
    	
    	Category category = categoryService.findById(integer);
    	
    	
    	
    	categoryService.delete(category);
    	
        return new ModelAndView("redirect:/admin/category");
    }
    
//    @PostMapping("/category/add")
//    public ModelAndView save(@ModelAttribute Category category) {
//    	
//    	categoryService.save(category);
//    	
//        return new ModelAndView("redirect:/admin/categories");
//    }
    
	@PostMapping("/category/add")
	public ModelAndView save(@ModelAttribute Category category, BindingResult bindingResult, Model model,@RequestPart(name = "images", required = false	) MultipartFile multipartFile) throws IOException {

		/*
		 * productValidator.validate(products, bindingResult);
		 * 
		 * if (bindingResult.hasErrors()) {
		 * System.err.println(bindingResult.getFieldError()); return new
		 * ModelAndView("redirect:/admin/products"); }
		 */
		
		if (category == null) {
			 return new ModelAndView("redirect:/admin/category"); 
		}

		if(!multipartFile.isEmpty()) {
			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			category.setImages(fileName);
			Category savedCategory = categoryService.save(category);
			
			String uploadDir = "category-photos/" + savedCategory.getId()+"/";
			FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
			
		}else if (category.getId() != null) {
			category.setImages(productsService.findById(category.getId()).getImages());
			categoryService.save(category);
		}
		return new ModelAndView("redirect:/admin/category");
	}
}