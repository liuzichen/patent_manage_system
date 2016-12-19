 /**
 * 
 */
package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.enterprise.Enterprise;
import com.web.project.model.enterprise.EnterpriseCorporator;
import com.web.project.model.enterprise.EnterpriseExcuPerson;
import com.web.project.model.enterprise.EnterpriseFinance;
import com.web.project.model.enterprise.EnterprisePeopleInCharge;
import com.web.project.model.enterprise.EnterpriseProInvestmentBudget;
import com.web.project.model.enterprise.EnterpriseProjectEquipment;
import com.web.project.model.enterprise.EnterpriseShareholder;

/**
 * @author 子晨
 *
 */
public interface EnterpriseInfoDao {
	
	public Enterprise getEnterpriseInfoById(int id);
	
	public String  getEnterpriseNamebyId(int id);

	public EnterpriseFinance getEnterpriseFinanceByIdAndYear(int enterpriseId,int year);
	
	public EnterpriseProInvestmentBudget getEnterpriseProInvestmentBudgetByProIdAndType(int projectId,int type);
	
	public EnterpriseExcuPerson getProjectLeader(int projectId);
	
	public ArrayList<EnterpriseExcuPerson> getProjectMembers(int projectId);
	
	public ArrayList<EnterpriseCorporator> getEnterpriseCorporators(int enterpriseId);
	
	public ArrayList<EnterpriseProjectEquipment> getProjectEquipments(int projectId);
	
	public ArrayList<EnterpriseShareholder> getShareholders(int enterpriseId);
	
	public EnterprisePeopleInCharge getEnterprisePeopleInCharge(int enterpriseId);
}
