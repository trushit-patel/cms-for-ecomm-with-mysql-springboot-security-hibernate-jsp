package com.codepuran.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table
public class About implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4594702213366781040L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	@Column
	private String title;
	
	@Column(columnDefinition = "TEXT")
	private String text;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}
}
