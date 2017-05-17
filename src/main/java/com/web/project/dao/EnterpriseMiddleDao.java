package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.enterprise.EnterpriseMiddleInformation;
import com.web.project.model.enterprise.EnterpriseMiddleOpinion;
import com.web.project.model.enterprise.EnterpriseMiddleTitle;

public interface EnterpriseMiddleDao {

	ArrayList<EnterpriseMiddleTitle> getEnterpriseMiddleTitleByEnterprise(int id);

	EnterpriseMiddleTitle getEnterpriseMiddleTitleByID(int id);

	EnterpriseMiddleInformation getEnterpriseMiddleInfoByID(int id);

	EnterpriseMiddleOpinion getEnterpriseMiddleOpinionByID(int id);

	void saveenterprisemiddleTitle(EnterpriseMiddleTitle emt);

	void saveenterprisemiddleInformation(EnterpriseMiddleInformation emi);

}
