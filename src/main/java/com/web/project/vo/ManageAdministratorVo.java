package com.web.project.vo;

import com.web.project.model.BackManage.AdministratorInfo;


public class ManageAdministratorVo {
	
	int AdministratorID;
	String name;
	String password;
	String roleID;
	
	public int getAdministratorID() {
		return AdministratorID;
	}
	public void setAdministratorID(int administratorID) {
		AdministratorID = administratorID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRoleID() {
		return roleID;
	}
	public void setRoleID(String roleID) {
		this.roleID = roleID;
	}

	public ManageAdministratorVo transfer(AdministratorInfo exp){
		this.setAdministratorID(exp.getAdministratorID());
		this.setName(exp.getName());
		this.setPassword(exp.getPassword());
		this.setRoleID(exp.getRoleID());
		return this;
	}
}
