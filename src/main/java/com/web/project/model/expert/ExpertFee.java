/**
 * 
 */
package com.web.project.model.expert;

/**
 * @author Administrator
 *
 */
public class ExpertFee {
	int id;
	String commentType;
	int commentId;
	double fee;
	boolean isGive;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCommentType() {
		return commentType;
	}
	public void setCommentType(String commentType) {
		this.commentType = commentType;
	}
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public double getFee() {
		return fee;
	}
	public void setFee(double fee) {
		this.fee = fee;
	}
	public boolean isGive() {
		return isGive;
	}
	public void setGive(boolean isGive) {
		this.isGive = isGive;
	}
	
}
