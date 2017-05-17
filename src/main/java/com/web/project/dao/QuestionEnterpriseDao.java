package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.enterprise.QuestionEnterprise;

public interface QuestionEnterpriseDao {

	ArrayList<QuestionEnterprise> getQuestionByEnterpriseID(int enterpriseid);

	QuestionEnterprise getAnswerbyID(int id);

	void savenewQuestion(QuestionEnterprise qe);


}
