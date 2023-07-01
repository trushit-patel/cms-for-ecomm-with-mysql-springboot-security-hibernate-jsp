package com.codepuran.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codepuran.model.Blog;
import com.codepuran.model.Products;

@Repository
public interface BlogRepository extends JpaRepository<Blog, Integer> {
	
	List<Blog> findTop4ByOrderByIdDesc();

}
