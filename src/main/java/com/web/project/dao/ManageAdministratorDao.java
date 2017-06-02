package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.BackManage.AdministratorInfo;

public interface ManageAdministratorDao {
	
	public ArrayList<AdministratorInfo> getAdministratorList();
	
	public void deleteAdministratorInfoById(ArrayList<Integer> AdministratorID);
	
	public void insertAdministratorInfo(String name, String password,int roleID);
	
	public AdministratorInfo getInfoByLoginName(String name);

}
