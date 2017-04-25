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
	
	public ArrayList<MakerCommonWorks> getMakerCommonWorksListByTitle(String title);
	
	public ArrayList<MakerCommonWorks> getNoAssignedMakerCommonWorksList();
	
	public ArrayList<MakerCommonWorks> getMakerCommonWorksListByState(int state);
	
	public void updateEvaluationOfMakerCommonWork(MakerCommonWorks makerCommonWorksl);
	
	public void updateAssignOfMakerCommonWork(MakerCommonWorks makerCommonWorks);
}
