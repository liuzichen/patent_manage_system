/**
 * 
 */
package com.web.project.service.maker;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.MakerWorksDao;
import com.web.project.model.maker.MakerWorks;

/**
 * @author 子晨
 *
 */
@Service
public class MakerWorksService {
	
	@Autowired
	MakerWorksDao makerWorksDao;
	
	public ArrayList<MakerWorks> getMakerWorksList(){
		return makerWorksDao.getMakerWorksList();
	}
	
	public MakerWorks getMakerWorksDetailById(int id) {
		return makerWorksDao.getMakerWorksDetailById(id);
	}
	
	public void updateMakerWorkInfo(String problems,String evaluation,Long time,boolean flag,int id){
		makerWorksDao.updateMakerWorkInfo(problems, evaluation, time, flag, id);
	}
	
	public ArrayList<MakerWorks> getMakerWorksListByUser(int id){
		return makerWorksDao.getMakerWorksListByUser(id);
	}
	
	public void insertMakerWork(MakerWorks makerWorks){
		makerWorksDao.insertMakerWork(makerWorks);
	}

}
