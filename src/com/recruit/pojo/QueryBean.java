package com.recruit.pojo;

public class QueryBean {
	private String cate_id;
	private String cate_name;
	private String cate_fid;
	private String cate_fname;
	private int cate_state;
	private String cla;
	public QueryBean() {
		super();
	}
	
	public String getCla() {
		return cla;
	}

	public void setCla(String cla) {
		this.cla = cla;
	}

	public int getCate_state() {
		return cate_state;
	}

	public void setCate_state(int cate_state) {
		this.cate_state = cate_state;
	}

	public String getCate_fid() {
		return cate_fid;
	}

	public void setCate_fid(String cate_fid) {
		this.cate_fid = cate_fid;
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
	public String getCate_fname() {
		return cate_fname;
	}
	public void setCate_fname(String cate_fname) {
		this.cate_fname = cate_fname;
	}

	@Override
	public String toString() {
		return "QueryBean [cate_id=" + cate_id + ", cate_name=" + cate_name + ", cate_fid=" + cate_fid + ", cate_fname="
				+ cate_fname + ", cate_state=" + cate_state + ", cla=" + cla + "]";
	}
	
	
	
	
}
