package com.codepuran.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codepuran.model.Banner;

@Repository
public interface BannerRepository extends JpaRepository<Banner, Integer> {

	Banner findById(int id);
}
