package com.web.project.service.enterprise;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.EnterpriseProjectDao;
import com.web.project.dao.ProjectCheckDao;
import com.web.project.model.enterprise.ProjectCheckBudget;
import com.web.project.model.enterprise.ProjectCheckForm;
import com.web.project.model.enterprise.ProjectCheckInfo;
@Service
public class ProjectCheckService {
	@Autowired
	ProjectCheckDao ProjectCheckDao;

	public ArrayList<ProjectCheckForm> getProjectFormsByEnterpriseID(
			int id) {
		return ProjectCheckDao.getProjectFormsByEnterpriseID(id);
	}

	public ProjectCheckForm getprojectcheckformByID(int id) {
		// TODO Auto-generated method stub
		return ProjectCheckDao.getprojectcheckformByID(id);
	}

	public ProjectCheckInfo getprojectcheckinfoByID(int id) {
		// TODO Auto-generated method stub
		return ProjectCheckDao.getprojectcheckinfoByID(id);
	}

	public ProjectCheckBudget getprojectcheckbudgetByID(int id) {
		// TODO Auto-generated method stub
		return ProjectCheckDao.getprojectcheckbudgetByID(id);
	}

	public void saveProjectCheckForm(ProjectCheckForm pcf) {
		// TODO Auto-generated method stub
		ProjectCheckDao.saveProjectCheckForm(pcf);
	}

	public void saveProjectCheckInfo(ProjectCheckInfo pci) {
		// TODO Auto-generated method stub
		ProjectCheckDao.saveProjectCheckInfo(pci);
	}

	public void saveProjectCheckBudget(ProjectCheckBudget pcb) {
		// TODO Auto-generated method stub
		ProjectCheckDao.saveProjectCheckBudget(pcb);
	}
}
