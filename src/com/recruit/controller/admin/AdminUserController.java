package com.recruit.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.recruit.pojo.ResumeBean;
import com.recruit.pojo.UserBean;
import com.recruit.service.UserService;
import com.recruit.service.admin.AdminUserService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("admin")
public class AdminUserController {

	@Autowired
	private AdminUserService adminService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("adminlogin")
	public String adminLogin() {
		return "admin/login";
	}
	
	@RequestMapping("adminindex")
	public String adminindex() {
		return "admin/index";
	}
	
//	@RequestMapping("adminlist")
//	public String userList(Model model,UserBean user,HttpServletRequest req) {
//		List<UserBean> list = adminService.userList();
//		photoList(model,user,req);
//		int num = adminService.userAll();
//		model.addAttribute("num",num);
//		return "admin/memeber-list";
//	}
	
	@RequestMapping("changestate")
	@ResponseBody
	public String changeState(UserBean user) {
		adminService.changeState(user);
		return "00";
	}
	
	@RequestMapping("deleteuser")
	@ResponseBody
	public String deleteUser(String user_id) {
		adminService.deleteUser(user_id);
		return "00";
	}
	
	@RequestMapping("user_job_resume")
	public String userjobresume(String pageNum,HttpSession session,Model model,String id) {
		String pageo=pageNum;
		int pageNo;
		if(pageo==null||pageo.trim().isEmpty()){
			pageNo=1;
		}else{
			pageNo=Integer.parseInt(pageo);
		}
		int pageSize=3;
		PageHelper.startPage(pageNo, pageSize);
		List<ResumeBean> list = userService.getResumeByUserid(id);
		PageInfo page = new PageInfo(list);
		model.addAttribute("page",page);
		return "admin/user_job_resume";
	}
	
	@RequestMapping("deleteAll")
	@ResponseBody
	public String deleteAll(String arr) {
		System.out.println("---------");
		System.out.println(arr);
		return "0";
	}
	
	@RequestMapping("searchuser")
	public String searchUser(Model model,UserBean user,HttpServletRequest req) {
		
		photoList(model,user,req);
		int num = adminService.searchUserAll(user);
		model.addAttribute("num",num);
		return "admin/memeber-list";
	}
	
	public void photoList(Model model,UserBean user,HttpServletRequest req){
		String pageo=req.getParameter("pageNo");
		int pageNo;
		if(pageo==null||pageo.trim().isEmpty()){
			pageNo=1;
		}else{
			pageNo=Integer.parseInt(pageo);
		}
		int pagesize=3;
		//该方法必须放在最上面
		PageHelper.startPage(pageNo,pagesize);
		List<UserBean> list = adminService.searchUser(user);
		PageInfo page=new PageInfo(list);
		model.addAttribute("pageNo",pageNo);
		model.addAttribute("page",page);
		model.addAttribute("serchuser",user);
	}
}
