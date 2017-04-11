/**
 * 
 */
package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.maker.MakerCommonWorks;
/**
 * @author Administrator
 *
 */
public interface MakerCommonWorksDao {
	public ArrayList<MakerCommonWorks> getMakerCommonWorksList();

	public MakerCommonWorks getMakerCommonWorksDetailById(int id);

	public ArrayList<MakerCommonWorks> getMakerCommonWorksListByUser(int id);
	
	public void insertMakerCommonWork(MakerCommonWorks makerCommonWorks);
}
