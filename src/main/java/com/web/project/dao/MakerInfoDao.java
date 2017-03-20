/**
 * 
 */
package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.maker.MakerInfo;
/**
 * @author Administrator
 *
 */
public interface MakerInfoDao {
	public ArrayList<MakerInfo> getMakerList();

	public MakerInfo getMakerInfoById(int id);

	public void updateMakerInfoById(MakerInfo detail);
}
