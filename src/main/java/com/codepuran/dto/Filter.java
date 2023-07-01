package com.codepuran.dto;

import java.util.List;

public class Filter {

	private Double minPrice;
	private String price;
    private Double maxPrice;
    private List<Integer> categoryIds;
    private List<Integer> typeIds;

    public Filter() {
    }
    
    public Filter(Double minPrice,String price, Double maxPrice, List<Integer> categoryIds ,List<Integer> typeIds) {
    	this.minPrice = minPrice;
    	this.maxPrice = maxPrice;
    	this.categoryIds = categoryIds;
    	this.typeIds = typeIds;
    	this.price = price;
    }

    public Double getMinPrice() {
        return minPrice;
    }

    public void setMinPrice(Double minPrice) {
        this.minPrice = minPrice;
    }

    public Double getMaxPrice() {
        return maxPrice;
    }

    public void setMaxPrice(Double maxPrice) {
        this.maxPrice = maxPrice;
    }

    public List<Integer> getCategoryIds() {
        return categoryIds;
    }

    public void setCategoryIds(List<Integer> categoryIds) {
        this.categoryIds = categoryIds;
    }

    public List<Integer> getTypeIds() {
        return typeIds;
    }

    public void setTypeIds(List<Integer> typeIds) {
        this.typeIds = typeIds;
    }

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
}
