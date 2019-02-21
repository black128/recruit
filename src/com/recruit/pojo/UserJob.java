package com.recruit.pojo;

public class UserJob {

	private String message;
	private String user_id;
	private String user_name;
	private String user_email;
	private String user_dic;
	private String jobname;
	
	

	public String getJobname() {
		return jobname;
	}

	public void setJobname(String jobname) {
		this.jobname = jobname;
	}

	private String company;
	private String jobid;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_dic() {
		return user_dic;
	}

	public void setUser_dic(String user_dic) {
		this.user_dic = user_dic;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getJobid() {
		return jobid;
	}

	public void setJobid(String jobid) {
		this.jobid = jobid;
	}

	public UserJob(String message, String user_id, String user_name, String user_email, String user_dic, String company,
			String jobid) {
		super();
		this.message = message;
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_email = user_email;
		this.user_dic = user_dic;
		this.company = company;
		this.jobid = jobid;
	}

	public UserJob() {
		super();
	}

	@Override
	public String toString() {
		return "UserJob [message=" + message + ", user_id=" + user_id + ", user_name=" + user_name + ", user_email="
				+ user_email + ", user_dic=" + user_dic + ", jobname=" + jobname + ", company=" + company + ", jobid="
				+ jobid + "]";
	}

}
