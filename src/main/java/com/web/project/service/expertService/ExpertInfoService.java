package com.web.project.service.expertService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.ExpertInfoDao;
import com.web.project.model.expert.ExpertInfo;

@Service
public class ExpertInfoService {

	@Autowired
	private ExpertInfoDao expertInfoDao;

	public ArrayList<ExpertInfo> getExpertList() {
		return expertInfoDao.getExpertList();
	}

	public ExpertInfo getInfoById(int id) {
		return expertInfoDao.getInfoById(id);
	}

	public void updateExpertInfo(int id, String achievement) {
		expertInfoDao.updateExpertInfo(id);
	}

	public boolean isExist(String loginName, String passWord) {
		ExpertInfo info = expertInfoDao.getInfoByLoginName(loginName);
		if (null == info) {
			return false;
		} else {
			if (info.getPassWord().equals(passWord))
				return true;
		}
		return false;
	}
	
	public ExpertInfo getExpertInfoByLoginName(String loginName){
		return expertInfoDao.getInfoByLoginName(loginName);
	}

}
