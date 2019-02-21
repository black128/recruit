package com.recruit.mapper;

import java.util.List;

import com.recruit.pojo.ResumeBean;
import com.recruit.pojo.UserBean;
import com.recruit.pojo.UserJob;

public interface UserMapper {

	int checkName(String user_name);

	void doRegister(UserBean user);

	int doLogin(UserBean user);

	UserBean selectUser(UserBean user);

	void updateUser(UserBean user);

	List<ResumeBean> getResumeByUserid(String user_id);

	void addResume(ResumeBean resume);

	void deleteResume(String resume_id);

	List<UserJob> selectJob(UserBean user);

	int chkPassword(UserBean user);

	void changePassword(UserBean user);

}
