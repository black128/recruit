package com.recruit.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recruit.mapper.admin.AdminUserMapper;
import com.recruit.pojo.UserBean;
import com.recruit.service.admin.AdminUserService;

@Service
public class AdminUserServiceImpl implements AdminUserService{

	@Autowired
	private AdminUserMapper mapper;

	@Override
	public List<UserBean> userList() {
		return mapper.userList();
	}

	@Override
	public int userAll() {
		return mapper.userAll();
	}

	@Override
	public void changeState(UserBean user) {
		
		if(0==user.getUser_state()) {
			user.setUser_state(1);
		}else {
			user.setUser_state(0);
		}
		mapper.changeState(user);
	}

	@Override
	public void deleteUser(String user_id) {
		mapper.deleteUser(user_id);
		
	}

	@Override
	public List<UserBean> searchUser(UserBean user) {
		return mapper.searchUser(user);
	}

	@Override
	public int searchUserAll(UserBean user) {
		return mapper.searchUserAll(user);
	}
	
}
