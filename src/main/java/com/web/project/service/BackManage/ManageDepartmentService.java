/**
 * 
 */
package com.web.project.service.BackManage;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.ManageDepartmentDao;
import com.web.project.model.BackManage.Department;


/**
 * @author Administrator
 *
 */
@Service
public class ManageDepartmentService {
	@Autowired
	private  ManageDepartmentDao departmentDao;
	public ArrayList<Department> getDepartment(){
		return departmentDao.getDepartment();
	}
	
	public void insertDepartmentInfo(String name, int level,int cluster,int parent){
		departmentDao.insertDepartmentInfo(name,level,cluster, parent);
	}
	
	public void deleteDepartmentInfoById(ArrayList<Integer> id){
		departmentDao.deleteDepartmentInfoById(id);
	}
}
