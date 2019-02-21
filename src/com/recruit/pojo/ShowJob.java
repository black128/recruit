package com.recruit.pojo;

public class ShowJob {

	private String id;
	private String dic;
	private String jobname;
	private String location;
	private String company;
	private String cate_name;
	private String salary1;
	private String salary2;
	private String jobtype;
	private String jobtime;
	private String jobid;
	private String fid;
	
	

	public String getFid() {
		return fid;
	}

	public void setFid(String fid) {
		this.fid = fid;
	}

	public String getJobid() {
		return jobid;
	}

	public void setJobid(String jobid) {
		this.jobid = jobid;
	}

	public String getJobtype() {
		return jobtype;
	}

	public void setJobtype(String jobtype) {
		this.jobtype = jobtype;
	}

	public String getJobtime() {
		return jobtime;
	}

	public void setJobtime(String jobtime) {
		this.jobtime = jobtime;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDic() {
		return dic;
	}

	public void setDic(String dic) {
		this.dic = dic;
	}

	public String getJobname() {
		return jobname;
	}

	public void setJobname(String jobname) {
		this.jobname = jobname;
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

	public String getCate_name() {
		return cate_name;
	}

	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
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

	public ShowJob(String id, String dic, String jobname, String location, String company, String cate_name,
			String salary1, String salary2, String jobtype, String jobtime) {
		super();
		this.id = id;
		this.dic = dic;
		this.jobname = jobname;
		this.location = location;
		this.company = company;
		this.cate_name = cate_name;
		this.salary1 = salary1;
		this.salary2 = salary2;
		this.jobtype = jobtype;
		this.jobtime = jobtime;
	}

	public ShowJob() {
		super();
	}

	@Override
	public String toString() {
		return "ShowJob [id=" + id + ", dic=" + dic + ", jobname=" + jobname + ", location=" + location + ", company="
				+ company + ", cate_name=" + cate_name + ", salary1=" + salary1 + ", salary2=" + salary2 + ", jobtype="
				+ jobtype + ", jobtime=" + jobtime + ", jobid=" + jobid + ", fid=" + fid + "]";
	}



}
