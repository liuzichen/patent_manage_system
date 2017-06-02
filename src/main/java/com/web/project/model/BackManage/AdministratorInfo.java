package com.web.project.model.BackManage;

public class AdministratorInfo {

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

}
