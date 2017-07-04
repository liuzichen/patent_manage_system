package com.web.project.vo;

import com.web.project.model.BackManage.Department;

public class ManageDepartmentVo {


	int id;
	String name;
	int level;
	int cluster;
	int parent;




	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}





	public int getLevel() {
		return level;
	}




	public void setLevel(int level) {
		this.level = level;
	}




	public int getCluster() {
		return cluster;
	}




	public void setCluster(int cluster) {
		this.cluster = cluster;
	}




	public int getParent() {
		return parent;
	}




	public void setParent(int parent) {
		this.parent = parent;
	}




	public ManageDepartmentVo transfer(Department m){
		
		this.setId(m.getId());
		this.setName(m.getName());
		this.setCluster(m.getCluster());
		this.setLevel(m.getLevel());
		this.setParent(m.getParent());
		
		return this;
		
	}
	

}
