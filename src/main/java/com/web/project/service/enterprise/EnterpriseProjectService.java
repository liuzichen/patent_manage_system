/**
 * 
 */
package com.web.project.service.enterprise;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.EnterpriseProjectDao;
import com.web.project.model.enterprise.EnterpriseProject;

/**
 * @author 子晨
 *
 */
@Service
public class EnterpriseProjectService {
	
	@Autowired
	EnterpriseProjectDao enterpriseProjectDao;
	
	public ArrayList<EnterpriseProject> getEnterpriseProjectsByState(String state){
		return enterpriseProjectDao.getEnterpriseProjectsByState(state);
	}
	
	public EnterpriseProject getEnterpriseProjectDetail(int id){
		return enterpriseProjectDao.getEnterpriseProjectDetail(id);
	}

}
