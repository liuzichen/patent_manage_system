package com.web.project.service.relationship;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.QuestionDao;
import com.web.project.model.Question;

@Service
public class QuestionService {

	@Autowired
	private QuestionDao questionDao;

	public Question getQuestionById(int id) {
		return questionDao.getQuestionById(id);
	}

	public ArrayList<Question> getQuestionByExpertID(int id) {
		return questionDao.getQuestionByExpertID(id);
	}

	public void addResponse(int id, boolean isanswered, String answer,
			Long answerTime) {
		questionDao.addResponse(id, isanswered, answer, answerTime);
	}
	
	public ArrayList<Question> getQuestionsByUserId(int id,String type){
		return questionDao.getQuestionsByUserId(id, type);
	}
	
	public void insertQuestion(Question question){
		questionDao.insertQuestion(question);
	}
}
