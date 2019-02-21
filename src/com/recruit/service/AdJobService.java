package com.recruit.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.recruit.pojo.ShowJob;
import com.recruit.pojo.UserJob;


public interface AdJobService {

	List<ShowJob> findalljob();

	void deletejob(String id);

	void addjob(ShowJob job);

	ShowJob findjobbyid(String id);

	void editaddjob(ShowJob job);

	List<UserJob> showuserjob(String sid);

	void userjobdelete(String id, String jobid);

	void useraddjob(String id, String jobid);

}
