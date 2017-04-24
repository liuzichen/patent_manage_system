/**
 * 
 */
package com.web.project.vo;

import java.text.SimpleDateFormat;

import com.web.project.model.comment.MakerComWorksComment;

/**
 * @author Administrator
 *
 */
public class MakerComWorkCommentVo {
	int id;
	int makercommonworksId;
	int expertId;
	String comment;
	String questions;
	String commenttime;
	boolean iscomment;
	String expertName;
	
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
	public MakerComWorkCommentVo transfer(MakerComWorksComment makerComWorksComment){
		this.setComment(makerComWorksComment.getComment());
		this.setExpertId(makerComWorksComment.getExpertId());
		this.setId(makerComWorksComment.getId());
		this.setIscomment(makerComWorksComment.isIscomment());
		this.setMakercommonworksId(makerComWorksComment.getMakercommonworksId());
		this.setQuestions(makerComWorksComment.getQuestions());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if(this.isIscomment()==true){
		Long time = makerComWorksComment.getCommenttime() * 1000;
		this.setCommenttime(sdf.format(time));
		}
		return this;
	}
}
