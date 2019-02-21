package com.recruit.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.recruit.pojo.AdministratorBean;


public interface AdministratorService {

	int adminCheck(AdministratorBean adb);

	List<AdministratorBean> adminAllList();

	int adminAllNum();

	AdministratorBean getAdminByName(String nmae);

	void updateState(AdministratorBean ab);
	
}
