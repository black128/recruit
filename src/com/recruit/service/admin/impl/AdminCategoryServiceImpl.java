package com.recruit.service.admin.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recruit.mapper.admin.AdminCategoryMapper;
import com.recruit.pojo.CategoryBean;
import com.recruit.pojo.QueryBean;
import com.recruit.service.admin.AdminCategoryService;

@Service
public class AdminCategoryServiceImpl implements AdminCategoryService{

	@Autowired
	private AdminCategoryMapper mapper;
	
	@Override
	public List<CategoryBean> queryAllCategory() {
		// TODO Auto-generated method stub
		List<QueryBean> qblist = mapper.queryAllCategory();
		List<CategoryBean> cblist = new ArrayList<CategoryBean>();

		for (QueryBean qb : qblist) {
			CategoryBean cb = new CategoryBean();
			cb.setCate_id(qb.getCate_id());
			cb.setCate_name(qb.getCate_name());
			String fname = qb.getCate_fname();
			CategoryBean fcb = null;
			if (fname != null && !fname.trim().isEmpty()) {
				fcb = new CategoryBean();
				fcb.setCate_id(qb.getCate_fid());
				fcb.setCate_name(fname);

			}
			cb.setCate_father(fcb);
			cb.setCate_state(qb.getCate_state());
			cblist.add(cb);
		}

		return cblist;
	}

	@Override
	public void addCategory(CategoryBean cate) {
		// TODO Auto-generated method stub
		mapper.addCategory(cate);
	}

	@Override
	public void deleteCategoryById(String cate_id) {
		List<CategoryBean> cblist =queryAllSecondById(cate_id);
		for(CategoryBean cb:cblist) {
			mapper.deleteCategoryById(cb.getCate_id());
			
		}
		mapper.deleteCategoryById(cate_id);
	}

	@Override
	public void deleteCategoryById2(String cate_id) {
		mapper.deleteCategoryById(cate_id);

	}

	@Override
	public List<CategoryBean> queryAllSecondById(String cate_id) {
		// TODO Auto-generated method stub
		List<QueryBean> qblist = mapper.queryAllSecondById(cate_id);
		return changeQueryBean(qblist);
	}

	@Override
	public int queryAllCateNum() {

		return mapper.queryAllCateNum();
	}

	@Override
	public void updateCateState(CategoryBean cb) {
		mapper.updateCateState(cb);

	}

	@Override
	public List<CategoryBean> firstCateList() {
		List<QueryBean> qblist = mapper.firstCateList();
		return changeQueryBean(qblist);
	}

	@Override
	public QueryBean queryCategoryById(String cate_id) {
		
		QueryBean qb = mapper.queryCategoryById(cate_id);
		String fid=qb.getCate_fid();
		if(fid==null || fid.trim().isEmpty()) {
			qb.setCate_fid(null);
		}
		return qb;
	}

	@Override
	public void updateCategory(QueryBean qb) {
		mapper.updateCategory(qb);
		
	}

	
	@Override
	public List<CategoryBean> secondCateList() {
		List<QueryBean> qblist = mapper.secondCateList();
		return changeQueryBean(qblist);
	}

	@Override
	public List<CategoryBean> queryAllSecond() {
		List<QueryBean> qblist=mapper.queryAllSecond();			 		
		return changeQueryBean(qblist);
	}
	
	@Override
	public List<CategoryBean> changeQueryBean(List<QueryBean> qblist){
		List<CategoryBean> cblist = new ArrayList<CategoryBean>();
		for (QueryBean qb : qblist) {
			CategoryBean cb = new CategoryBean();
			cb.setCate_id(qb.getCate_id());
			cb.setCate_name(qb.getCate_name());
			cb.setCate_state(qb.getCate_state());
			cblist.add(cb);
		}
		 		
		return cblist;
	} 
}
