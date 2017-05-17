package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.enterprise.EnterpriseHalfyearInformation;
import com.web.project.model.enterprise.EnterpriseHalfyearTitle;
import com.web.project.model.enterprise.ProjectCheckBudget;
import com.web.project.model.enterprise.ProjectCheckForm;
import com.web.project.model.enterprise.ProjectCheckInfo;

public interface ProjectCheckDao {

	ArrayList<ProjectCheckForm> getProjectFormsByEnterpriseID(int id);

	ProjectCheckForm getprojectcheckformByID(int id);

	ProjectCheckInfo getprojectcheckinfoByID(int id);

	ProjectCheckBudget getprojectcheckbudgetByID(int id);

	void saveProjectCheckForm(ProjectCheckForm pcf);

	void saveProjectCheckInfo(ProjectCheckInfo pci);

	void saveProjectCheckBudget(ProjectCheckBudget pcb);

	

}

