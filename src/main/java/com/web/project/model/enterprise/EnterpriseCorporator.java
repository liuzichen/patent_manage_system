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
	int enterpriseId;
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

	public int getEnterpriseId() {
		return enterpriseId;
	}

	public void setEnterpriseId(int enterpriseId) {
		this.enterpriseId = enterpriseId;
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
