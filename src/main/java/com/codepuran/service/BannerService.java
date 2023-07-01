package com.codepuran.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codepuran.model.Banner;

@Service
public interface BannerService {

	List<Banner> findAll();
	Banner save(Banner banner);
	Banner findById(int id);
	void delete(Banner banner);
}
