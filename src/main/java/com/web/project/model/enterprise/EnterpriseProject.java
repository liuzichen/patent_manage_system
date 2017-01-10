/**
 * 
 */
package com.web.project.model.enterprise;

import java.sql.Date;

/**
 * @author 子晨
 * 
 */
public class EnterpriseProject {

	int id;
	int enterpriseId;
	String title;
	String type;
	String field;
	String contractor;
	String contact;
	String contactPhoneNumber;
	String year;
	String state;
	Long applyTime;

	int dealNumber;
	String department;
	String competentDepartment;
	String peopleInCharge;
	String industryField;
	String subjectCode;
	String projectOrigin;
	String techOrigin;
	String developType;
	String productAdoption;
	String startTime;
	String endtime;
	String IPRstatement;
	String award;
	String techRightsandUsage;
	String descriptionAndGoals;
	String contentAndIndication;
	String createPoints;
	String workBasis;
	String schedule;
	String corTypeAndName;
	String corGoalsandInvest;
	String corDepartmentandPerson;
	String corEmailandAddress;
	String serviceType;
	int serviceNumber;
	int numberToserve;
	String servicetypeorplatform;
	String planServicetypeorplatform;
	byte [] fujian;
	String fujianName;
	String fujianDescription;
    boolean isSubmit;

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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getContractor() {
		return contractor;
	}

	public void setContractor(String contractor) {
		this.contractor = contractor;
	}

	
	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	

	public String getPeopleInCharge() {
		return peopleInCharge;
	}

	public void setPeopleInCharge(String peopleInCharge) {
		this.peopleInCharge = peopleInCharge;
	}

	public String getIndustryField() {
		return industryField;
	}

	public void setIndustryField(String industryField) {
		this.industryField = industryField;
	}

	public String getSubjectCode() {
		return subjectCode;
	}

	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}

	public String getProjectOrigin() {
		return projectOrigin;
	}

	public void setProjectOrigin(String projectOrigin) {
		this.projectOrigin = projectOrigin;
	}

	public String getTechOrigin() {
		return techOrigin;
	}

	public void setTechOrigin(String techOrigin) {
		this.techOrigin = techOrigin;
	}

	public String getDevelopType() {
		return developType;
	}

	public void setDevelopType(String developType) {
		this.developType = developType;
	}

	public String getProductAdoption() {
		return productAdoption;
	}

	public void setProductAdoption(String productAdoption) {
		this.productAdoption = productAdoption;
	}

	
	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

	public String getIPRstatement() {
		return IPRstatement;
	}

	public void setIPRstatement(String iPRstatement) {
		IPRstatement = iPRstatement;
	}

	public String getAward() {
		return award;
	}

	public void setAward(String award) {
		this.award = award;
	}

	public String getTechRightsandUsage() {
		return techRightsandUsage;
	}

	public void setTechRightsandUsage(String techRightsandUsage) {
		this.techRightsandUsage = techRightsandUsage;
	}

	public String getDescriptionAndGoals() {
		return descriptionAndGoals;
	}

	public void setDescriptionAndGoals(String descriptionAndGoals) {
		this.descriptionAndGoals = descriptionAndGoals;
	}

	public String getContentAndIndication() {
		return contentAndIndication;
	}

	public void setContentAndIndication(String contentAndIndication) {
		this.contentAndIndication = contentAndIndication;
	}

	public String getCreatePoints() {
		return createPoints;
	}

	public void setCreatePoints(String createPoints) {
		this.createPoints = createPoints;
	}

	public String getWorkBasis() {
		return workBasis;
	}

	public void setWorkBasis(String workBasis) {
		this.workBasis = workBasis;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

	public String getCorTypeAndName() {
		return corTypeAndName;
	}

	public void setCorTypeAndName(String corTypeAndName) {
		this.corTypeAndName = corTypeAndName;
	}

	public String getCorGoalsandInvest() {
		return corGoalsandInvest;
	}

	public void setCorGoalsandInvest(String corGoalsandInvest) {
		this.corGoalsandInvest = corGoalsandInvest;
	}

	public String getCorDepartmentandPerson() {
		return corDepartmentandPerson;
	}

	public void setCorDepartmentandPerson(String corDepartmentandPerson) {
		this.corDepartmentandPerson = corDepartmentandPerson;
	}

	public String getCorEmailandAddress() {
		return corEmailandAddress;
	}

	public void setCorEmailandAddress(String corEmailandAddress) {
		this.corEmailandAddress = corEmailandAddress;
	}

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public int getServiceNumber() {
		return serviceNumber;
	}

	public void setServiceNumber(int serviceNumber) {
		this.serviceNumber = serviceNumber;
	}

	public int getNumberToserve() {
		return numberToserve;
	}

	public void setNumberToserve(int numberToserve) {
		this.numberToserve = numberToserve;
	}

	public String getServicetypeorplatform() {
		return servicetypeorplatform;
	}

	public void setServicetypeorplatform(String servicetypeorplatform) {
		this.servicetypeorplatform = servicetypeorplatform;
	}

	public String getPlanServicetypeorplatform() {
		return planServicetypeorplatform;
	}

	public void setPlanServicetypeorplatform(String planServicetypeorplatform) {
		this.planServicetypeorplatform = planServicetypeorplatform;
	}

	public int getDealNumber() {
		return dealNumber;
	}

	public void setDealNumber(int dealNumber) {
		this.dealNumber = dealNumber;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getCompetentDepartment() {
		return competentDepartment;
	}

	public void setCompetentDepartment(String competentDepartment) {
		this.competentDepartment = competentDepartment;
	}

	public String getContactPhoneNumber() {
		return contactPhoneNumber;
	}

	public void setContactPhoneNumber(String contactPhoneNumber) {
		this.contactPhoneNumber = contactPhoneNumber;
	}

	public Long getApplyTime() {
		return applyTime;
	}

	public void setApplyTime(Long applyTime) {
		this.applyTime = applyTime;
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

	public String getFujianDescription() {
		return fujianDescription;
	}

	public void setFujianDescription(String fujianDescription) {
		this.fujianDescription = fujianDescription;
	}

	public boolean isSubmit() {
		return isSubmit;
	}

	public void setSubmit(boolean isSubmit) {
		this.isSubmit = isSubmit;
	}
	
}
