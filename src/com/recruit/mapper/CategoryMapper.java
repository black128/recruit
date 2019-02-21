package com.recruit.mapper;

import java.util.List;

import com.recruit.pojo.CategoryBean;
import com.recruit.pojo.QueryBean;

public interface CategoryMapper {

	List<QueryBean> queryAllCategory();

	void addCategory(CategoryBean cate);

	void deleteCategoryById(String cate_id);

	int queryAllCateNum();

	void updateCateState(CategoryBean cb);

	List<QueryBean> queryAllSecondById(String cate_id);

	List<QueryBean> firstCateList();

	QueryBean queryCategoryById(String cate_id);

	void updateCategory(QueryBean qb);

	List<QueryBean> secondCateList();

	List<QueryBean> queryAllSecond();
	
}
