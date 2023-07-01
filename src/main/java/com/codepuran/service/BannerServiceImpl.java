package com.codepuran.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codepuran.model.Banner;
import com.codepuran.repository.BannerRepository;

@Service
public class BannerServiceImpl implements BannerService {
	
	@Autowired
	private BannerRepository bannerRepository;

	@Override
	public List<Banner> findAll() {
		// TODO Auto-generated method stub
		return bannerRepository.findAll();
	}

	@Override
	public Banner save(Banner banner) {
		// TODO Auto-generated method stub
		return bannerRepository.save(banner);
	}

	@Override
	public Banner findById(int id) {
		// TODO Auto-generated method stub
		return bannerRepository.findById(id);
	}

	@Override
	public void delete(Banner banner) {
		// TODO Auto-generated method stub
		bannerRepository.delete(banner);
	}

}
