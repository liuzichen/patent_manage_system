package com.web.project.vo;

import com.web.project.model.BackManage.Major;


public class MajorVo {
	
	

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}

	int id;
	String Name;

	
	public MajorVo transfer(Major m){
		
		this.setId(m.getMajorID());
		this.setName(m.getName());
		
		return this;
		
	}
	

}
