package com.recruit.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.recruit.pojo.CategoryBean;
import com.recruit.pojo.QueryBean;
import com.recruit.pojo.ShowJob;
import com.recruit.pojo.UserJob;
import com.recruit.service.AdJobService;
import com.recruit.service.CategoryService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("admin")
public class AdJobController {

	@Autowired
	private AdJobService adservice;

	@Autowired
	private CategoryService cateservice;


	@RequestMapping("adforward")
	public String forward(Model model) {

		List<CategoryBean> cate1 = cateservice.firstCateList();

		model.addAttribute("cate1", cate1);

		return "admin/addjob";
	}

	@RequestMapping("adforward2")
	public String forward2(Model model) {

		List<ShowJob> list = adservice.findalljob();

		model.addAttribute("list", list);

		return "admin/joblist";
	}

	@RequestMapping("delete")
	public String delete(String id, Model model) {

		try {
			adservice.deletejob(id);

			model.addAttribute("msg", "删除成功");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			model.addAttribute("msg", "删除失败");

		}
		return forward2(model);
	}

	@RequestMapping("addjob")
	public String addjob(Model model, ShowJob job) {

		try {

			String jobid = UUID.randomUUID().toString().replaceAll("-", "");
			job.setJobid(jobid);
			adservice.addjob(job);

			model.addAttribute("msg", "添加成功");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			model.addAttribute("msg", "添加失败");
		}
		return addjob2(model);
	}

	@RequestMapping("addjob2")
	public String addjob2(Model model) {

		List<CategoryBean> cate1 = cateservice.firstCateList();

		model.addAttribute("cate1", cate1);

		return "admin/addjob";
	}

	@RequestMapping("editaddjob")
	public String editaddjob(Model model, ShowJob job) {

		try {

			adservice.editaddjob(job);

			model.addAttribute("msg", "添加成功");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			model.addAttribute("msg", "添加失败");
		}
		return forward2(model);
	}

	@RequestMapping("editjob")
	public String editjob(Model model, String id) {

		List<CategoryBean> cate1 = cateservice.firstCateList();

		ShowJob job = adservice.findjobbyid(id);

		List<CategoryBean> cate2 = cateservice.queryAllSecondById(job.getFid());

		model.addAttribute("job", job);

		model.addAttribute("cate1", cate1);
		model.addAttribute("cate2", cate2);

		return "admin/editjob";

	}

	

	@RequestMapping("findcate")
	@ResponseBody
	public List<CategoryBean> findcate(String id, HttpServletResponse resp) throws IOException {

		List<CategoryBean> list = cateservice.queryAllSecondById(id);
		return list;

	}

	@RequestMapping("showuserjob")
	public String showuserjob(String jobid, Model model) {

		List<UserJob> userjoblist = adservice.showuserjob(jobid);

		model.addAttribute("jobid", jobid);
		model.addAttribute("list", userjoblist);

		return "admin/userjoblist";
	}

	@RequestMapping("userjobedit")
	public String userjobdelete(String id, String jobid, Model model) {

		try {
			adservice.userjobdelete(id, jobid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return showuserjob(jobid, model);
	}

	@RequestMapping("useraddjob")
	public String useraddjob(String id, String jobid, Model model) {


		adservice.useraddjob(id, jobid);

		return showuserjob(jobid, model);

	}

}