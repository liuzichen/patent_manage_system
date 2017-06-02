package com.web.project.vo;

import com.web.project.model.BackManage.Field;


public class ManageFieldVo {
	

	




	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	int id;
	String name;

	
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public ManageFieldVo transfer(Field m){
		
		this.setId(m.getFieldID());
		this.setName(m.getName());
		
		return this;
		
	}
	

}
