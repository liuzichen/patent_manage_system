/**
 * 
 */
package com.web.project.vo;

import com.web.project.model.expert.ExpertInfo;

/**
 * @author Administrator
 *
 */
public class ExpertAssignVo {
	int id;
	String name;
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
	
	public ExpertAssignVo transfer(ExpertInfo expertInfo){
		this.setId(expertInfo.getId());
		this.setName(expertInfo.getName());
		return this;
	}

}
