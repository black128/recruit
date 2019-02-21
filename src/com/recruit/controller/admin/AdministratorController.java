package com.recruit.controller.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recruit.pojo.AdministratorBean;
import com.recruit.pojo.CategoryBean;
import com.recruit.pojo.ShowJob;
import com.recruit.service.AdJobService;
import com.recruit.service.admin.AdminCategoryService;
import com.recruit.service.admin.AdminUserService;
import com.recruit.service.admin.AdministratorService;
import com.recruit.service.admin.impl.AdminCategoryServiceImpl;
import com.recruit.utils.Md5Utils;

@Controller
@RequestMapping("admin")
public class AdministratorController {
	
	@Autowired
	private AdministratorService service;
	
	@Autowired
	private AdminCategoryService cateservice;
	
	@Autowired
	private AdminUserService userservice;
	
	@Autowired
	private AdJobService adservice;
	
	@RequestMapping("check")
	public String adminLogin(AdministratorBean adb,Model model,HttpSession session) {
		String ad_name=adb.getAd_name();
		String ad_password = Md5Utils.md5(adb.getAd_password());
		adb.setAd_password(ad_password);
		int i =service.adminCheck(adb);
		
		if(i>0) {
			AdministratorBean ab = service.getAdminByName(ad_name);
			session.setAttribute("admin", ab);
			return "admin/index";
		}else {
			model.addAttribute("msg", "账号或密码错误");
			return "admin/login";
		}
		
	}
	
	@RequestMapping("index")
	public String adminIndex() {
		return "admin/index";
	}
	
	
	@RequestMapping("login")
	public String adminLogin(HttpSession session) {
		session.removeAttribute("admin");
		return "admin/login";
	}
	
	@RequestMapping("admin-list")
	public String adminList(Model model) {
		adminAllList(model);
		return "admin/admin-list";
	}
	
	private void adminAllList(Model model) {
		List<AdministratorBean> ab = service.adminAllList();
		int num = service.adminAllNum();
		model.addAttribute("adminlist",ab);
		model.addAttribute("adminnum",num);
		
	}
	
	
	
	@RequestMapping("updatestate")
	@ResponseBody
	public String updateState(AdministratorBean ab) {
		int state = ab.getAd_state();
		if(state==1) {
			ab.setAd_state(0);
		}
		if(state==0) {
			ab.setAd_state(1);
		}
		service.updateState(ab);
		return "";
	}
	
	@RequestMapping("welcome")
	public String adminWelcome(Model model) {
		List<CategoryBean> list = cateservice.queryAllSecond();
		List<ShowJob> alist = adservice.findalljob();
		int jobnum = list.size();
		int catenum=list.size();
		int adminnum=service.adminAllNum();
		int usernum = userservice.userAll();
		model.addAttribute("catenum",catenum);
		model.addAttribute("adminnum",adminnum);
		model.addAttribute("usernum",usernum);
		model.addAttribute("jobnum", jobnum);
		return "admin/welcome";
	}
	
}
