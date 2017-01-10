/**
 * 
 */
package com.web.project.model.enterprise;

/**
 * @author 子晨
 * 
 */
public class EnterpriseCorporator {
	int id;
	int projectId;
	String name;
	String companyCode;
	String peopleInCharge;
	String phone;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getProjectId() {
		return projectId;
	}

	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCompanyCode() {
		return companyCode;
	}

	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}

	public String getPeopleInCharge() {
		return peopleInCharge;
	}

	public void setPeopleInCharge(String peopleInCharge) {
		this.peopleInCharge = peopleInCharge;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
