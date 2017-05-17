package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.enterprise.EnterpriseHalfyearInformation;
import com.web.project.model.enterprise.EnterpriseHalfyearTitle;
import com.web.project.model.enterprise.EnterpriseMiddleInformation;
import com.web.project.model.enterprise.EnterpriseMiddleOpinion;
import com.web.project.model.enterprise.EnterpriseMiddleTitle;

public interface EnterpriseHalfyearDao {

	EnterpriseHalfyearInformation getEnterpriseHalfyearInfoByID(int id);

	EnterpriseHalfyearTitle getEnterpriseHalfyearTitleByID(int id);

	ArrayList<EnterpriseHalfyearTitle> getEnterpriseHalfyearTitleByEnterprise(
			int enterpriseid);

	void saveenterprisehalfyearTitle(EnterpriseHalfyearTitle eht);

	void saveenterprisehalfyearInformation(EnterpriseHalfyearInformation ehi);



}
