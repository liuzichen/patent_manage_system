package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.BackManage.Maker;

public interface ManageMakerInfoDao {
	
	public ArrayList<Maker> getMakerInfoList();
	
	public Maker getMakerInfoById(int id);
	
	public ArrayList<Maker> getMakerInfoByName(String name);
	
	public void deleteMakerInfoById(ArrayList<Integer> makerID);
	
	public void insertMakerInfo(String loginName ,String team,String  address,String  teamIntro, String field1, String field2,String phone, String email,String achievement);

}
