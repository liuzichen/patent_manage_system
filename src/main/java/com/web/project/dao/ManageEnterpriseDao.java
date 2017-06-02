package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.BackManage.ManageEnterprise;


public interface ManageEnterpriseDao {

	
	public ArrayList<ManageEnterprise> getManageEnterpriseList();
	
	public ArrayList<ManageEnterprise> getEnterpriseNameList(String name);
	
	public ManageEnterprise getManageEnterpriseById(int id);
	
	public void deleteEnterpriseInfoById(ArrayList<Integer> id);
	
	public void  insertEnterpriseInfo(String name ,String legalPerson, String registrationTime,String registrationMoney,String applyType,String  cellphone,String  channel1,String channel2,String  email,String  loginName,String postcode);
	
}
