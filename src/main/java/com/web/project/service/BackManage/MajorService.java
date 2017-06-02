package com.web.project.service.BackManage;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.MajorDao;
import com.web.project.model.BackManage.Major;




@Service
public class MajorService {
	@Autowired
	private MajorDao majorDao;
	
    public ArrayList<Major> getMajorByName(){
    	return majorDao.getMajorByName();
    	}
	public void insertMajorInfo(String name){
		majorDao.insertMajorInfo(name);
	}
	
	public void deleteMajorInfoById(ArrayList<Integer> majorID){
		majorDao.deleteMajorInfoById(majorID);
	}
}
