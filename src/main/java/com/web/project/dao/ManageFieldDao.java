/**
 * 
 */
package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.BackManage.Field;


/**
 * @author Administrator
 * 
 */
public interface ManageFieldDao {
	public ArrayList<Field> getField();
	
	public void insertFieldInfo(String name );
	
	public void deleteFieldInfoById(ArrayList<Integer>fieldID);
}
