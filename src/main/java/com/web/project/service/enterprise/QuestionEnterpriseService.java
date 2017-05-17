package com.web.project.service.enterprise;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.QuestionEnterpriseDao;
import com.web.project.model.enterprise.QuestionEnterprise;


@Service
public class QuestionEnterpriseService {
	@Autowired
	QuestionEnterpriseDao questionenterpriseDao;

	public ArrayList<QuestionEnterprise> getQuestionByEnterpriseID(
			int enterpriseid) {
		// TODO Auto-generated method stub
		return questionenterpriseDao.getQuestionByEnterpriseID(enterpriseid);
	}

	public QuestionEnterprise getAnswerbyID(int id) {
		// TODO Auto-generated method stub
		return questionenterpriseDao.getAnswerbyID(id);
	}

	public void savenewQuestion(QuestionEnterprise qe) {
		// TODO Auto-generated method stub
		questionenterpriseDao.savenewQuestion(qe);
	}


}
