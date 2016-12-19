/**
 * 
 */
package com.web.project.service.makerService;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.MakerProjectDao;
import com.web.project.model.maker.MakerProject;

@Service
public class MakerProjectService {

	@Autowired
	private MakerProjectDao makerProjectDao;

	public ArrayList<MakerProject> getProjectList() {

		return makerProjectDao.getProjectList();
	}

	public MakerProject getProjectById(int id) {
		return makerProjectDao.getProjectById(id);
	}

}

