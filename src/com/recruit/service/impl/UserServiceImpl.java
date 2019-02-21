package com.recruit.service.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recruit.mapper.UserMapper;
import com.recruit.pojo.ResumeBean;
import com.recruit.pojo.UserBean;
import com.recruit.pojo.UserJob;
import com.recruit.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper mapper;

	@Override
	public int checkName(String user_name) {
		return mapper.checkName(user_name);
		
	}

	@Override
	public void doRegister(UserBean user) {

		DateFormat df = new SimpleDateFormat("dd-MM-yyyy HH-mm-ss");
		
		
		long l = Long.parseLong(user.getUser_date());
		Date date = new Date();
		date.setTime(l);
		String d = df.format(date);
		user.setUser_date(d);
		mapper.doRegister(user);
		
	}

	@Override
	public int doLogin(UserBean user) {
		return mapper.doLogin(user);
	}

	@Override
	public UserBean selectUser(UserBean user) {
		return mapper.selectUser(user);
	}

	@Override
	public void updateUser(UserBean user) {
		mapper.updateUser(user);
	}

	@Override
	public List<ResumeBean> getResumeByUserid(String user_id) {
		return mapper.getResumeByUserid(user_id);
	}

	@Override
	public void addResume(ResumeBean resume) {
		mapper.addResume(resume);
	}

	@Override
	public void deleteResume(String resume_id) {
		mapper.deleteResume(resume_id);
		
	}

	@Override
	public List<UserJob> queryJob(UserBean user) {
		
		return mapper.selectJob(user);
	}

	@Override
	public int chkPassword(UserBean user) {
		
		return mapper.chkPassword(user);
	}

	@Override
	public void changePassword(UserBean user) {
		mapper.changePassword(user);
	}
	
}
