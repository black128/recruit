package com.recruit.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.recruit.pojo.CategoryBean;
import com.recruit.pojo.Job;
import com.recruit.pojo.ShowJob;
import com.recruit.pojo.UserJob;
import com.recruit.service.CategoryService;
import com.recruit.service.JobService;

@Controller

public class jobController {

	@Autowired
	private JobService jobservice;

	@Autowired
	private CategoryService service;

	@RequestMapping("index")
	public String index(HttpSession session) {

		cateAll(session);
		return "jsp/index";
	}

	public void cateAll(HttpSession session) {
		HashMap<CategoryBean, List<CategoryBean>> map = new HashMap<CategoryBean, List<CategoryBean>>();
		List<CategoryBean> flist = service.firstCateList();
		for (CategoryBean cb : flist) {
			List<CategoryBean> secondlist = service.queryAllSecondById(cb.getCate_id());
			map.put(cb, secondlist);
		}
		session.setAttribute("flist", flist);
		session.removeAttribute("catelist");
		session.setAttribute("catelist", map);
		queryAllSecond(session);
	}

	public void queryAllSecond(HttpSession session) {
		List<CategoryBean> list = service.queryAllSecond();
		session.setAttribute("allsec", list);

	}

	@RequestMapping("search")
	public String search(Model model, Job job, String no,HttpServletRequest request) throws UnsupportedEncodingException {
		if(request.getParameter("location1")!=null && request.getParameter("location1") !="") {
			String location = new String(request.getParameter("location1").getBytes("ISO-8859-1"),"UTF-8"); 
			
			job.setLocation(location);
		}

		int i = Integer.parseInt(no);

		int pageNo = i;

		int pageSize = 4;

		PageHelper.startPage(pageNo, pageSize);

		List<Job> list = jobservice.search(job);

		PageInfo<Job> jj = new PageInfo<Job>(list);

		System.out.println(jj);

		model.addAttribute("page", jj);

		model.addAttribute("job111", job);
		
		System.out.println(job);

		model.addAttribute("list", list);

		return "jsp/joblist";
	}

	@RequestMapping("showjob")
	public String showjob(Model model, String id) {

		ShowJob dic = jobservice.showjob(id);
		model.addAttribute("dic", dic);

		return "jsp/singlejob";

	}

	@RequestMapping("search1")
	public String search1(Model model, Job job, String no ,HttpServletRequest request) throws UnsupportedEncodingException {
		
		if(request.getParameter("location1")!=null && request.getParameter("location1") !="") {
			String location = new String(request.getParameter("location1").getBytes("ISO-8859-1"),"UTF-8"); 
			
			job.setLocation(location);
		}


		int i = Integer.parseInt(no);

		int pageNo = i;

		int pageSize = 4;

		PageHelper.startPage(pageNo, pageSize);

		List<Job> list = jobservice.search(job);

		PageInfo<Job> jj = new PageInfo<Job>(list);

		System.out.println(jj);

		model.addAttribute("page", jj);

		model.addAttribute("job111", job);

		model.addAttribute("list", list);

		return "jsp/joblist";
	}

	@RequestMapping("userlogin")
	public String userlogin() {

		return "jsp/login";
	}

	@RequestMapping("applyjob")
	public String userjob(UserJob userjob, Model model) {

		try {
			jobservice.useraddjob(userjob);

			model.addAttribute("msg", " 申 请 成 功 ");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			model.addAttribute("msg", " 申 请 已存在 ");
		}

		return "jsp/applysuccess";
	}

}
