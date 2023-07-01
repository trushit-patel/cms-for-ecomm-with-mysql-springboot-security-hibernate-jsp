package com.codepuran.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table
public class Banner implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1613198912532777106L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	@Column
	private String link;
	
	@Column
	private String image;
	
	@Column
	private String des;
	
	@Column
	private String title;

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
}
