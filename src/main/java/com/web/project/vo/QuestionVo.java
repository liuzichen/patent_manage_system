package com.web.project.vo;

import java.text.SimpleDateFormat;

import com.web.project.model.Question;

public class QuestionVo {
	int id;
	int askerId;
	int expertId;
	String title;
	String content;
	String answer;
	boolean isAnswered;
	String askTime;
	String answerTime;
	String area;

	public int getId() {
		return id;
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

	public QuestionVo transfer(Question question){		
		this.setId(question.getId());
		this.setAskerId(question.getAskerId());
		this.setExpertId(question.getExpertId());
		this.setTitle(question.getTitle());
		this.setContent(question.getContent());
		this.setAnswer(question.getAnswer());
		this.isAnswered=question.isAnswered();
		this.setArea(question.getArea());
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
