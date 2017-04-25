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
	String mid_describe;
	String comment;
	int commentTime;
	boolean isComment;

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
