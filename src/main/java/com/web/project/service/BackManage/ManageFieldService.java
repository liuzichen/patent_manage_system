/**
 * 
 */
package com.web.project.service.BackManage;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.ManageFieldDao;
import com.web.project.model.BackManage.Field;


/**
 * @author Administrator
 *
 */
@Service
public class ManageFieldService {
	@Autowired
	private  ManageFieldDao fieldDao;
	public  ArrayList<Field> getField(){
		return fieldDao.getField();
	}
	
	public void insertFieldInfo(String name){
		fieldDao.insertFieldInfo(name);
	}
	
	public void deleteFieldInfoById(ArrayList<Integer> fieldID){
		fieldDao.deleteFieldInfoById(fieldID);
	}
}
