package com.recruit.service.admin;

import java.util.List;

import com.recruit.pojo.UserBean;

public interface AdminUserService {

	List<UserBean> userList();

	int userAll();

	void changeState(UserBean user);

	void deleteUser(String user_id);

	List<UserBean> searchUser(UserBean user);

	int searchUserAll(UserBean user);

}
