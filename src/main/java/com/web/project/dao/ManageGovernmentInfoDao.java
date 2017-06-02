package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.BackManage.Government;

public interface ManageGovernmentInfoDao {
	
	public ArrayList<Government> getGovernmentInfoList();
	
	public Government getGovernmentInfoById(int id);
	
	public ArrayList<Government> getGovernmentInfoByName(String Name);
	
	public void updateGoverInfo(int id,String contactpeople,String phone,String  email,String address, String postcode);

}
