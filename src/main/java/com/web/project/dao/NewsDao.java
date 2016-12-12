package com.web.project.dao;
/**
 * 
 */


import java.util.ArrayList;

import com.web.project.model.News;

/**
 * @author 子晨
 * 
 *         针对系统发布的消息
 */
public interface NewsDao {
	
	public ArrayList<News> getNewsByType(String name);
	
	public News getNewsDetailById(int id);
}
