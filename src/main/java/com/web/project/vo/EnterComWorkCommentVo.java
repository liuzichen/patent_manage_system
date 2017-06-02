/**
 * 
 */
package com.web.project.vo;

import java.text.SimpleDateFormat;

import com.web.project.model.comment.EnterpriseComProjectComment;
import com.web.project.model.comment.MakerComWorksComment;

/**
 * @author Administrator
 *
 */
public class EnterComWorkCommentVo {
	int id;
	int enterCommmonId;
	int expertId;
	String comment;
	long commentTime;
	String questions;
	String commenttime;
	boolean iscomment;
	String expertName;
	
	
	public int getEnterCommmonId() {
		return enterCommmonId;
	}
	public void setEnterCommmonId(int enterCommmonId) {
		this.enterCommmonId = enterCommmonId;
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
	public String getCommenttime() {
		return commenttime;
	}
	public void setCommenttime(String commenttime) {
		this.commenttime = commenttime;
	}
	public boolean isIscomment() {
		return iscomment;
	}
	public void setIscomment(boolean iscomment) {
		this.iscomment = iscomment;
	}
	public String getExpertName() {
		return expertName;
	}
	public void setExpertName(String expertName) {
		this.expertName = expertName;
	}
	public EnterComWorkCommentVo transfer(EnterpriseComProjectComment makerComWorksComment){
		this.setComment(makerComWorksComment.getComment());
		this.setExpertId(makerComWorksComment.getExpertId());
		this.setId(makerComWorksComment.getId());
		this.setIscomment(makerComWorksComment.isIscomment());
		this.setEnterCommmonId(makerComWorksComment.getEnterCommmonId());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if(this.isIscomment()==true){
		Long time = makerComWorksComment.getCommentTime() * 1000;
		this.setCommenttime(sdf.format(time));
		}
		return this;
	}
}
