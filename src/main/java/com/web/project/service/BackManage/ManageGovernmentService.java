package com.web.project.service.BackManage;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.ManageGovernmentInfoDao;
import com.web.project.model.BackManage.Government;


@Service
public class ManageGovernmentService {

	@Autowired
	private ManageGovernmentInfoDao governmentinfoDao;

	public ArrayList<Government> getGovernmentInfoList() {

		return governmentinfoDao.getGovernmentInfoList();
	}

	public Government getGovernmentInfoById(int id) {
		return governmentinfoDao.getGovernmentInfoById(id);
	}
	
	public ArrayList<Government> getGovernmentInfoByName(String Name) { 
		return governmentinfoDao.getGovernmentInfoByName(Name);
	}
	
	public void updateGoverInfo(int id,String contactpeople,String phone,String  email,String address, String postcode){
		governmentinfoDao.updateGoverInfo( id,contactpeople,phone, email,address, postcode);
	}
}
