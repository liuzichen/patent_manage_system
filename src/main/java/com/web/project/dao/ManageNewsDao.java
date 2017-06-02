package com.web.project.dao;
/**
 * 
 */

import java.util.ArrayList;

import com.web.project.model.BackManage.News;

/**
 * @author 瀛愭櫒
 * 
 *         閽堝绯荤粺鍙戝竷鐨勬秷鎭� */
public interface ManageNewsDao {
	
	public ArrayList<News> getNewsByType(String name);
	
	public ArrayList<News> getNewsInfo();
	
	public News getNewsDetailById(int id);
	
	public void insertNewsInfo(String title ,String type, Long  time, String fujianType, String fujianName,String content);
	
	public void deleteNewsInfoById(ArrayList<Integer> id);
}

