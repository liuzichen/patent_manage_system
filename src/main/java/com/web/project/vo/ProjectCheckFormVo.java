package com.web.project.vo;

import com.web.project.model.enterprise.EnterpriseMiddleTitle;
import com.web.project.model.enterprise.ProjectCheckForm;

public class ProjectCheckFormVo {
	String g1;
	String g2;
	String g3;
	String g4;
	String g5;
	String g6;
	String g7;
	String g8;
	String g9;
	int enterpriseProjectID;
	int enterpriseID;
	int governmentID;
	String state;
	String fujianName;
	String fujianType;
	byte[] fujian;
	int ID;
	int isSubmit;
	int isEvaluate;
	String submit;
	String evaluate;
	
	public String getSubmit() {
		return submit;
	}
	public void setSubmit(String submit) {
		this.submit = submit;
	}
	public String getEvaluate() {
		return evaluate;
	}
	public void setEvaluate(String evaluate) {
		this.evaluate = evaluate;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getIsSubmit() {
		return isSubmit;
	}
	public void setIsSubmit(int isSubmit) {
		this.isSubmit = isSubmit;
	}
	public int getIsEvaluate() {
		return isEvaluate;
	}
	public void setIsEvaluate(int isEvaluate) {
		this.isEvaluate = isEvaluate;
	}
	public String getG1() {
		return g1;
	}
	public void setG1(String g1) {
		this.g1 = g1;
	}
	public String getG2() {
		return g2;
	}
	public void setG2(String g2) {
		this.g2 = g2;
	}
	public String getG3() {
		return g3;
	}
	public void setG3(String g3) {
		this.g3 = g3;
	}
	public String getG4() {
		return g4;
	}
	public void setG4(String g4) {
		this.g4 = g4;
	}
	public String getG5() {
		return g5;
	}
	public void setG5(String g5) {
		this.g5 = g5;
	}
	public String getG6() {
		return g6;
	}
	public void setG6(String g6) {
		this.g6 = g6;
	}
	public String getG7() {
		return g7;
	}
	public void setG7(String g7) {
		this.g7 = g7;
	}
	public String getG8() {
		return g8;
	}
	public void setG8(String g8) {
		this.g8 = g8;
	}
	public String getG9() {
		return g9;
	}
	public void setG9(String g9) {
		this.g9 = g9;
	}
	public int getEnterpriseProjectID() {
		return enterpriseProjectID;
	}
	public void setEnterpriseProjectID(int enterpriseProjectID) {
		this.enterpriseProjectID = enterpriseProjectID;
	}
	public int getEnterpriseID() {
		return enterpriseID;
	}
	public void setEnterpriseID(int enterpriseID) {
		this.enterpriseID = enterpriseID;
	}
	public int getGovernmentID() {
		return governmentID;
	}
	public void setGovernmentID(int governmentID) {
		this.governmentID = governmentID;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
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
	public byte[] getFujian() {
		return fujian;
	}
	public void setFujian(byte[] fujian) {
		this.fujian = fujian;
	}

	public ProjectCheckFormVo transfer(ProjectCheckForm pcf){		

		if(pcf.getIsSubmit() == 1){
			this.setSubmit("已提交");
		}
		else{
			this.setSubmit("未提交");
		}
		if(pcf.getIsEvaluate() == 1){
			this.setEvaluate("已评审");
		}
		else{
			this.setEvaluate("未评审");
		}
		this.setEnterpriseID(pcf.getEnterpriseID());
		this.setEnterpriseProjectID(pcf.getEnterpriseProjectID());
		this.setFujian(pcf.getFujian());
		this.setFujianName(pcf.getFujianName());
		this.setFujianType(pcf.getFujianType());
		this.setG1(pcf.getG1());
		this.setG2(pcf.getG2());
		this.setG3(pcf.getG3());
		this.setG4(pcf.getG4());
		this.setG5(pcf.getG5());
		this.setG6(pcf.getG6());
		this.setG7(pcf.getG7());
		this.setG8(pcf.getG8());
		this.setG9(pcf.getG9());
		this.setID(pcf.getID());
		this.setIsEvaluate(pcf.getIsEvaluate());
		this.setIsSubmit(pcf.getIsSubmit());
		return this;
	}
	
}
