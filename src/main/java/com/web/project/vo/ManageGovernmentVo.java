package com.web.project.vo;

import com.web.project.model.BackManage.Government;

public class ManageGovernmentVo {
	int ParentID;
	int RoleID;
	String LoginName;
	String Email;
	String Phone;
	String Name;
	String Password;
	int Governlevel;
	public int getGovernlevel() {
		return Governlevel;
	}
	public void setGovernlevel(int governlevel) {
		Governlevel = governlevel;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContactpeople() {
		return Contactpeople;
	}
	public void setContactpeople(String contactpeople) {
		Contactpeople = contactpeople;
	}

	int id;
	String Contactpeople;
	String Address;
	String Postcode;
	
	public String getPostcode() {
		return Postcode;
	}
	public void setPostcode(String postcode) {
		Postcode = postcode;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public int getParentID() {
		return ParentID;
	}
	public void setParentID(int parentID) {
		ParentID = parentID;
	}
	public int getRoleID() {
		return RoleID;
	}
	public void setRoleID(int roleID) {
		RoleID = roleID;
	}
	public String getLoginName() {
		return LoginName;
	}
	public void setLoginName(String loginName) {
		LoginName = loginName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}

	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}

	
	public ManageGovernmentVo transfer(Government government){


		this.setId(government.getId());
		this.setParentID(government.getParentID());
		this.setPassword(government.getPassword());
		this.setGovernlevel(government.getGovernlevel());
		this.setName(government.getName());
		this.setAddress(government.getAddress());
		this.setContactpeople(government.getContactpeople());
		this.setEmail(government.getEmail());
		this.setLoginName(government.getLoginName());
		this.setPhone(government.getPhone());
		this.setPostcode(government.getPostcode());
		this.setRoleID(government.getRoleID());	
		return this;
	}
}
