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
	int commentTime;
	boolean isComment;

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

	public int getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(int commentTime) {
		this.commentTime = commentTime;
	}

	public boolean isComment() {
		return isComment;
	}

	public void setComment(boolean isComment) {
		this.isComment = isComment;
	}
}
