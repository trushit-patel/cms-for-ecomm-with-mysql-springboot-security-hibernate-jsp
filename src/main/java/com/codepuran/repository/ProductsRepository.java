package com.codepuran.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.codepuran.model.Category;
import com.codepuran.model.Products;

public interface ProductsRepository extends JpaRepository<Products, Integer> {

	@Query("SELECT p FROM Products p "
			+ "WHERE (:minPrice IS NULL OR p.price BETWEEN :minPrice AND :maxPrice)"
			+ "AND (:categoryIds IS NULL OR p.category.id IN :categoryIds)"
			+ "AND (:typeIds IS NULL OR p.type.id IN :typeIds)")
	List<Products> findByFilter(@Param("minPrice") Double minPrice,
			@Param("maxPrice") Double maxPrice,
			@Param("categoryIds") List<Integer> categoryIds,
			@Param("typeIds") List<Integer> typeIds);



	//	@Query(value = "SELECT * FROM products " +
	//			"WHERE (:minPrice IS NULL OR price >= :minPrice) " +
	//			"AND (:maxPrice IS NULL OR price <= :maxPrice) " +
	//			"AND (:categoryIds IS NULL OR category_id IN :categoryIds) " +
	//			"AND (:typeIds IS NULL OR type_id IN :typeIds)", nativeQuery = true)
	//	List<Products> findByFilter(@Param("minPrice") Double minPrice,
	//			@Param("maxPrice") Double maxPrice,
	//			@Param("categoryIds") List<Integer> categoryIds,
	//			@Param("typeIds") List<Integer> typeIds);



	List<Products> findByPriceBetweenAndCategoryIdInOrCategoryIdIsNullAndTypeIdInOrTypeIdIsNull(Double minPrice, Double maxPrice, List<Integer> categoryIds, List<Integer> typeIds);


	Products findByid(int id);

	Optional<Products> findById(int id);

	List<Products> findByFeaturedProductTrue();
	List<Products> findTop10ByOrderByIdDesc();
	List<Products> findTop5ByCategoryOrderByIdDesc(Category category);
	
	Page<Products> findByCategory(Category category, Pageable pageable);
}
