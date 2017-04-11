/**
 * 
 */
package com.web.project.vo;

import java.text.SimpleDateFormat;

import com.web.project.model.maker.MakerCommonWorks;

/**
 * @author Administrator
 * 
 */
public class MakerCommonWorksVo {
	int id;
	String title;
	int makerId;
	String team;
	String contack;
	String phone;
	String email;
	String description;
	byte[] fujian;
	String fujianName;
	String fujianType;
	String field;
	String submitTime;
	boolean isevaluated;
	boolean isAssigned;
	String evaluation;
	String evaluateTime;

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

	public String getContack() {
		return contack;
	}

	public void setContack(String contack) {
		this.contack = contack;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public byte[] getFujian() {
		return fujian;
	}

	public void setFujian(byte[] fujian) {
		this.fujian = fujian;
	}

	public String getFujianName() {
		return fujianName;
	}

	public void setFujianName(String fujianName) {
		this.fujianName = fujianName;
	}

	public String getFujianType() {
		return fujianType;
	}

	public void setFujianType(String fujianType) {
		this.fujianType = fujianType;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getSubmitTime() {
		return submitTime;
	}

	public void setSubmitTime(String submitTime) {
		this.submitTime = submitTime;
	}

	public boolean isIsevaluated() {
		return isevaluated;
	}

	public void setIsevaluated(boolean isevaluated) {
		this.isevaluated = isevaluated;
	}
	

	public boolean isAssigned() {
		return isAssigned;
	}

	public void setAssigned(boolean isAssigned) {
		this.isAssigned = isAssigned;
	}

	
	public String getEvaluation() {
		return evaluation;
	}

	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}

	public String getEvaluateTime() {
		return evaluateTime;
	}

	public void setEvaluateTime(String evaluateTime) {
		this.evaluateTime = evaluateTime;
	}

	public MakerCommonWorksVo transfer(MakerCommonWorks makerCommonWorks){
		this.setId(makerCommonWorks.getId());
		this.setTitle(makerCommonWorks.getTitle());
		this.setMakerId(makerCommonWorks.getMakerId());
		this.setTeam(makerCommonWorks.getTeam());
		this.setContack(makerCommonWorks.getContack());
		this.setPhone(makerCommonWorks.getPhone());
		this.setEmail(makerCommonWorks.getEmail());
		this.setDescription(makerCommonWorks.getDescription());
		this.setFujian(makerCommonWorks.getFujian());
		this.setFujianName(makerCommonWorks.getFujianName());
		this.setFujianType(makerCommonWorks.getFujianType());
		this.setField(makerCommonWorks.getField());
		this.setIsevaluated(makerCommonWorks.isIsevaluated());
		this.setAssigned(makerCommonWorks.isAssigned());
		this.setEvaluation(makerCommonWorks.getEvaluation());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Long time = makerCommonWorks.getSubmitTime() * 1000;
		this.setSubmitTime(sdf.format(time));
		time=makerCommonWorks.getEvaluateTime() * 1000;
		this.setEvaluateTime(sdf.format(time));
		return this;
	}
}
