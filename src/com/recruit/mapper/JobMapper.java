package com.recruit.mapper;

import java.util.List;

import com.recruit.pojo.Job;
import com.recruit.pojo.ShowJob;
import com.recruit.pojo.UserJob;

public interface JobMapper {

	List<Job> search(Job job);

	ShowJob showjob(String id);

	List<ShowJob> findalljob();

	void deletejob(String id);

	void addjob(ShowJob job);

	ShowJob findjobbyid(String id);

	void editaddjob(ShowJob job);

	void useraddjob(UserJob userjob);

	List<UserJob> showuserjob(String sid);

	void userjobdelete(String id, String jobid);

	void adaddjob(String id, String jobid);

}
