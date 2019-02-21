package com.recruit.mapper.admin;

import java.util.List;

import com.recruit.pojo.AdministratorBean;

public interface AdministratorMapper {
	int adminCheck(AdministratorBean adb);

	List<AdministratorBean> adminAllList();

	int adminAllNum();

	AdministratorBean getAdminByName(String name);

	void updateState(AdministratorBean ab);
}
