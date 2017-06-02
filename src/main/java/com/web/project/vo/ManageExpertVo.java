package com.web.project.vo;

import com.web.project.model.BackManage.ExpertInfo;


public class ManageExpertVo {
	
	int id;
	String name;
	int age;
	String company;
	String title;
	String major;
	String education;
	String tellPhone;
	String cellPhone;
	String email;
	String achievement;
	String type;
	String loggingName;
	String passWord;
	String roleId;
	String loginName;
	String telePhone;
	
	public String getTelePhone() {
		return telePhone;
	}
	public void setTelePhone(String telePhone) {
		this.telePhone = telePhone;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getTellPhone() {
		return tellPhone;
	}
	public void setTellPhone(String tellPhone) {
		this.tellPhone = tellPhone;
	}
	public String getCellPhone() {
		return cellPhone;
	}
	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAchievement() {
		return achievement;
	}
	public void setAchievement(String achievement) {
		this.achievement = achievement;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getLoggingName() {
		return loggingName;
	}
	public void setLoggingName(String loggingName) {
		this.loggingName = loggingName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public ManageExpertVo transfer(ExpertInfo exp){
		
		this.setAchievement(exp.getAchievement());
		this.setAge(exp.getAge());
		this.setCellPhone(exp.getCellPhone());
		this.setCompany(exp.getCompany());
		this.setEducation(exp.getEducation());
		this.setEmail(exp.getEmail());
		this.setId(exp.getId());
		this.setLoggingName(exp.getLoggingName());
		this.setMajor(exp.getMajor());
		this.setName(exp.getName());
		this.setPassWord(exp.getPassWord());
		this.setRoleId(exp.getRoleId());
		this.setTellPhone(exp.getTellPhone());
		this.setTelePhone(exp.getTelePhone());
		this.setTitle(exp.getTitle());
		this.setType(exp.getType());
		
		return this;
	}

}
