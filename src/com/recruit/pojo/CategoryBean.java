package com.recruit.pojo;

import java.io.Serializable;

public class CategoryBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private String cate_id;
	private String cate_name;
	private CategoryBean cate_father;
	private int cate_state;
	public CategoryBean(String cate_id, String cate_name, CategoryBean cate_father) {
		super();
		this.cate_id = cate_id;
		this.cate_name = cate_name;
		this.cate_father = cate_father;
	}
	public CategoryBean() {
		super();
	}
	
	public int getCate_state() {
		return cate_state;
	}
	public void setCate_state(int cate_state) {
		this.cate_state = cate_state;
	}
	public String getCate_id() {
		return cate_id;
	}
	public void setCate_id(String cate_id) {
		this.cate_id = cate_id;
	}
	public String getCate_name() {
		return cate_name;
	}
	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
	public CategoryBean getCate_father() {
		return cate_father;
	}
	public void setCate_father(CategoryBean cate_father) {
		this.cate_father = cate_father;
	}
	@Override
	public String toString() {
		return "CategoryBean [cate_id=" + cate_id + ", cate_name=" + cate_name + ", cate_father=" + cate_father
				+ ", cate_state=" + cate_state + "]";
	}
	
	
}
