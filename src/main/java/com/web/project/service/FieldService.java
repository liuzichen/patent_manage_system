/**
 * 
 */
package com.web.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.FieldDao;
import com.web.project.model.Field;

/**
 * @author Administrator
 *
 */
@Service
public class FieldService {
	@Autowired
	private FieldDao fieldDao;
	public ArrayList<Field> getField(){
		return fieldDao.getField();
	}
}
