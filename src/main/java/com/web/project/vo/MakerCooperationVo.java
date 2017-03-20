/**
 * 
 */
package com.web.project.vo;

import java.text.SimpleDateFormat;

import com.web.project.model.maker.MakerCooperation;

/**
 * @author Administrator
 *
 */
public class MakerCooperationVo {
	int id;
	String title;
	int makerId;
	String team;
	String field;
	String contact;
	String phone;
	String teamIntro;
	String detail;
	String subTime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getMakerId() {
		return makerId;
	}
	public void setMakerId(int makerId) {
		this.makerId = makerId;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTeamIntro() {
		return teamIntro;
	}
	public void setTeamIntro(String teamIntro) {
		this.teamIntro = teamIntro;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getSubTime() {
		return subTime;
	}
	public void setSubTime(String subTime) {
		this.subTime = subTime;
	}
	
	public MakerCooperationVo transfer(MakerCooperation makerCooperation){
		this.setId(makerCooperation.getId());
		this.setTitle(makerCooperation.getTitle());
		this.setMakerId(makerCooperation.getMakerId());
		this.setTeam(makerCooperation.getTeam());
		this.setField(makerCooperation.getField());
		this.setContact(makerCooperation.getContact());
		this.setPhone(makerCooperation.getPhone());
		this.setTeamIntro(makerCooperation.getTeamIntro());
		this.setDetail(makerCooperation.getDetail());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Long time = makerCooperation.getSubTime() * 1000;
		this.setSubTime(sdf.format(time));
		return this;
	}
}
