/**
 * 
 */
package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.maker.MakerWorks;

/**
 * @author 子晨
 *
 */
public interface MakerWorksDao {
	
	public ArrayList<MakerWorks> getMakerWorksList();
	
	public MakerWorks getMakerWorksDetailById(int id);
	
	public void updateMakerWorkInfo(String problems,String evaluation,Long time,boolean flag,int id);
	
	public ArrayList<MakerWorks> getMakerWorksListByUser(int id);
	
	public void insertMakerWork(MakerWorks makerWorks);
}
