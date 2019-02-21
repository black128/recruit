package com.recruit.pojo;

public class Job {

	private String jobname;
	private String jobid;
	private String cate_id;
	private String location;
	private String company;
	private String fid;
	private String cate_name;
	private String salary1;
	private String salary2;
	private String jobtime;
	private String jobtype;
	

	public String getJobtime() {
		return jobtime;
	}

	public void setJobtime(String jobtime) {
		this.jobtime = jobtime;
	}

	public String getJobtype() {
		return jobtype;
	}

	public void setJobtype(String jobtype) {
		this.jobtype = jobtype;
	}

	public String getJobid() {
		return jobid;
	}

	public void setJobid(String jobid) {
		this.jobid = jobid;
	}

	public String getSalary1() {
		return salary1;
	}

	public void setSalary1(String salary1) {
		this.salary1 = salary1;
	}

	public String getSalary2() {
		return salary2;
	}

	public void setSalary2(String salary2) {
		this.salary2 = salary2;
	}

	public String getCate_name() {
		return cate_name;
	}

	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}

	public String getFid() {
		return fid;
	}

	public void setFid(String fid) {
		this.fid = fid;
	}

	public String getJobname() {
		return jobname;
	}

	public void setJobname(String jobname) {
		this.jobname = jobname;
	}

	public String getCate_id() {
		return cate_id;
	}

	public void setCate_id(String cate_id) {
		this.cate_id = cate_id;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public Job(String jobname, String cate_id, String location, String company, String fid, String cate_name,
			String salary1, String salary2) {
		super();
		this.jobname = jobname;
		this.cate_id = cate_id;
		this.location = location;
		this.company = company;
		this.fid = fid;
		this.cate_name = cate_name;
		this.salary1 = salary1;
		this.salary2 = salary2;
	}

	public Job() {
		super();
	}

	@Override
	public String toString() {
		return "Job [jobname=" + jobname + ", jobid=" + jobid + ", cate_id=" + cate_id + ", location=" + location
				+ ", company=" + company + ", fid=" + fid + ", cate_name=" + cate_name + ", salary1=" + salary1
				+ ", salary2=" + salary2 + "]";
	}

}
