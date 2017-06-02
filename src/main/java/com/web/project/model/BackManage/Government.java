package com.web.project.model.BackManage;

public class Government {
	
	int ParentID;
	int RoleID;
	String LoginName;
	String Email;
	String Contactpeople;
	public String getContactpeople() {
		return Contactpeople;
	}
	public void setContactpeople(String contactpeople) {
		Contactpeople = contactpeople;
	}
	String Phone;
	String Name;
	String Password;
	int id;
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

}
