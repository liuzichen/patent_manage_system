package com.web.project.service.BackManage;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.ManageExpertInfoDao;
import com.web.project.model.BackManage.ExpertInfo;


@Service
public class ManageExpertInfoService {

	@Autowired
	private ManageExpertInfoDao expertInfoDao;
	
	public ArrayList<ExpertInfo> getExpertList(){
		return expertInfoDao.getExpertList();
	}
	
	public ArrayList<ExpertInfo> getExpertNameList(String name){
		return expertInfoDao.getExpertNameList(name);
	}
	
	public ExpertInfo getInfoById(int id){
		return expertInfoDao.getInfoById(id);
	}
	
	public void updateExpertInfo(int id,String achievement) {
		expertInfoDao.updateExpertInfo(id);
	}
	
	public void insertExpertInfo(String name,int age, String company,String title,String major,String cellphone,String telephone,String email,String type,String achievement){
		expertInfoDao.insertExpertInfo(name,age, company, title, major, cellphone, telephone, email,type, achievement);
	}
	
	public void deleteExpertInfoById(ArrayList<Integer> id){
		expertInfoDao.deleteExpertInfoById(id);
	}
	
}
