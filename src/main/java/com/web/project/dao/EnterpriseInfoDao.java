 /**
 * 
 */
package com.web.project.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
	
	public String getEnterpriseNamebyId(int id);

	public EnterpriseFinance getEnterpriseFinanceByIdAndYear(int enterpriseId,int year);
	
	public EnterpriseProInvestmentBudget getEnterpriseProInvestmentBudgetByProIdAndType(int projectId,int type);
	
	public EnterpriseExcuPerson getProjectLeader(int projectId);
	
	public ArrayList<EnterpriseExcuPerson> getProjectMembers(int projectId);
	
	public ArrayList<EnterpriseCorporator> getEnterpriseCorporators(int projectId);
	
	public ArrayList<EnterpriseProjectEquipment> getProjectEquipments(int projectId);
	
	public ArrayList<EnterpriseShareholder> getShareholders(int enterpriseId);
	
	public EnterprisePeopleInCharge getEnterprisePeopleInCharge(int enterpriseId);
	
	public void updateEnterpriseInfoById(Enterprise enterprise);
	
	public void insertEnterpriseShareholderByEnterpriseId(HashMap<String, List<EnterpriseShareholder>> enterpriseShareholder); 
	
	public void deleteEnterpriseShareholderByEnterpriseId(int id); 
	
	public void insertEnterprisePeopleinCharge(EnterprisePeopleInCharge enterprisePeopleInCharge);
	
	public void deleteEnterprisePeopleinChargeByEnterpriseId(int id);
	
	public int getEnterprisePeopleInChargeNumber(int id);
	
	public void insertEnterpriseFinanceById(HashMap<String, List<EnterpriseFinance>> enterpriseFinance);
	
	public int getEnterpriseFinanceNumber(int id);
	
	public void deleteEnterpriseFinanceById(int id);
	
	public void insertEnterpriseProjectExuPeople(HashMap<String, List<EnterpriseExcuPerson>> exuPersonMap);
	
	public void deleteEnterpriseExcuPersonById(int id);
	
	public void insertEnterpriseProInvestBudget(HashMap<String, List<EnterpriseProInvestmentBudget>> budgetMap);
	
	public void deleteEnterpriseProInvestBudgetByProjectId(int id);
	
	public void insertEnterpriseEquipment(HashMap<String, List<EnterpriseProjectEquipment>> equipmentMap);
	
	public void deleteEnterpriseProjectEquipmentByProjectId(int id);
	
	public void insertEnterpriseCorporator(HashMap<String, List<EnterpriseCorporator>> corporatorMap);
	
	public void deleteEnterpriseCorporators(int id);
}
