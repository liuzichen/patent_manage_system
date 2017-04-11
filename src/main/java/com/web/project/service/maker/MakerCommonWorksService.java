/**
 * 
 */
package com.web.project.service.maker;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.MakerCommonWorksDao;
import com.web.project.model.maker.MakerCommonWorks;
/**
 * @author Administrator
 *
 */
@Service
public class MakerCommonWorksService {
	@Autowired
	MakerCommonWorksDao makerCommonWorksDao;
	public ArrayList<MakerCommonWorks> getMakerCommonWorksList(){
		return makerCommonWorksDao.getMakerCommonWorksList();
	}
	public MakerCommonWorks getMakerCommonWorksDetailById(int id){
		return makerCommonWorksDao.getMakerCommonWorksDetailById(id);
	}
	public ArrayList<MakerCommonWorks> getMakerCommonWorksListByUser(int id){
		return makerCommonWorksDao.getMakerCommonWorksListByUser(id);
	}
	public void insertMakerCommonWork(MakerCommonWorks makerCommonWorks){
		makerCommonWorksDao.insertMakerCommonWork(makerCommonWorks);
	}
	
	public ArrayList<MakerCommonWorks> getMakerCommonWorksListByTitle(String title){
		return makerCommonWorksDao.getMakerCommonWorksListByTitle(title);
	}
}
