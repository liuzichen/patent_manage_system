package com.web.project.service.enterprise;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.EnterpriseMiddleDao;
import com.web.project.model.enterprise.Enterprise;
import com.web.project.model.enterprise.EnterpriseHalfyearTitle;
import com.web.project.model.enterprise.EnterpriseMiddleInformation;
import com.web.project.model.enterprise.EnterpriseMiddleOpinion;
import com.web.project.model.enterprise.EnterpriseMiddleTitle;

@Service
public class EnterpriseMiddleService {
	@Autowired
	EnterpriseMiddleDao enterpriseMiddleDao;
    public ArrayList<EnterpriseMiddleTitle> getEnterpriseMiddleTitleByEnterprise(int id){
    	return enterpriseMiddleDao.getEnterpriseMiddleTitleByEnterprise(id);
    }
	public EnterpriseMiddleInformation getEnterpriseMiddleInfoByID(int id) {
		// TODO Auto-generated method stub
		return enterpriseMiddleDao.getEnterpriseMiddleInfoByID(id);
	}
	public EnterpriseMiddleTitle getEnterpriseMiddleTitleByID(int id) {
		// TODO Auto-generated method stub
		return enterpriseMiddleDao.getEnterpriseMiddleTitleByID(id);
	}
	public EnterpriseMiddleOpinion getEnterpriseMiddleOpinionByID(int id) {
		// TODO Auto-generated method stub
		return enterpriseMiddleDao.getEnterpriseMiddleOpinionByID(id);
	}
	public void saveenterprisemiddleTitle(EnterpriseMiddleTitle emt) {
		// TODO Auto-generated method stub
		enterpriseMiddleDao.saveenterprisemiddleTitle(emt);
	}
	public void saveenterprisemiddleInformation(EnterpriseMiddleInformation emi) {
		// TODO Auto-generated method stub
		enterpriseMiddleDao.saveenterprisemiddleInformation(emi);
	}

}
