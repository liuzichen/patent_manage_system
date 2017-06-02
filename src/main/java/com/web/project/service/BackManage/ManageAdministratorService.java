package com.web.project.service.BackManage;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.ManageAdministratorDao;
import com.web.project.model.BackManage.AdministratorInfo;


@Service
public class ManageAdministratorService {
	@Autowired
	
	ManageAdministratorDao administratorInfoDao;
	
	public ArrayList<AdministratorInfo> getAdministratorList(){
		return administratorInfoDao.getAdministratorList();
	}
	
	public AdministratorInfo getInfoByLoginName(String name){
		return administratorInfoDao.getInfoByLoginName(name);
	}
	
	public void deleteAdministratorInfoById(ArrayList<Integer> AdministratorID){
		administratorInfoDao.deleteAdministratorInfoById(AdministratorID);
	}
	
	public void insertAdministratorInfo(String name, String password,int roleID){
		administratorInfoDao.insertAdministratorInfo(name, password, roleID);
	}
	
	public boolean isExist(String loginName, String passWord){
	    AdministratorInfo administratorInfo=administratorInfoDao.getInfoByLoginName(loginName);
		if(administratorInfo==null){
			return false;
		}
		else{
			if(administratorInfo.getPassword().equals(passWord)){
				return true;
			}
		}
		return false;
	}

}
