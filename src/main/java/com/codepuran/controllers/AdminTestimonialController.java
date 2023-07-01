package com.codepuran.controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.codepuran.model.Category;
import com.codepuran.model.Testimonials;
import com.codepuran.service.TestimonialService;
import com.codepuran.utils.FileUploadUtil;

import javassist.NotFoundException;

@Controller
@RequestMapping(value = "/admin/")
public class AdminTestimonialController {

	@Autowired
	private TestimonialService testimonialService;
	
	@GetMapping(value = "/testimonial")
	private ModelAndView allTestimonials() {
		
		Map<String, Object> map = new HashMap<>();
		map.put("testimonials", testimonialService.findAll());
		map.put("testimonialForm", new Testimonials());
		return new ModelAndView("admin/testimonials").addAllObjects(map);
	}
	
	@GetMapping(value = "/testimonial/edit/{id}")
	private ModelAndView editTestimonial(@PathVariable(name = "id" ,required = true)Integer id) throws NotFoundException {
		
		Testimonials testimonials = testimonialService.findById(id);
		
		if (testimonials == null) throw new NotFoundException("Testimonial Not Found");
		
		Map<String, Object> map = new HashMap<>();
		map.put("testimonials", testimonialService.findAll());
		map.put("testimonialForm", testimonials);
		return new ModelAndView("admin/testimonials").addAllObjects(map);
	}
	
	@GetMapping(value = "/testimonial/delete/{id}")
	private ModelAndView deleteTestimonial(@PathVariable(name = "id" ,required = true)Integer id) throws NotFoundException {
		
		Testimonials testimonials = testimonialService.findById(id);
		
		if (testimonials == null) throw new NotFoundException("Testimonial Not Found");
		
		testimonialService.delete(testimonials);
		return new ModelAndView("redirect:/admin/testimonial");
	}
	
	@PostMapping("/testimonial/add")
	public ModelAndView testimonialSave(@ModelAttribute Testimonials testimonials, BindingResult bindingResult, Model model,@RequestPart(name = "images", required = false	) MultipartFile multipartFile) throws IOException {
		
		if (testimonials == null) {
			 return new ModelAndView("redirect:/admin/testimonial"); 
		}

		if(!multipartFile.isEmpty()) {
			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			testimonials.setImages(fileName);
			Testimonials savedTestimonials = testimonialService.save(testimonials);
			
			String uploadDir = "testimonial-photos/" + savedTestimonials.getId()+"/";
			FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
			
		}else if (testimonials.getId() != null) {
			testimonials.setImages(testimonialService.findById(testimonials.getId()).getImages());
			testimonialService.save(testimonials);
		}
		return new ModelAndView("redirect:/admin/testimonial");
	}
}
