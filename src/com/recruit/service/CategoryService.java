package com.recruit.service;

import java.util.List;

import com.recruit.pojo.CategoryBean;
import com.recruit.pojo.QueryBean;

public interface CategoryService {

	List<CategoryBean> queryAllCategory();

	void addCategory(CategoryBean cate);

	void deleteCategoryById(String cate_id);

	void deleteCategoryById2(String cate_id);
	
	List<CategoryBean> queryAllSecondById(String cate_id);

	int queryAllCateNum();

	void updateCateState(CategoryBean cb);

	List<CategoryBean> firstCateList();
	
	List<CategoryBean> secondCateList();

	QueryBean queryCategoryById(String cate_id);

	void updateCategory(QueryBean qb);

	List<CategoryBean> queryAllSecond();
	
	List<CategoryBean> changeQueryBean(List<QueryBean> qblist);
	
	
}
