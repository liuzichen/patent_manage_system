/**
 * 
 */
package com.web.project.service.maker;

import java.util.ArrayList;

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
}
