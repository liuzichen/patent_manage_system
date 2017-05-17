/**
 * 
 */
package com.web.project.model.comment;

/**
 * @author 子晨
 * 
 */
public class EnterpriseProjectComment {

	int id;
	String type;
	int enterprojectId;
	int expertId;
	String bianzhiCompany;
	String evaluateCompany;
	String mid_describe;
	String comment;
	Long commentTime;
	boolean iscommented;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getEnterprojectId() {
		return enterprojectId;
	}

	public void setEnterprojectId(int enterprojectId) {
		this.enterprojectId = enterprojectId;
	}

	public int getExpertId() {
		return expertId;
	}

	public void setExpertId(int expertId) {
		this.expertId = expertId;
	}


	public String getBianzhiCompany() {
		return bianzhiCompany;
	}

	public void setBianzhiCompany(String bianzhiCompany) {
		this.bianzhiCompany = bianzhiCompany;
	}

	public String getEvaluateCompany() {
		return evaluateCompany;
	}

	public void setEvaluateCompany(String evaluateCompany) {
		this.evaluateCompany = evaluateCompany;
	}

	public String getMid_describe() {
		return mid_describe;
	}

	public void setMid_describe(String mid_describe) {
		this.mid_describe = mid_describe;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	public Long getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(Long commentTime) {
		this.commentTime = commentTime;
	}

	public boolean isIscommented() {
		return iscommented;
	}

	public void setIscommented(boolean iscommented) {
		this.iscommented = iscommented;
	}
    

}
