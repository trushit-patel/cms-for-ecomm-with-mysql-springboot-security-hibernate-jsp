package com.codepuran.controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.codepuran.dto.Filter;
import com.codepuran.model.Products;
import com.codepuran.model.User;
import com.codepuran.service.CategoryService;
import com.codepuran.service.ProductsService;
import com.codepuran.service.TypeService;
import com.codepuran.utils.FileUploadUtil;
import com.codepuran.validator.ProductValidator;

@Controller
@RequestMapping("/admin")
public class AdminProductController {

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private TypeService typeService;

	@Autowired
	private ProductsService productsService;

	@Autowired
	private ProductValidator productValidator;

	@GetMapping(value = "/product")
	public ModelAndView shop(@RequestParam(value = "sortBy", required = false) String sortBy,
							@RequestParam(value = "sortDir", required = false, defaultValue = "DESC") String sortDir,
							@RequestParam(value = "page", required = false, defaultValue = "0") Integer page
							) {
		int size = 12;
		
		Map<String, Object> map = new HashMap<>();
		map.put("types", typeService.findAll());
		map.put("categories", categoryService.findAll());
		map.put("productForm", new Products());
		
		
		if(sortBy == null) map.put("products", productsService.findAllProductsWithPagination(page,size));
		else map.put("products", productsService.findAllProductsWithPaginationAndSorting(page,size, sortBy, sortDir));

		return new ModelAndView("admin/products").addAllObjects(map);
	}
	
	@GetMapping("/product/edit")
	public ModelAndView editProduct(@RequestParam(value = "id", required = true) int id,Model model,@RequestParam(value = "sortBy", required = false) String sortBy,
			@RequestParam(value = "sortDir", required = false, defaultValue = "DESC") String sortDir,
			@RequestParam(value = "page", required = false, defaultValue = "0") Integer page) {

		int size = 12;
		
		Map< String, Object> map = new HashMap<>();

		model.addAttribute("productForm", productsService.findById(id));
		map.put("categories", categoryService.findAll());
		map.put("types", typeService.findAll());
		if(sortBy == null) map.put("products", productsService.findAllProductsWithPagination(page,size));
		else map.put("products", productsService.findAllProductsWithPaginationAndSorting(page,size, sortBy, sortDir));

		return new ModelAndView("admin/products").addAllObjects(map);
	}
	
	@GetMapping("/product/delete")
	public ModelAndView deleteProduct(@RequestParam(value = "id", required = true) int id,Model model) {
		
		Products products = productsService.findById(id);
		productsService.delete(products);

		return new ModelAndView("redirect:/admin/product");
	}

	@PostMapping("/products/add")
	public ModelAndView save(@ModelAttribute Products products,BindingResult bindingResult, Model model,@RequestPart(name = "images", required = false	) MultipartFile multipartFile) throws IOException {

		/*
		 * productValidator.validate(products, bindingResult);
		 * 
		 * if (bindingResult.hasErrors()) {
		 * System.err.println(bindingResult.getFieldError()); return new
		 * ModelAndView("redirect:/admin/products"); }
		 */
		
		if (products == null) {
			 return new ModelAndView("redirect:/admin/product"); 
		}

		if(!multipartFile.isEmpty()) {
			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			products.setImages(fileName);
			Products savedProduct = productsService.save(products);
			
			String uploadDir = "product-photos/" + savedProduct.getId()+"/";
			FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
			
		}else if (products.getId() != null) {
			products.setImages(productsService.findById(products.getId()).getImages());
			productsService.save(products);
		}
		return new ModelAndView("redirect:/admin/product");
	}
}
