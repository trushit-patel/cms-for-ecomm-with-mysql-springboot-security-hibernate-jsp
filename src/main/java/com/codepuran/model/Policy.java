package com.codepuran.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table
public class Policy implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = -8631736023237640443L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
	
	@Column(unique = true)
	private String policyName;
	
	@Column
	private String title;

    @Lob
    @Column
    private String text;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPolicyName() {
		return policyName;
	}

	public void setPolicyName(String policyName) {
		this.policyName = policyName;
	}

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

}
