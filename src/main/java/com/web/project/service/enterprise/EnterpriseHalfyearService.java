package com.web.project.service.enterprise;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.EnterpriseHalfyearDao;
import com.web.project.dao.EnterpriseMiddleDao;
import com.web.project.model.enterprise.Enterprise;
import com.web.project.model.enterprise.EnterpriseHalfyearInformation;
import com.web.project.model.enterprise.EnterpriseHalfyearTitle;
import com.web.project.model.enterprise.EnterpriseMiddleInformation;
import com.web.project.model.enterprise.EnterpriseMiddleOpinion;
import com.web.project.model.enterprise.EnterpriseMiddleTitle;

@Service
public class EnterpriseHalfyearService {
	@Autowired
	EnterpriseHalfyearDao enterpriseHalfyearDao;
	public EnterpriseHalfyearInformation getEnterpriseHalfyearInfoByID(
			int id) {
		return enterpriseHalfyearDao.getEnterpriseHalfyearInfoByID(id);
	}

	public EnterpriseHalfyearTitle getEnterpriseHalfyearTitleByID(int id) {
		return enterpriseHalfyearDao.getEnterpriseHalfyearTitleByID(id);
	}

	public ArrayList<EnterpriseHalfyearTitle> getEnterpriseHalfyearTitleByEnterprise(
			int enterpriseid) {
		return enterpriseHalfyearDao.getEnterpriseHalfyearTitleByEnterprise(enterpriseid);
	}

	public void saveenterprisehalfyearTitle(EnterpriseHalfyearTitle eht) {
		// TODO Auto-generated method stub
		enterpriseHalfyearDao.saveenterprisehalfyearTitle(eht);
	}

	public void saveenterprisehalfyearInformation(
			EnterpriseHalfyearInformation ehi) {
		// TODO Auto-generated method stub
		enterpriseHalfyearDao.saveenterprisehalfyearInformation(ehi);
	}

}
