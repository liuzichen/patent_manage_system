package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.BackManage.Major;



public interface MajorDao {
	
	public ArrayList<Major> getMajorByName();
	
	public void insertMajorInfo(String name );
	
	public void deleteMajorInfoById(ArrayList<Integer> majorID);
	

}
