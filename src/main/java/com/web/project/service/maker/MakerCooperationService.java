/**
 * 
 */
package com.web.project.service.maker;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.MakerCooperationDao;
import com.web.project.model.maker.MakerCooperation;


/**
 * @author Administrator
 * 
 */
@Service
public class MakerCooperationService {
	@Autowired
	private MakerCooperationDao makerCooperationDao;

	public ArrayList<MakerCooperation> getCooperationList(String sort, String order) {

		return makerCooperationDao.getCooperationList(sort, order);
	}

	public MakerCooperation getCooperationById(int id) {
		return makerCooperationDao.getCooperationById(id);
	}
}
