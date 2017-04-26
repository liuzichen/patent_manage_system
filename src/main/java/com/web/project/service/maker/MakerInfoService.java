/**
 * 
 */
package com.web.project.service.maker;

import java.util.ArrayList;

import javax.swing.border.EtchedBorder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.MakerInfoDao;
import com.web.project.model.maker.MakerInfo;

/**
 * @author Administrator
 *
 */
@Service
public class MakerInfoService {
	@Autowired
	private MakerInfoDao makerInfoDao;

	public ArrayList<MakerInfo> getMakerList() {
		return makerInfoDao.getMakerList();
	}

	public MakerInfo getMakerInfoById(int id) {
		return makerInfoDao.getMakerInfoById(id);
	}

	public void updateMakerInfoById(MakerInfo detail) {
		 makerInfoDao.updateMakerInfoById(detail);
	}
	
	public MakerInfo getMakerInfoByLoginName(String loginName) {
		return makerInfoDao.getInfoByLoginName(loginName);
	}
	
	public boolean isExist(String loginName, String passWord){
		MakerInfo makerInfo=makerInfoDao.getInfoByLoginName(loginName);
		if(makerInfo==null){
			return false;
		}
		else{
			if(makerInfo.getPassword().equals(passWord)){
				return true;
			}
		}
		return false;
	}
	
	public void insertMakerInfo(MakerInfo makerInfo){
		makerInfoDao.insertMakerInfo(makerInfo);
	}
}
