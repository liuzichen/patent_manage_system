package com.web.project.model;

public class Question {

	int id;
	int askerId;
	int expertId;
	String title;
	String content;
	String answer;
	boolean isAnswered;
	Long askTime;
	Long answerTime;
	String area;
	String askertype;

	public int getId() {
		return id;
	}

	public boolean isAnswered() {
		return isAnswered;
	}

	public void setAnswered(boolean isAnswered) {
		this.isAnswered = isAnswered;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAskerId() {
		return askerId;
	}

	public void setAskerId(int askerId) {
		this.askerId = askerId;
	}

	public int getExpertId() {
		return expertId;
	}

	public void setExpertId(int expertId) {
		this.expertId = expertId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Long getAskTime() {
		return askTime;
	}

	public void setAskTime(Long askTime) {
		this.askTime = askTime;
	}

	public Long getAnswerTime() {
		return answerTime;
	}

	public void setAnswerTime(Long answerTime) {
		this.answerTime = answerTime;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getAskertype() {
		return askertype;
	}

	public void setAskertype(String askertype) {
		this.askertype = askertype;
	}

}
