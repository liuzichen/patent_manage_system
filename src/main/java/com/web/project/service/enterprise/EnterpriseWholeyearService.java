package com.web.project.service.enterprise;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.EnterpriseWholeyearDao;
import com.web.project.dao.EnterpriseMiddleDao;
import com.web.project.model.enterprise.Enterprise;
import com.web.project.model.enterprise.EnterpriseWholeyearInformation;
import com.web.project.model.enterprise.EnterpriseWholeyearTitle;
import com.web.project.model.enterprise.EnterpriseMiddleInformation;
import com.web.project.model.enterprise.EnterpriseMiddleOpinion;
import com.web.project.model.enterprise.EnterpriseMiddleTitle;

@Service
public class EnterpriseWholeyearService {
	@Autowired
	EnterpriseWholeyearDao enterpriseWholeyearDao;
	public EnterpriseWholeyearInformation getEnterpriseWholeyearInfoByID(
			int id) {
		return enterpriseWholeyearDao.getEnterpriseWholeyearInfoByID(id);
	}

	public EnterpriseWholeyearTitle getEnterpriseWholeyearTitleByID(int id) {
		return enterpriseWholeyearDao.getEnterpriseWholeyearTitleByID(id);
	}

	public ArrayList<EnterpriseWholeyearTitle> getEnterpriseWholeyearTitleByEnterprise(
			int enterpriseid) {
		return enterpriseWholeyearDao.getEnterpriseWholeyearTitleByEnterprise(enterpriseid);
	}

	public void saveenterprisewholeyearTitle(EnterpriseWholeyearTitle eht) {
		// TODO Auto-generated method stub
		enterpriseWholeyearDao.saveenterprisewholeyearTitle(eht);
	}

	public void saveenterprisewholeyearInformation(
			EnterpriseWholeyearInformation ehi) {
		// TODO Auto-generated method stub
		enterpriseWholeyearDao.saveenterprisewholeyearInformation(ehi);
	}

}
