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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.codepuran.model.Banner;
import com.codepuran.service.BannerService;
import com.codepuran.utils.FileUploadUtil;

@Controller
@RequestMapping(value = "/admin/")
public class AdminBannerController {

	@Autowired
	private BannerService bannerService;
	
	@GetMapping(value = "/banner")
	public ModelAndView allBanners() {
		Map<String, Object> map = new HashMap<>();
		map.put("banners",bannerService.findAll());
		map.put("bannerForm", new Banner());
		
		return new ModelAndView("admin/banners").addAllObjects(map);
	}
	
	@GetMapping(value = "/banner/edit")
	public ModelAndView editBanner(@RequestParam(value = "id" , required = true)Integer id) {
		
		if(id == null )throw new IllegalArgumentException();
		
		Map<String, Object> map = new HashMap<>();
		map.put("banners",bannerService.findAll());
		map.put("bannerForm", bannerService.findById(id));
		
		return new ModelAndView("admin/banners").addAllObjects(map);
	}
	
	@GetMapping(value = "/banner/delete")
	public ModelAndView deleteBanner(@RequestParam(value = "id" , required = true)Integer id) {
		
		if(id == null )throw new IllegalArgumentException();
		
		bannerService.delete(bannerService.findById(id));
		
		Map<String, Object> map = new HashMap<>();
		map.put("banners",bannerService.findAll());
		
		return new ModelAndView("redirect:/admin/banner").addAllObjects(map);
	}
	
	@PostMapping(value = "banner/add")
	public ModelAndView addBanner(@ModelAttribute Banner banner,BindingResult bindingResult, Model model,@RequestPart(name = "images", required = false	) MultipartFile multipartFile) throws IOException{
		
		if (banner == null) throw new IllegalArgumentException("null is not accepted");
		
		if(!multipartFile.isEmpty()) {
			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			banner.setImage(fileName);
			Banner savedBanner = bannerService.save(banner);
			System.out.println("in if");
			String uploadDir = "banner/" + savedBanner.getId()+"/";
			FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
			
		}else if (banner.getId() != null) {
			banner.setImage(bannerService.findById(banner.getId()).getImage());
			bannerService.save(banner);
			System.out.println("in else if");
		}
		
		return new ModelAndView("redirect:/admin/banner");
	}
}
