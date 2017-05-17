package com.web.project.vo;

import java.text.SimpleDateFormat;

import com.web.project.model.Question;
import com.web.project.model.enterprise.EnterpriseMiddleTitle;

public class EnterpriseMiddleTitleVo {
	int id;
	
	  public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	 int project_id;
	  String project_name;
	  String type;
	  String responsible_unit;
	  String principal;
	  String expert_leader;
	  String date;
	  int isSubmit;
	  int isEvaluate;
	  int enterpriseid;
	  
	  public int getEnterpriseid() {
		return enterpriseid;
	}
	public void setEnterpriseid(int enterpriseid) {
		this.enterpriseid = enterpriseid;
	}
	public int getIsEvaluate() {
		return isEvaluate;
	}
	public void setIsEvaluate(int isEvaluate) {
		this.isEvaluate = isEvaluate;
	}

	String submit;
	  
	public String getSubmit() {
		return submit;
	}
	public void setSubmit(String submit) {
		this.submit = submit;
	}
	public int getProject_id() {
		return project_id;
	}
	public void setProject_id(int project_id) {
		this.project_id = project_id;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getResponsible_unit() {
		return responsible_unit;
	}
	public void setResponsible_unit(String responsible_unit) {
		this.responsible_unit = responsible_unit;
	}
	public String getPrincipal() {
		return principal;
	}
	public void setPrincipal(String principal) {
		this.principal = principal;
	}
	public String getExpert_leader() {
		return expert_leader;
	}
	public void setExpert_leader(String expert_leader) {
		this.expert_leader = expert_leader;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getIsSubmit() {
		return isSubmit;
	}
	public void setIsSubmit(int isSubmit) {
		this.isSubmit = isSubmit;
	}
	String evaluate;
	public String getEvaluate() {
		return evaluate;
	}
	public void setEvaluate(String evaluate) {
		this.evaluate = evaluate;
	}
	public EnterpriseMiddleTitleVo transfer(EnterpriseMiddleTitle emt){		

		this.setDate(emt.getDate());
		this.setExpert_leader(emt.getExpert_leader());
		if(emt.getIsSubmit() == 1){
			this.setSubmit("已提交");
		}
		else{
			this.setSubmit("未提交");
		}
		if(emt.getIsEvaluate() == 1){
			this.setEvaluate("已审核");
		}
		else{
			this.setEvaluate("未审核");
		}
		this.setIsSubmit(emt.getIsSubmit());
		this.setPrincipal(emt.getPrincipal());
		this.setProject_id(emt.getProject_id());
		this.setProject_name(emt.getProject_name());
		this.setResponsible_unit(emt.getResponsible_unit());
		this.setType(emt.getType());
		this.setIsEvaluate(emt.getIsEvaluate());
		this.setEnterpriseid(emt.getEnterpriseid());
		this.setId(emt.getId());
		return this;
	}
}
