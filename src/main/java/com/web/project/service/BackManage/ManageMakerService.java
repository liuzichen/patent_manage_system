package com.web.project.service.BackManage;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.ManageMakerInfoDao;
import com.web.project.model.BackManage.Maker;


@Service
public class ManageMakerService {

	@Autowired
	private ManageMakerInfoDao makerinfoDao;

	public ArrayList<Maker> getMakerInfoList() {

		return makerinfoDao.getMakerInfoList();
	}

	public Maker getMakerInfoById(int id) {
		return makerinfoDao.getMakerInfoById(id);
	}
	
	public ArrayList<Maker> getMakerInfoByName(String name) {
		return makerinfoDao.getMakerInfoByName(name);
	}

	public void insertMakerInfo(String loginName ,String team,String  address,String  teamIntro, String field1, String field2,String phone, String email,String achievement){
		makerinfoDao.insertMakerInfo(loginName ,team, address, teamIntro, field1, field2,phone, email,achievement);
	}
	
	public void deleteMakerInfoById(ArrayList<Integer> makerID){
		makerinfoDao.deleteMakerInfoById(makerID);
	}
}
