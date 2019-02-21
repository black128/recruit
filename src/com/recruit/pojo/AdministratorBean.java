package com.recruit.pojo;

import java.io.Serializable;
import java.util.Date;

public class AdministratorBean implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int ad_id;
	private int ad_phone;
	private String ad_email;
	private int ad_grade;
	private int ad_state;
	private Date ad_date;
	
	private String ad_name;
	private String ad_password;
	public AdministratorBean() {
		super();
	}
	
	public int getAd_id() {
		return ad_id;
	}

	public void setAd_id(int ad_id) {
		this.ad_id = ad_id;
	}

	public int getAd_phone() {
		return ad_phone;
	}

	public void setAd_phone(int ad_phone) {
		this.ad_phone = ad_phone;
	}

	public String getAd_email() {
		return ad_email;
	}

	public void setAd_email(String ad_email) {
		this.ad_email = ad_email;
	}

	public int getAd_grade() {
		return ad_grade;
	}

	public void setAd_grade(int ad_grade) {
		this.ad_grade = ad_grade;
	}

	public int getAd_state() {
		return ad_state;
	}

	public void setAd_state(int ad_state) {
		this.ad_state = ad_state;
	}

	public Date getAd_date() {
		return ad_date;
	}

	public void setAd_date(Date ad_date) {
		this.ad_date = ad_date;
	}

	public String getAd_name() {
		return ad_name;
	}
	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
	}
	public String getAd_password() {
		return ad_password;
	}
	public void setAd_password(String ad_password) {
		this.ad_password = ad_password;
	}

	@Override
	public String toString() {
		return "AdministratorBean [ad_id=" + ad_id + ", ad_phone=" + ad_phone + ", ad_email=" + ad_email + ", ad_grade="
				+ ad_grade + ", ad_state=" + ad_state + ", ad_date=" + ad_date + ", ad_name=" + ad_name
				+ ", ad_password=" + ad_password + "]";
	}
	
}
