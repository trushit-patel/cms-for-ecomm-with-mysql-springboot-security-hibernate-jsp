package com.codepuran.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table
public class ContactUs implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2393870159983549173L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	@Column
	private String title;
	
	@Lob
	@Column
	private String text;
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
}
