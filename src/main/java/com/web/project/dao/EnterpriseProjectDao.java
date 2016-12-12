/**
 * 
 */
package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.enterprise.EnterpriseProject;

/**
 * @author 子晨
 * 
 */
public interface EnterpriseProjectDao {

	public ArrayList<EnterpriseProject> getEnterpriseProjectsByState(String state);

	public EnterpriseProject getEnterpriseProjectDetail(int id);
}
