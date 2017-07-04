package com.web.project.service.BackManage;
/**
 * 
 */


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.ManageNewsDao;
import com.web.project.model.BackManage.News;

/**
 * @author 子晨
 *
 */
@Service
public class ManageNewsService {
	@Autowired
	ManageNewsDao newsDao;
	
	public ArrayList<News> getNewsByType(String name){
		return newsDao.getNewsByType(name);
	}
	
	public News getNewsDetailById(int id){
		return newsDao.getNewsDetailById(id);
	}
	
	public ArrayList<News> getNewsInfo(){ 
		return newsDao.getNewsInfo();
	}
	
	public void insertNewsInfo(String title ,String type, Long  time,byte [] fujian, String fujianType, String fujianName,String content){
		newsDao.insertNewsInfo(title ,type, time,fujian, fujianType, fujianName,content);
	}
	
	public void deleteNewsInfoById(ArrayList<Integer> id){
		newsDao.deleteNewsInfoById(id);
	}

}
