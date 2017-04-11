/**
 * 
 */
package com.web.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.RePasswordDao;

/**
 * @author 子晨
 *
 */
@Service
public class RePasswordService {
	
	@Autowired
	RePasswordDao rePasswordDao;
	
	public void rePassword(int id, String password, String table){	
		rePasswordDao.rePassword(id,"'"+ password+"'",table);	
	}

}
