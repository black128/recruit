package com.recruit.service;

import java.util.List;

import com.recruit.pojo.Job;
import com.recruit.pojo.ShowJob;
import com.recruit.pojo.UserJob;

public interface JobService {

	List<Job> search(Job job);

	ShowJob showjob(String id);

	void useraddjob(UserJob userjob);

}
