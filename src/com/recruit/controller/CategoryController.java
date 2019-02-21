package com.recruit.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recruit.pojo.CategoryBean;
import com.recruit.pojo.QueryBean;
import com.recruit.service.CategoryService;
import com.recruit.utils.Util;

@Controller
@RequestMapping("category")
public class CategoryController {

	@Autowired
	private CategoryService service;


	public void firstCateList(Model model) {

		List<CategoryBean> flist = service.firstCateList();
		List<CategoryBean> slist = service.secondCateList();
		model.addAttribute("firstlist", flist);
		model.addAttribute("secondlist", slist);
		
	}
	

	
	
	private void AllCategory(Model model) {
		
		List<CategoryBean> list = service.queryAllCategory();
		int num = service.queryAllCateNum();
		model.addAttribute("cateall", list);
		model.addAttribute("allcatelist", num);
	}
	
	@RequestMapping("catelistjsp")
	public String cateAllJsp(Model model,HttpSession session) {
		cateAll(session);
		return "jsp/all-categories";
	}
	
	
	public void cateAll(HttpSession session) {
		HashMap<CategoryBean, List<CategoryBean>> map =new HashMap<CategoryBean, List<CategoryBean>>();
		List<CategoryBean> flist = service.firstCateList();
		for(CategoryBean cb:flist) {
			List<CategoryBean> secondlist= service.queryAllSecondById(cb.getCate_id());
			map.put(cb,secondlist );
		}		
		session.removeAttribute("catelist");
		session.setAttribute("catelist", map);
		queryAllSecond(session);
	}
	
	public void queryAllSecond(HttpSession session) {
		List<CategoryBean> list = service.queryAllSecond();
		session.setAttribute("allsec", list);
		
		
	}
	
}
