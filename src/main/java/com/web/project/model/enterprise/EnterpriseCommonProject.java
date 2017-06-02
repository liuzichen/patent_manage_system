/**
 * 
 */
package com.web.project.model.enterprise;

/**
 * @author 子晨
 * 
 */
public class EnterpriseCommonProject {
	int id;
	int enterpriseId;
	String title;
	String type;
	String techField;
	String year;
	Long submitTime;
	int expertId;
	String evaluation;
	Long evaluateTime;
	boolean isEvaluated;
	String fujianType;
	String fujianName;
	byte[] fujian;
	String Description;
	String field;
	boolean isAssigned;
	
	public String getFujianType() {
		return fujianType;
	}

	public void setFujianType(String fujianType) {
		this.fujianType = fujianType;
	}

	public String getFujianName() {
		return fujianName;
	}

	public void setFujianName(String fujianName) {
		this.fujianName = fujianName;
	}

	public byte[] getFujian() {
		return fujian;
	}

	public void setFujian(byte[] fujian) {
		this.fujian = fujian;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public boolean isAssigned() {
		return isAssigned;
	}

	public void setAssigned(boolean isAssigned) {
		this.isAssigned = isAssigned;
	}

	
	public Long getSubmitTime() {
		return submitTime;
	}

	public void setSubmitTime(Long submitTime) {
		this.submitTime = submitTime;
	}

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

	public String getTechField() {
		return techField;
	}

	public void setTechField(String techField) {
		this.techField = techField;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public int getExpertId() {
		return expertId;
	}

	public void setExpertId(int expertId) {
		this.expertId = expertId;
	}

	public String getEvaluation() {
		return evaluation;
	}

	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}

	public Long getEvaluateTime() {
		return evaluateTime;
	}

	public void setEvaluateTime(Long evaluateTime) {
		this.evaluateTime = evaluateTime;
	}

	public boolean isEvaluated() {
		return isEvaluated;
	}

	public void setEvaluated(boolean isEvaluated) {
		this.isEvaluated = isEvaluated;
	}

}
