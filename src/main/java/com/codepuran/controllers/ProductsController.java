package com.codepuran.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.codepuran.dto.Filter;
import com.codepuran.service.CategoryService;
import com.codepuran.service.ProductsService;
import com.codepuran.service.TypeService;

@Controller
public class ProductsController {

	@Autowired
	private  ProductsService productsService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private TypeService typeService;

	//	@GetMapping(value = "/shop")
	//	public ModelAndView index(
	//								  @RequestParam(value =  "categoryID", required = false) List<Integer> categoryIds,
	//								  @RequestParam(value = "typeID", required = false) List<Integer> typeIds,
	//								  @RequestParam(value = "pricefilter", required = false) String pricefilter
	//							  ) {
	//
	//		Map<String, Object> map = new HashMap<>();
	//		map.put("categories", categoryService.findAll());
	//		map.put("types", typeService.findAll());
	//		map.put("products", productsService.findAll());
	//		
	//		if (categoryIds == null && typeIds == null && pricefilter == null) {
	//			map.put("products", productsService.findAll());  
	//		}
	//		else{
	//			pricefilter = pricefilter.replace('$', ' ') ;
	//			pricefilter = pricefilter.trim();
	//			String[] strings = pricefilter.split(" -  ");
	//			
	//			Filter filter = new Filter(Double.valueOf(strings[0]),Double.valueOf(strings[1]), categoryIds, typeIds);
	//			map.put("products", productsService.findByFilter(filter));
	//		}
	//		return new ModelAndView("shop").addAllObjects(map);
	//	}

	@GetMapping(value = "/shop")
	public ModelAndView shop(@RequestParam(value = "sortBy", required = false, defaultValue = "id") String sortBy,
							 @RequestParam(value = "sortDir", required = false, defaultValue = "ACS") String sortDir,
							 @RequestParam(value = "page", required = false, defaultValue = "0") Integer page,
							 @RequestParam(value = "categoryId", required = false) Integer cagtegoryId
							) {
		int size = 12;
		
		Map<String, Object> map = new HashMap<>();
		map.put("types", typeService.findAll());
		map.put("categories", categoryService.findAll());
		map.put("filterForm", new Filter());
		
		if(cagtegoryId != null) {
			
			map.put("products", productsService.findByCategoryWithPaginationAndSorting(categoryService.findById(cagtegoryId), page,size, sortBy, sortDir));
		}
		else map.put("products", productsService.findAllProductsWithPaginationAndSorting(page,size, sortBy, sortDir));

		return new ModelAndView("shop").addAllObjects(map);
	}

	@GetMapping(value = "/product")
	public ModelAndView laodProduct(@RequestParam(name = "id" ,required = true) int id) {

		Map<String, Object> map = new HashMap<>();
		//		map.put("categories", categoryService.findAll());
		//		map.put("types", typeService.findAll());

		map.put("product", productsService.findById(id));

		return new ModelAndView("product-details").addAllObjects(map);
	}

//	@GetMapping(value = "/shop")
//	public ModelAndView index(
//			@ModelAttribute(value = "filterForm") Filter filter,
//			@RequestParam(value = "sortBy", required = false) String sort,
//			@RequestParam(value = "page", required = false) Integer page
//			) {
//
//		Map<String, Object> map = new HashMap<>();
//		map.put("categories", categoryService.findAll());
//		map.put("types", typeService.findAll());
//		map.put("products", productsService.findAll());
//
//		if (filter.getMaxPrice() == null && filter.getMinPrice() == null && filter.getPrice() == null && filter.getCategoryIds()== null && filter.getTypeIds() == null) {
//			map.put("products", productsService.findAll());
//			map.put("filterForm", new Filter());
//		}
//		else{
//			String[] strings = filter.getPrice().split("-");
//			filter.setMaxPrice(Double.valueOf(strings[1]));
//			filter.setMinPrice(Double.valueOf(strings[0]));
//
//			map.put("products", productsService.findByFilter(filter));
//			map.put("filterForm", filter);
//		}
//		return new ModelAndView("shop").addAllObjects(map);
//	}
}
