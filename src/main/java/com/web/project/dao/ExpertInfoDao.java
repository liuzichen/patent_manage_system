package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.expert.ExpertInfo;

public interface ExpertInfoDao {

	public ArrayList<ExpertInfo> getExpertList();
	
	public ExpertInfo getInfoById(int id);
	
	public void updateExpertInfo(int id);
	
	public ArrayList<ExpertInfo> getExpertByField(String field);
}
