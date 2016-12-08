package com.web.project.service.expertService;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.ExpertInfoDao;
import com.web.project.model.expert.ExpertInfo;

@Service
public class ExpertInfoService {

	@Autowired
	private ExpertInfoDao expertInfoDao;
	
	public ArrayList<ExpertInfo> getExpertList(){
		return expertInfoDao.getExpertList();
	}
	
}
