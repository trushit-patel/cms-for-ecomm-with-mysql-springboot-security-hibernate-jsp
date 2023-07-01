package com.codepuran.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "reviews")
public class Review {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	@Column
	private String user;

	@Column
	private int productId;

	@Column
	private String name;

	@Column
	private String email;

	@Column
	private String review;

	@Column
	private int rating;
}
