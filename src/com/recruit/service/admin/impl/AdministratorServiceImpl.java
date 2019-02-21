package com.recruit.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recruit.mapper.admin.AdministratorMapper;
import com.recruit.pojo.AdministratorBean;
import com.recruit.service.admin.AdministratorService;

@Service
public class AdministratorServiceImpl implements AdministratorService {
	
	@Autowired
	private AdministratorMapper mapper;

	@Override
	public int adminCheck(AdministratorBean adb) {
		
		return mapper.adminCheck(adb);
	}

	@Override
	public List<AdministratorBean> adminAllList() {
		
		return mapper.adminAllList();
	}

	@Override
	public int adminAllNum() {
		
		return mapper.adminAllNum();
	}

	@Override
	public AdministratorBean getAdminByName(String name) {
		// TODO Auto-generated method stub
		return mapper.getAdminByName(name);
	}

	@Override
	public void updateState(AdministratorBean ab) {
		mapper.updateState(ab);
		
	}
}
