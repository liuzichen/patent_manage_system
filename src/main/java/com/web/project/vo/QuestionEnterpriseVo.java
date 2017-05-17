package com.web.project.vo;

import java.text.SimpleDateFormat;


import com.web.project.model.enterprise.QuestionEnterprise;

public class QuestionEnterpriseVo {
	int id;
	int enterpriseId;
	int expertId;
	String title;
	String content;
	String answer;
	String detail;
	boolean isAnswered;
	String askTime;
	String answerTime;
	String area;
	String state;
	
	
	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public int getEnterpriseId() {
		return enterpriseId;
	}

	public void setEnterpriseId(int enterpriseId) {
		this.enterpriseId = enterpriseId;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
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

	public boolean isAnswered() {
		return isAnswered;
	}

	public void setAnswered(boolean isAnswered) {
		this.isAnswered = isAnswered;
	}

	
	public String getAskTime() {
		return askTime;
	}

	public void setAskTime(String askTime) {
		this.askTime = askTime;
	}

	public String getAnswerTime() {
		return answerTime;
	}

	public void setAnswerTime(String answerTime) {
		this.answerTime = answerTime;
	}
      
	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public QuestionEnterpriseVo transfer(QuestionEnterprise question){		
		this.setId(question.getId());
		this.setEnterpriseId(question.getEnterpriseId());
		this.setExpertId(question.getExpertId());
		this.setTitle(question.getTitle());
		this.setContent(question.getContent());
		this.setAnswer(question.getAnswer());
		this.isAnswered=question.isAnswered();
		this.setArea(question.getArea());
		this.setDetail(question.getDetail());
		this.setState(question.getState());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Long time=question.getAskTime()*1000;
		String askTime=sdf.format(time);
		this.setAskTime(askTime);
		if(question.getAnswerTime()>0){	
			time=question.getAnswerTime()*1000;
			String answerTime= sdf.format(time);
			this.setAnswerTime(answerTime);
		}else{
			this.setAnswerTime("");
		}
		return this;
	}
}
