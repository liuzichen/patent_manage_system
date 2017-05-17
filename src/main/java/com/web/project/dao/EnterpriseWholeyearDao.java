package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.enterprise.EnterpriseWholeyearInformation;
import com.web.project.model.enterprise.EnterpriseWholeyearTitle;
import com.web.project.model.enterprise.EnterpriseMiddleInformation;
import com.web.project.model.enterprise.EnterpriseMiddleOpinion;
import com.web.project.model.enterprise.EnterpriseMiddleTitle;

public interface EnterpriseWholeyearDao {

	EnterpriseWholeyearInformation getEnterpriseWholeyearInfoByID(int id);

	EnterpriseWholeyearTitle getEnterpriseWholeyearTitleByID(int id);

	ArrayList<EnterpriseWholeyearTitle> getEnterpriseWholeyearTitleByEnterprise(
			int enterpriseid);

	void saveenterprisewholeyearTitle(EnterpriseWholeyearTitle eht);

	void saveenterprisewholeyearInformation(EnterpriseWholeyearInformation ehi);



}
