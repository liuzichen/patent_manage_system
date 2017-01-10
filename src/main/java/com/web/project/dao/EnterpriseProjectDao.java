/**
 * 
 */
package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.enterprise.EnterpriseCommonProject;
import com.web.project.model.enterprise.EnterpriseProject;

/**
 * @author 子晨
 * 
 */
public interface EnterpriseProjectDao {

	public ArrayList<EnterpriseProject> getEnterpriseProjectsByState(String state);

	public EnterpriseProject getEnterpriseProjectDetail(int id);
	
	public ArrayList<EnterpriseCommonProject> getEnterpriseCommonProjectLists();
	
	public EnterpriseCommonProject getEnterpriseCommonProjectById(int id);
	
	public void updateEnterpriseCommonProject(int id,boolean isEvaluated,String evaluation,Long time);
	
	public void insertEnterpriseProject(EnterpriseProject project);
	
	public EnterpriseProject getUnSubmitEnterpriseProjectById(int id);
	
	public int getUnSubmitEnterpriseProjectNumber(int enterpriseId);
	
	public EnterpriseProject getUnSubmitEnterpriseProject(int id);
	
	public void  updateEnterpriseProjectById(EnterpriseProject project);
}
