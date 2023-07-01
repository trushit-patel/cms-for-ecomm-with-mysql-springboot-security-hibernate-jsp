package com.codepuran.controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.codepuran.model.Blog;
import com.codepuran.model.Products;
import com.codepuran.service.BlogService;
import com.codepuran.utils.FileUploadUtil;

import javassist.NotFoundException;

@Controller
@RequestMapping(value = "admin/blog")
public class AdminBlogController {

	@Autowired
	private BlogService blogService;
	
	@GetMapping(value = "")
	public ModelAndView editBlog() {
		Map<String, Object> map = new HashMap<>();
		map.put("blogForm",new Blog());
		map.put("blogs",blogService.findAll());
		return new ModelAndView("admin/blogs").addAllObjects(map);
	}
	
	@GetMapping(value = "/edit/{id}")
	public ModelAndView blogForm(@PathVariable(value = "id", required = true)Integer id) throws NotFoundException {
		
		Blog blog = blogService.findById(id);
		if (blog == null) throw new NotFoundException("There are no logs with this id");
		
		Map<String, Object> map = new HashMap<>();
		map.put("blogForm",blog);
		map.put("blogs",blogService.findAll());
		return new ModelAndView("admin/blogs").addAllObjects(map);
	}
	
	@GetMapping(value = "/delete/{id}")
	public ModelAndView deleteBlog(@PathVariable(value = "id", required = true)Integer id) throws NotFoundException {
		
		Blog blog = blogService.findById(id);
		if (blog == null) throw new NotFoundException("There are no logs with this id");
		
		blogService.delete(blog);
		return new ModelAndView("redirect:/admin/blog/");
	}
	
	@PostMapping(value = "/add")
	public ModelAndView saveBlog(@Validated @ModelAttribute Blog blog, @RequestPart(name = "images", required = false	) MultipartFile multipartFile) throws IOException {
		Map<String, Object> map = new HashMap<>();
		
		if (blog == null) throw new IllegalArgumentException();

		if(!multipartFile.isEmpty()) {
			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			blog.setImage(fileName);
			Blog savedBlog = blogService.save(blog);
			
			String uploadDir = "blog-photos/" + savedBlog.getId()+"/";
			FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
			
		}else if (blog.getId() != null) {
			blog.setImage(blogService.findById(blog.getId()).getImage());
			blogService.save(blog);
		}
		
		return new ModelAndView("redirect:/admin/blog/");
	}
}
