package com.codepuran.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.codepuran.model.Cart;
import com.codepuran.model.Category;
import com.codepuran.model.Products;
import com.codepuran.model.User;
import com.codepuran.service.AboutService;
import com.codepuran.service.BannerService;
import com.codepuran.service.BlogService;
import com.codepuran.service.CartService;
import com.codepuran.service.CategoryService;
import com.codepuran.service.ContactUsService;
import com.codepuran.service.PolicyService;
import com.codepuran.service.ProductsService;
import com.codepuran.service.SecurityService;
import com.codepuran.service.TestimonialService;
import com.codepuran.service.UserService;
import com.codepuran.validator.UserValidator;

@Controller
public class WebController {
	
	@Autowired
	private AboutService aboutService;
	
	@Autowired
	private BannerService bannerService;
	
	@Autowired
	private BlogService blogService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ContactUsService contactUsService;
	
	@Autowired
	private PolicyService policyService;
	
	@Autowired
	private ProductsService productsService;

	@Autowired
	private SecurityService securityService;
	
	@Autowired
	private TestimonialService testimonialService;

	@Autowired
	private UserService userService;

	@Autowired
	private UserValidator userValidator;

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registration(Model model) {
		model.addAttribute("userForm", new User());

		return "register";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
		userValidator.validate(userForm, bindingResult);

		if (bindingResult.hasErrors()) {
			return "register";
		}

		userForm = userService.save(userForm);

		Cart cart = new Cart();
		cart.setUser(userForm);
		cart = cartService.save(cart);

		securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

		return "redirect:/account";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("error", "Your username and password is invalid.");

		if (logout != null)
			model.addAttribute("message", "You have been logged out successfully.");

		return "login";
	}

	@RequestMapping(value = { "/welcome"}, method = RequestMethod.GET)
	public String welcome(Model model) {
		return "welcome";
	}

	@GetMapping(value = "/")
	public ModelAndView indexPage() {
		
		List<Category> categories = categoryService.findAll();
		Map<String, Object> map = new HashMap<>();
		map.put("banners",bannerService.findAll());
		map.put("categories",categories);
		map.put("testimonials",testimonialService.findAll());
		map.put("featuredProducts", productsService.findByIsFeaturedProductTrue());
		map.put("latestBlogs", blogService.findTop4ByOrderByIdDesc());
		
		
		List<List<Products>> list = new ArrayList<>();
		
		for(Category category : categories) {
			List<Products> productList = productsService.findTop5ByCategoryOrderByIdDesc(category);
			list.add(productList);
		}
		map.put("latestProducts", list);
		return new ModelAndView("index").addAllObjects(map);
	}
	
	@RequestMapping(value = { "/dashboard"}, method = RequestMethod.GET)
	public String dash() {
		return "dashboard";
	}
	
	@GetMapping(value = "/contact")
	public ModelAndView contact() {
		Map<String, Object> map = new HashMap<>();
		map.put("contact",contactUsService.findAll().get(0));
		return new ModelAndView("contact-us").addAllObjects(map);
	}
	
	@GetMapping(value = "/about")
	public ModelAndView about() {
		Map<String, Object> map = new HashMap<>();
		map.put("about",aboutService.findAll().get(0));
		map.put("testimonials",testimonialService.findAll());
		return new ModelAndView("about-us").addAllObjects(map);
	}
	
	@GetMapping(value = "/compare")
	public ModelAndView compare() {
//		Map<String, Object> map = new HashMap<>();
//		map.put("about",aboutService.findAll().get(0));
		return new ModelAndView("compare");
	}
	
	@GetMapping(value = "/wishlist")
	public ModelAndView wishlist() {
//		Map<String, Object> map = new HashMap<>();
//		map.put("about",aboutService.findAll().get(0));
		return new ModelAndView("wishlist");
	}
	
	@GetMapping(value = "/privacy-policy")
	public ModelAndView privacyPolicy() {
		
		return new ModelAndView("privacy-policy","policy",policyService.findByPolicyName("privacy"));
	}
	
	@GetMapping(value = "/refund-policy")
	public ModelAndView refundPolicy() {
		
		return new ModelAndView("refund-policy","policy",policyService.findByPolicyName("refund"));
	}
	
	@GetMapping(value = "/shipping-policy")
	public ModelAndView shippingPolicy() {
		
		return new ModelAndView("shipping-policy","policy",policyService.findByPolicyName("shipping"));
	}
	
	@GetMapping(value = "/terms-of-service")
	public ModelAndView termsOfService() {
		
		return new ModelAndView("terms-of-service","policy",policyService.findByPolicyName("TermsOfService"));
	}
}
