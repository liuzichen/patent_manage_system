/**
 * 
 */
package com.web.project.service.enterprise;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.EnterpriseInfoDao;
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
@Service
public class EnterpriseInfoService {
	
	@Autowired
	EnterpriseInfoDao enterpriseInfoDao;
	
    public Enterprise getEnterpriseInfoById(int id){
    	return enterpriseInfoDao.getEnterpriseInfoById(id);
    }
	
	public String  getEnterpriseNamebyId(int id){
		return enterpriseInfoDao.getEnterpriseNamebyId(id);
	}
	
	public EnterpriseFinance getEnterpriseFinanceByIdAndYear(int enterpriseId,int year){
		return enterpriseInfoDao.getEnterpriseFinanceByIdAndYear(enterpriseId, year);
	}
	
	public EnterpriseProInvestmentBudget getEnterpriseProInvestmentBudgetByProIdAndType(int projectId,int type){
		return enterpriseInfoDao.getEnterpriseProInvestmentBudgetByProIdAndType(projectId, type);
	}
	
    public EnterpriseExcuPerson getProjectLeader(int projectId){
    	return enterpriseInfoDao.getProjectLeader(projectId);
    }
	
	public ArrayList<EnterpriseExcuPerson> getProjectMembers(int projectId){
		return enterpriseInfoDao.getProjectMembers(projectId);
	}
	
	public ArrayList<EnterpriseCorporator> getEnterpriseCorporators(int enterpriseId){
		return enterpriseInfoDao.getEnterpriseCorporators(enterpriseId);
	}
	
	public ArrayList<EnterpriseProjectEquipment> getProjectEquipments(int projectId){
		return enterpriseInfoDao.getProjectEquipments(projectId);
	}
	
	public ArrayList<EnterpriseShareholder> getShareholders(int enterpriseId){
		return enterpriseInfoDao.getShareholders(enterpriseId);
	}

	public EnterprisePeopleInCharge getEnterprisePeopleInCharge(int enterpriseId){
		return enterpriseInfoDao.getEnterprisePeopleInCharge(enterpriseId);
	}


}
