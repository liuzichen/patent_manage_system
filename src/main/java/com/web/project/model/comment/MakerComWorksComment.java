/**
 * 
 */
package com.web.project.model.comment;

/**
 * @author 子晨
 * 
 */
public class MakerComWorksComment {
	int id;
	int makercommonworksId;
	int expertId;
	String comment;
	String questions;
	Long commenttime;
	boolean iscomment;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMakercommonworksId() {
		return makercommonworksId;
	}

	public void setMakercommonworksId(int makercommonworksId) {
		this.makercommonworksId = makercommonworksId;
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

	public String getQuestions() {
		return questions;
	}

	public void setQuestions(String questions) {
		this.questions = questions;
	}

	public Long getCommenttime() {
		return commenttime;
	}

	public void setCommenttime(Long commenttime) {
		this.commenttime = commenttime;
	}

	public boolean isIscomment() {
		return iscomment;
	}

	public void setIscomment(boolean iscomment) {
		this.iscomment = iscomment;
	}

}
