/**
 * 
 */
package com.web.project.service.enterprise;

import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;

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
import com.web.project.model.expert.ExpertInfo;

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
	
	public ArrayList<EnterpriseCorporator> getEnterpriseCorporators(int projectId){
		return enterpriseInfoDao.getEnterpriseCorporators(projectId);
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

	public void updateEnterpriseInfoById(Enterprise enterprise){
		enterpriseInfoDao.updateEnterpriseInfoById(enterprise);
	}
	
	public void insertEnterpriseShareholderByEnterpriseId(HashMap<String, List<EnterpriseShareholder>> enterpriseShareholder){
		enterpriseInfoDao.insertEnterpriseShareholderByEnterpriseId(enterpriseShareholder);
	}
	
	public void deleteEnterpriseShareholderByEnterpriseId(int id){
		enterpriseInfoDao.deleteEnterpriseShareholderByEnterpriseId(id);
	}
	
	public void insertEnterprisePeopleinCharge(EnterprisePeopleInCharge enterprisePeopleInCharge){
		enterpriseInfoDao.insertEnterprisePeopleinCharge(enterprisePeopleInCharge);
	}
	
	public void deleteEnterprisePeopleinChargeByEnterpriseId(int id){
		enterpriseInfoDao.deleteEnterprisePeopleinChargeByEnterpriseId(id);
	} 

	public int getEnterprisePeopleInChargeNumber(int id){
		return enterpriseInfoDao.getEnterprisePeopleInChargeNumber(id);
	}
	
	public void insertEnterpriseFinanceById(HashMap<String, List<EnterpriseFinance>> enterpriseFinance){
		enterpriseInfoDao.insertEnterpriseFinanceById(enterpriseFinance);
	}
	
	public int getEnterpriseFinanceNumber(int id){
		return enterpriseInfoDao.getEnterpriseFinanceNumber(id);
	}
	
	public void deleteEnterpriseFinanceById(int id){
		enterpriseInfoDao.deleteEnterpriseFinanceById(id);
	}
	
	public void insertEnterpriseProjectExuPeople(HashMap<String, List<EnterpriseExcuPerson>> exuPersonMap){
		enterpriseInfoDao.insertEnterpriseProjectExuPeople(exuPersonMap);
	}
	
	public void deleteEnterpriseExcuPersonById(int id){
		enterpriseInfoDao.deleteEnterpriseExcuPersonById(id);
	}
	
	public void insertEnterpriseProBudget(HashMap<String, List<EnterpriseProInvestmentBudget>> budgetMap){
		enterpriseInfoDao.insertEnterpriseProInvestBudget(budgetMap);
	}
	
	public void deleteEnterpriseProInvestBudgetByProjectId(int id){
		enterpriseInfoDao.deleteEnterpriseProInvestBudgetByProjectId(id);
	}

	public void insertEnterpriseEquipment(HashMap<String, List<EnterpriseProjectEquipment>> equipmentMap){
		enterpriseInfoDao.insertEnterpriseEquipment(equipmentMap);
	}
	
	public void deleteEnterpriseProjectEquipmentByProjectId(int id){
		enterpriseInfoDao.deleteEnterpriseProjectEquipmentByProjectId(id);
	}
	
	public void insertEnterpriseCorporator(HashMap<String, List<EnterpriseCorporator>> corporatorMap){
		enterpriseInfoDao.insertEnterpriseCorporator(corporatorMap);
	}
	
	public void deleteEnterpriseCorporators(int id){
		enterpriseInfoDao.deleteEnterpriseCorporators(id);
	}
	public boolean isExist(String loginName, String passWord) {
		Enterprise info = enterpriseInfoDao.getInfoByLoginName(loginName);
		if (null == info) {
			return false;
		} else {
			if (info.getPassWord().equals(passWord))
				return true;
		}
		return false;
	}
	
	public Enterprise getEnterpriseInfoByLoginName(String loginName){
		return enterpriseInfoDao.getInfoByLoginName(loginName);
	}

}
