package com.web.project.vo;

import com.web.project.model.BackManage.Maker;

public class ManageMakerVo {
	
	int MakerID;
	public int getMakerID() {
		return MakerID;
	}
	public void setMakerID(int makerID) {
		MakerID = makerID;
	}

	int RoleID;
	String LoginName;
	String Email;
	String Contact;
	String Phone;
	String Team;
	String Address;
	String TeamIntro;
	String Achievement;
	String Field1;
	String Field2;

	
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
	public String getContact() {
		return Contact;
	}
	public void setContact(String contact) {
		Contact = contact;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getTeam() {
		return Team;
	}
	public void setTeam(String team) {
		Team = team;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getTeamIntro() {
		return TeamIntro;
	}
	public void setTeamIntro(String teamIntro) {
		TeamIntro = teamIntro;
	}
	public String getAchievement() {
		return Achievement;
	}
	public void setAchievement(String achievement) {
		Achievement = achievement;
	}
	public String getField1() {
		return Field1;
	}
	public void setField1(String field1) {
		Field1 = field1;
	}
	public String getField2() {
		return Field2;
	}
	public void setField2(String field2) {
		Field2 = field2;
	}
	
	public ManageMakerVo transfer(Maker maker){
		
		this.setMakerID(maker.getMakerID());
		this.setAchievement(maker.getAchievement());
		this.setAddress(maker.getAddress());
		this.setContact(maker.getContact());
		this.setEmail(maker.getEmail());
		this.setField1(maker.getField1());
		this.setField2(maker.getField2());
		this.setLoginName(maker.getLoginName());
		this.setPhone(maker.getPhone());
		this.setRoleID(maker.getRoleID());
		this.setTeam(maker.getTeam());
		this.setTeamIntro(maker.getTeamIntro());
		return this;
	}

}
