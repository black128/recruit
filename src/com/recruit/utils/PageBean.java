package com.recruit.utils;

import java.util.List;

public class PageBean<T> {

	private int total; // 总页数
	private int page;  // 当前页数
	private int size;  // 每页显示数据条数
	private List<T> rows; // 查询结果集
	
	public PageBean(int total, int page,  List<T> rows) {
		super();
		this.total = total;
		this.page = page;
		this.rows = rows;
	}
	public PageBean() {
		super();
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	
	
	
	
}