/**
 * 
 */
package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.BackManage.Department;




/**
 * @author Administrator
 * 
 */
public interface ManageDepartmentDao {
	public ArrayList<Department> getDepartment();
	
	public void insertDepartmentInfo(String name, int level,int cluster,int parent );
	
	public void deleteDepartmentInfoById(ArrayList<Integer>id);
}
