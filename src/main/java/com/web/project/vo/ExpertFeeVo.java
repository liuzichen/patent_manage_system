package com.web.project.vo;

import com.web.project.model.expert.ExpertFee;

public class ExpertFeeVo {
	int id;
	String commentType;
	int commentId;
	double fee;
	boolean isGive;
	String title;
	String field;
	String comment;
	String name;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
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
	public ExpertFeeVo transfer(ExpertFee ef) {
		
		this.setComment(ef.getComment());
		this.setCommentId(ef.getCommentId());
		this.setCommentType(ef.getCommentType());
		this.setFee(ef.getFee());
		this.setGive(ef.isGive());
		this.setId(ef.getId());
		this.setField(ef.getField());
		this.setTitle(ef.getTitle());
		this.setName(ef.getName());
		return this;		
	}
}
