package com.recruit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recruit.mapper.JobMapper;
import com.recruit.pojo.ShowJob;
import com.recruit.pojo.UserJob;
import com.recruit.service.AdJobService;
@Service
public class AdJobServiceImpl implements AdJobService {

	
	@Autowired
	private JobMapper jobmapper;
	
	
	@Override
	public List<ShowJob> findalljob() {
		List<ShowJob> findalljob = jobmapper.findalljob();
		
		
		return findalljob;
	}


	@Override
	public void deletejob(String id) {
		jobmapper.deletejob(id);
		
	}


	@Override
	public void addjob(ShowJob job) {
		jobmapper.addjob(job);
		
	}


	@Override
	public ShowJob findjobbyid(String id) {
		ShowJob findjobbyid = jobmapper.findjobbyid(id);
		return findjobbyid ;
	}


	@Override
	public void editaddjob(ShowJob job) {
		
		jobmapper.editaddjob(job);
		
	}


	@Override
	public List<UserJob> showuserjob(String sid) {
		return jobmapper.showuserjob(sid);
		
	}


	@Override
	public void userjobdelete(String id, String jobid) {
		jobmapper.userjobdelete(id,jobid);
		
	}



	@Override
	public void useraddjob(String id, String jobid) {
		jobmapper.adaddjob(id,jobid);
		
	}

}
