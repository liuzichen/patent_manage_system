/**
 * 
 */
package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.maker.MakerCooperation;

/**
 * @author Administrator
 * 
 */
public interface MakerCooperationDao {
	public ArrayList<MakerCooperation> getCooperationList(String sort, String order);

	public MakerCooperation getCooperationById(int id);
}
