package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.BackManage.ExpertInfo;

public interface ManageExpertInfoDao {

	public ArrayList<ExpertInfo> getExpertList();
	
	public ArrayList<ExpertInfo> getExpertNameList(String name);
	
	public ExpertInfo getInfoById(int id);
	
	public void updateExpertInfo(int id);
	
	public void deleteExpertInfoById(ArrayList<Integer> id);
	
	public void insertExpertInfo(String name,int age, String company,String title,String major,String cellphone,String telephone,String email,String type,String achievement);
}
