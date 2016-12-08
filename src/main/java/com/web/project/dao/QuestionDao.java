package com.web.project.dao;


import java.util.ArrayList;

import com.web.project.model.Question;

public interface QuestionDao {

	public Question getQuestionById(int id);
	
	public ArrayList<Question> getQuestionByExpertID(int id);
	
	public void addResponse(int id,boolean isanswered,String answer,Long answerTime);
}
