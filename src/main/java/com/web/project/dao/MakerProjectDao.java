package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.maker.MakerProject;

public interface MakerProjectDao {

	public ArrayList<MakerProject> getProjectList();
	
	public MakerProject getProjectById(int id);
}
