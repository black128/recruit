package com.recruit.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.recruit.pojo.ResumeBean;
import com.recruit.pojo.UserBean;
import com.recruit.pojo.UserJob;
import com.recruit.service.UserService;
import com.recruit.utils.ImageCode;
import com.recruit.utils.Md5Utils;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("login")
	public String login() {
		System.out.println("12131656");
//		validPic(response,session);
		return "jsp/login";
	}
	
	//验证码
	@RequestMapping("code")
	public void validPic(HttpServletResponse response,HttpSession session) {
		try {
			Map<String,BufferedImage> map = ImageCode.getImage(60, 26, 4,20);
			String checkCode = map.keySet().iterator().next();
			session.setAttribute("imageCode", checkCode);
			BufferedImage image = map.values().iterator().next();
			// 禁止图像缓存。  
			response.setHeader("Pragma", "no-cache"); 
			response.setHeader("Cache-Control", "no-cache"); 
			response.setDateHeader("Expires", 0); 
	  
			response.setContentType("image/jpeg"); 
	        ImageIO.write(image, "jpeg", response.getOutputStream()); 
	   } catch (Exception e) {
			// TODO: handle exception
	   }
	}
	
	
	@RequestMapping("dologin")
	@ResponseBody
	public String doLogin(UserBean user,HttpSession session) {
		//非空验证
		if(user.getUser_name()==null||user.getUser_name().trim().isEmpty()) {
			return "01";
		}
		if(user.getUser_password()==null||user.getUser_password().trim().isEmpty()) {
			return "02";
		}
		
		//验证码
		String imgcode = (String)session.getAttribute("imageCode");
		if(!imgcode.equals(user.getCode())) {
			return "12";
		}

		//登录
		user.setUser_password(Md5Utils.md5(user.getUser_password()));
		if(userService.doLogin(user)>0) {
			UserBean user2 = userService.selectUser(user);
			session.setAttribute("user",user2);
			return "00";
		}else {
			return "11";
		}
	}
	
	
	@RequestMapping("register")
	@ResponseBody
	public String doRegister(UserBean user,HttpSession session) {
		//非空验证
		if(user.getUser_name()==null||user.getUser_name().trim().isEmpty()) {
			return "01";
		}
		if(user.getUser_password()==null||user.getUser_password().trim().isEmpty()) {
			return "02";
		}
		//密码是否相同
		if(!user.getUser_password().equals(user.getChkpwd())) {
			return "05";
		}
		//用户名重复验证放在外边
		//验证码待定
		String imgcode = (String)session.getAttribute("imageCode");
		if(!imgcode.equals(user.getCode())) {
			return "12";
		}
		
		user.setUser_id(UUID.randomUUID().toString().replace("-",""));
		user.setUser_password(Md5Utils.md5(user.getUser_password()));
		userService.doRegister(user);
		return "00";
	}
	
	@RequestMapping("checkname")
	@ResponseBody
	public String checkName(String user_name) {
		if(userService.checkName(user_name)>0) {
			return "04";
		}else {
			return "11";
		}
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		session.invalidate();
		return "jsp/login";
	}
	
	
	@RequestMapping("user/user_dashboard")
	public String user_dashboard(HttpSession session) {
		sessionUser(session);
		return "jsp/user_dashboard";
	}
	
	@RequestMapping("user/user_edit_profile")
	public String user_edit_profile(HttpSession session) {
		UserBean user = (UserBean)session.getAttribute("user");
		UserBean user2 = userService.selectUser(user);
		session.setAttribute("user", user2);
		return "jsp/user_edit_profile";
	}
	
	@RequestMapping("user/changeUser")
	public ModelAndView changeUser(UserBean user,MultipartFile picture,HttpServletRequest request) throws IllegalStateException, IOException {
		ModelAndView mav = new ModelAndView();
		if(picture!=null&&!picture.isEmpty()) {
			//设置UUID---新名字
			String newName = UUID.randomUUID().toString().replace("-", "");
			//原始名字
			String oldName = picture.getOriginalFilename();
			//后缀
			String exeName = oldName.substring(oldName.indexOf("."));
			//新文件			
			String path = "/usr/local/tomcat/apache-tomcat-7.0.90/webapps/img/";
			
			File file = new File(path+newName+exeName);
			//保存到本地
			picture.transferTo(file);
			user.setUser_img(newName+exeName);
		}else {
			user.setUser_img("c3c4655448f14b3d946a670af7b8984b.jpg");
		}
		userService.updateUser(user);
		mav.addObject("user",user);
		mav.addObject("msg","修改成功");
		mav.setViewName("jsp/user_edit_profile");
		return mav;
	}
	
	@RequestMapping("user/user_job_applied")
	public String user_job_applied(int pageNum,int pageSize,HttpSession session,Model model) {
		UserBean user = (UserBean)session.getAttribute("user");
		PageHelper.startPage(pageNum, pageSize);
		List<UserJob> list = userService.queryJob(user);
		PageInfo page = new PageInfo(list);
		model.addAttribute("page",page);
		return "jsp/user_job_applied";
	}
	
	@RequestMapping("user/user_resume")
	public String user_resume(int pageNum,int pageSize,HttpSession session,Model model) {
		UserBean user = (UserBean) session.getAttribute("user");
		PageHelper.startPage(pageNum, pageSize);
		List<ResumeBean> list = userService.getResumeByUserid(user.getUser_id());
		PageInfo page = new PageInfo(list);
		model.addAttribute("page",page);
		return "jsp/user_resume";
	}
	
	@RequestMapping("user/addResume")
	public String addresume(Model model,MultipartFile resume,HttpSession session,HttpServletRequest request) throws IllegalStateException, IOException {
		
		//设置UUID---新名字
		String newName = UUID.randomUUID().toString().replace("-", "");
		//原始名字
		String oldName = resume.getOriginalFilename();
		//后缀
		String exeName = oldName.substring(oldName.indexOf("."));
		//新文件		
		String path = "/usr/local/tomcat/apache-tomcat-7.0.90/webapps/resume/";
		
		File file = new File(path+newName+exeName);
		//保存到本地
		resume.transferTo(file);
		ResumeBean resumett = new ResumeBean();
		resumett.setResume_id(newName);
		resumett.setResume_name(newName+exeName);
		resumett.setResume_oname(oldName);
		
		UserBean user = (UserBean) session.getAttribute("user");
		resumett.setUser_id(user.getUser_id());
		userService.addResume(resumett);
		model.addAttribute("user",user);
		int pageNum = 1;
		int pageSize = 5;
		return user_resume(pageNum,pageSize,session,model);
		
	}
	
	@RequestMapping("user/download")
	public void download(String resume_name,HttpServletRequest request,HttpServletResponse response) throws IOException {
//        String path =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/"+"resume/"+resume_name;
        String path = "D:\\JavaWebWorksplace\\upload\\resume\\"+resume_name;
 
		//获取输入流  
        InputStream bis = new BufferedInputStream(new FileInputStream(path));
        //转码，免得文件名中文乱码  
        resume_name = URLEncoder.encode(resume_name,"UTF-8");  
        //设置文件下载头  
        response.addHeader("Content-Disposition", "attachment;filename="+resume_name);    
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型    
        response.setContentType("multipart/form-data");   
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());  
        int len = 0;  
        while((len = bis.read())!=-1){  
            out.write(len);  
            out.flush();  
        }  
        out.close();  
	}
	
	@RequestMapping("user/deleteResume")
	@ResponseBody
	public String deleteResume(String resume_id) {
		userService.deleteResume(resume_id);
		return "12";
	}
	
	
	@RequestMapping("user/user_followed_companies")
	public String user_followed_companies(HttpSession session) {
		sessionUser(session);
		return "jsp/user_followed_companies";
	}
	
	private void sessionUser(HttpSession session) {
		UserBean user = (UserBean)session.getAttribute("user");
		UserBean user2 = userService.selectUser(user);
		session.setAttribute("user", user2);
	}
	
	
	@RequestMapping("contactus")
	public String contactus() {
		return "jsp/contactus";
	}
	
	@RequestMapping("aboutus")
	public String aboutus() {
		return "jsp/aboutus";
	}
	
	
	@RequestMapping("blog-single")
	public String blogsingle() {
		return "jsp/blog-single";
	}
	
	
	@RequestMapping("user/changePassword")
	public String changePassword(HttpSession session) {
		sessionUser(session);
		return "jsp/changePassword";
	}
	
	@RequestMapping("user/changePwd")
	@ResponseBody
	public String changePwd(HttpSession session,UserBean user) {
		System.out.println(user.getOldpwd());
		System.out.println(user.getChkpwd());
		System.out.println(user.getUser_password());
		
		//非空验证
		if(user.getOldpwd()==null||user.getOldpwd().trim().isEmpty()) {
			return "01";
		}
		if(user.getUser_password()==null||user.getUser_password().trim().isEmpty()) {
			return "02";
		}
		if(user.getChkpwd()==null||user.getChkpwd().trim().isEmpty()) {
			return "02";
		}
		
		//密码是否相同
		if(!user.getUser_password().equals(user.getChkpwd())) {
			return "05";
		}
		user.setOldpwd(Md5Utils.md5(user.getOldpwd()));
		if(userService.chkPassword(user)>0) {
			user.setUser_password(Md5Utils.md5(user.getUser_password()));
			userService.changePassword(user);
			return "00";
		}else {
			return "06";
		}
			
	}

}
