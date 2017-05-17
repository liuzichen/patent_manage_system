/**
 * 
 */
package com.web.project.model.comment;

/**
 * @author 子晨
 *
 */
public class EnterpriseComProjectComment {

	int id;
	int enterCommmonId;
	int expertId;
	String bianzhiCompany;
	String evaluateCompany;
	String comment;
	Long commentTime;
	boolean iscommented;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getEnterCommmonId() {
		return enterCommmonId;
	}

	public void setEnterCommmonId(int enterCommmonId) {
		this.enterCommmonId = enterCommmonId;
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
