package com.recruit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recruit.mapper.JobMapper;
import com.recruit.pojo.Job;
import com.recruit.pojo.ShowJob;
import com.recruit.pojo.UserJob;
import com.recruit.service.JobService;


@Service
public class JobServiceImpl implements JobService {
	
	@Autowired
	private JobMapper jobmapper;

	@Override
	public List<Job> search(Job job) {
		
		List<Job> list=jobmapper.search(job);
		System.out.println(job);
		return list;
		
	}

	@Override
	public ShowJob showjob(String id) {
		
		System.out.println(id);
		
		ShowJob job = jobmapper.showjob(id);
		
		return job;
	}

	@Override
	public void useraddjob(UserJob userjob) {
		
		jobmapper.useraddjob(userjob);
		
	}

}
