package com.web.project.service.BackManage;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.CommentDao;
import com.web.project.dao.ManageEnterpriseDao;
import com.web.project.model.BackManage.ManageEnterprise;

@Service
public class ManageEnterpriseService {

	@Autowired
	private ManageEnterpriseDao manageEnterpriseDao;

	public ArrayList<ManageEnterprise> getManageEnterpriseList() {

		return manageEnterpriseDao.getManageEnterpriseList();
	}

	public ArrayList<ManageEnterprise> getEnterpriseNameList(String name) {

		return manageEnterpriseDao.getEnterpriseNameList(name);
	}
	
	public ManageEnterprise getManageEnterpriseById(int id) { 
		return manageEnterpriseDao.getManageEnterpriseById(id);
	}
	
	public void  insertEnterpriseInfo(String name ,String legalPerson, String registrationTime,String registrationMoney,String applyType,String  cellPhone,String  channel1,String channel2,String  email,String  loginName,String postcode){
		manageEnterpriseDao. insertEnterpriseInfo(name ,legalPerson, registrationTime,registrationMoney,applyType, cellPhone, channel1,channel2, email, loginName,postcode);
	}
	
	public void deleteEnterpriseInfoById(ArrayList<Integer> id){
		manageEnterpriseDao.deleteEnterpriseInfoById(id);
	}
	

}
