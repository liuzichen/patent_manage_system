package com.web.project.service.relationship;
/**
 * 
 */


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.NewsDao;
import com.web.project.model.News;

/**
 * @author 子晨
 *
 */
@Service
public class NewsService {
	@Autowired
	NewsDao newsDao;
	
	public ArrayList<News> getNewsByType(String name){
		return newsDao.getNewsByType(name);
	}
	
	public News getNewsDetailById(int id){
		return newsDao.getNewsDetailById(id);
	}

}
