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
	String comment;
	long  commentTime;
	boolean iscomment;

	public boolean isIscomment() {
		return iscomment;
	}

	public void setIscomment(boolean iscomment) {
		this.iscomment = iscomment;
	}

	public long getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(long commentTime) {
		this.commentTime = commentTime;
	}

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

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}


}
