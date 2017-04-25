/**
 * 
 */
package com.web.project.vo;

import java.text.SimpleDateFormat;

import com.web.project.model.maker.MakerWorks;

/**
 * @author 子晨
 * 
 */
public class MakerWorkVo {
	int id;
	int MakerProjectID;
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
	String problems;
	String evaluation;
	String evaluatetime;
	boolean isevaluated;
	boolean isAssigned;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMakerProjectID() {
		return MakerProjectID;
	}

	public void setMakerProjectID(int makerProjectID) {
		MakerProjectID = makerProjectID;
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


	public String getProblems() {
		return problems;
	}

	public void setProblems(String problems) {
		this.problems = problems;
	}

	public String getEvaluation() {
		return evaluation;
	}

	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}

	public String getEvaluatetime() {
		return evaluatetime;
	}

	public void setEvaluatetime(String evaluatetime) {
		this.evaluatetime = evaluatetime;
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

	public MakerWorkVo transfer(MakerWorks makerWorks) {
		this.setId(makerWorks.getId());
		this.setMakerProjectID(makerWorks.getMakerProjectID());
		this.setMakerId(makerWorks.getMakerProjectID());
		this.setTitle(makerWorks.getTitle());
		this.setTeam(makerWorks.getTeam());
		this.setContack(makerWorks.getContack());
		this.setPhone(makerWorks.getPhone());
		this.setEmail(makerWorks.getEmail());
		this.setDescription(makerWorks.getDescription());
		this.setFujian(makerWorks.getFujian());
		this.setFujianName(makerWorks.getFujianName());
		this.setFujianType(makerWorks.getFujianType());
		this.setField(makerWorks.getField());
		this.setProblems(makerWorks.getProblems());
		this.setIsevaluated(makerWorks.isIsevaluated());
		this.setEvaluation(makerWorks.getEvaluation());
		this.setAssigned(makerWorks.isAssigned());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Long time = makerWorks.getSubmitTime() * 1000;
		if (this.isevaluated == true) {
			Long evaTime = makerWorks.getEvaluatetime() * 1000;
			this.setEvaluatetime(sdf.format(evaTime));
		}
		this.setSubmitTime(sdf.format(time));
		return this;
	}
}
