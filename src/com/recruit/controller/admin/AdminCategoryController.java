package com.recruit.controller.admin;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recruit.pojo.CategoryBean;
import com.recruit.pojo.QueryBean;
import com.recruit.service.admin.AdminCategoryService;
import com.recruit.service.admin.impl.AdminCategoryServiceImpl;
import com.recruit.utils.Util;

@Controller
@RequestMapping("admincate")
public class AdminCategoryController {

	@Autowired
	private AdminCategoryService service;
	
	@RequestMapping("addcate")
	public String addCategory( Model model, String cate_name,HttpSession session) {
		CategoryBean cate = new CategoryBean();
		cate.setCate_id(Util.getUUID());
		cate.setCate_name(cate_name);
		cate.setCate_state(1);
		service.addCategory(cate);
		cateAll(session);
		AllCategory(model);
		// 待改正
		return queryAllCategory(model);
	}

	@RequestMapping("allcate")
	public String queryAllCategory(Model model) {
		AllCategory(model);
		return "admin/cate";
	}

	
	
	@RequestMapping("updatecatestate")
	@ResponseBody
	public String updateCateState(Model model, CategoryBean cb,HttpSession session) {
		int state = cb.getCate_state();
		if (state == 1) {
			cb.setCate_state(0);
		} else {
			cb.setCate_state(1);
		}
		cateAll(session);
		service.updateCateState(cb);
		AllCategory(model);
		return "";
	}
	

	
	@RequestMapping("delcatebyid")
	public String deleteCategoryById(Model model, String cate_id, String cate_fid,HttpSession session) {
		if (cate_fid == null || cate_fid.trim().isEmpty()) {
			service.deleteCategoryById(cate_id);
		}

		if (cate_fid != null) {
			service.deleteCategoryById2(cate_id);
		}
		cateAll(session);
		AllCategory(model);
		return "";
	}
	
	@RequestMapping("deletepart")
	public String deletePartCate(String[] ids,Model model,HttpSession session) {
		
		for(String id:ids) {
			QueryBean cb = service.queryCategoryById(id);
			String fid=cb.getCate_fid();
			
			deleteCategoryById(model,id,fid,session);
		}
		
		return "admin/cate";
	}
	
	

	@RequestMapping("editcatebyid")
	public String queryCategoryById(String cate_id, Model model,HttpSession session) {
		QueryBean cb = service.queryCategoryById(cate_id);
		model.addAttribute("qb", cb);
		firstCateList(model);
		cateAll(session);
		return "admin/updatecate";
		
	}

	public void firstCateList(Model model) {

		List<CategoryBean> flist = service.firstCateList();
		List<CategoryBean> slist = service.secondCateList();
		model.addAttribute("firstlist", flist);
		model.addAttribute("secondlist", slist);
		
	}
	
	
	

	@RequestMapping("updatecate")
	public String updateCategory(QueryBean qb, Model model,HttpSession session) {
		QueryBean qbb = service.queryCategoryById(qb.getCate_id());
		String fid = qbb.getCate_fid();
		if (fid == null || fid.trim().isEmpty()) {
			QueryBean qbbb=new QueryBean();
			String cid = qb.getCate_fid();
			qbbb = service.queryCategoryById(cid);
			String cfid = qb.getCate_id();
			qbbb.setCate_fid(cfid);
			service.updateCategory(qbbb);
		} else {
			String cla = qb.getCla();
			if ("first".equals(cla)) {
				qb.setCate_fid(null);

			}
			service.updateCategory(qb);
		}
		cateAll(session);
		model.addAttribute("msg", "修改成功");
		return "admin/msg";
	}

	
	private void AllCategory(Model model) {
		
		List<CategoryBean> list = service.queryAllCategory();
		int num = service.queryAllCateNum();
		model.addAttribute("cateall", list);
		model.addAttribute("allcatelist", num);
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