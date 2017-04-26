/**
 * 
 */
package com.web.project.service.expertService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.CommentDao;
import com.web.project.dao.EnterpriseProjectDao;
import com.web.project.dao.MakerCommonWorksDao;
import com.web.project.dao.MakerWorksDao;
import com.web.project.model.comment.EnterpriseComProjectComment;
import com.web.project.model.comment.EnterpriseProjectComment;
import com.web.project.model.comment.MakerComWorksComment;
import com.web.project.model.comment.MakerWorksComment;
import com.web.project.model.enterprise.EnterpriseCommonProject;
import com.web.project.model.enterprise.EnterpriseProject;
import com.web.project.model.maker.MakerCommonWorks;
import com.web.project.model.maker.MakerWorks;

/**
 * @author 子晨
 *
 */
@Service
public class CommentService {
	
	@Autowired
	CommentDao commentDao;
	
	@Autowired
	MakerCommonWorksDao makerCommonWorksDao;

	@Autowired
	EnterpriseProjectDao enterpriseProjectDao;
	
	@Autowired
	MakerWorksDao makerWorksDao;
	
	public ArrayList<MakerCommonWorks> getMakerCommonWorksByExpertId(int expertId){
		List<Integer> workIds = commentDao.getMakercommonworksIdByExpertId(expertId);
		ArrayList<MakerCommonWorks> makerCommonWorks = new ArrayList<>();
		for(int i=0;i<workIds.size();i++){
			makerCommonWorks.add(makerCommonWorksDao.getMakerCommonWorksDetailById(workIds.get(i)));
		}
		return makerCommonWorks; 
	}
	
	public ArrayList<EnterpriseCommonProject> getEnterpriseCommonProjectsByExpertId(int expertId){
		List<Integer> projectIds = commentDao.getEnterpriseCommonProIdByExpertId(expertId);
		ArrayList<EnterpriseCommonProject> commonProjects = new ArrayList<>();
		for(int i=0;i<projectIds.size();i++){
			commonProjects.add(enterpriseProjectDao.getEnterpriseCommonProjectById(projectIds.get(i)));
		}
		return commonProjects; 
	}
	
	public ArrayList<EnterpriseProject> getEnterpriseProjectsByExpertId(int expertId, String type){
		List<Integer> projectIds = commentDao.getEnterpriseProIdByExpertId(expertId, type);
		ArrayList<EnterpriseProject> projects = new ArrayList<>();
		for(int i=0;i<projectIds.size();i++){
			projects.add(enterpriseProjectDao.getEnterpriseProjectDetail(projectIds.get(i)));
		}
		return projects; 
	}
	
	public ArrayList<MakerWorks> getMakerWorksByExpertId(int expertId){
		List<Integer> workIds = commentDao.getMakerWorksIdByExpertId(expertId);
		ArrayList<MakerWorks> works = new ArrayList<>();
		for(int i=0;i<workIds.size();i++){
			works.add(makerWorksDao.getMakerWorksDetailById(workIds.get(i)));
		}
		return works; 
	}
	
	public void commentMakercommonworks(MakerComWorksComment makerComWorksComment){
		commentDao.commentMakercommonworks(makerComWorksComment);
	}
	
	public void commentMakerworks(MakerWorksComment makerWorksComment){
		commentDao.commentMakerworks(makerWorksComment);
	}
	
    public void commentEnterComproject(EnterpriseComProjectComment enterpriseComProjectComment){
    	commentDao.commentEnterComproject(enterpriseComProjectComment);
    }
	
	public void commentEnterProject(EnterpriseProjectComment enterpriseProjectComment){
		commentDao.commentEnterProject(enterpriseProjectComment);
	}
	
	public MakerComWorksComment getComWorksComment(int expertId,int workId){
		return commentDao.getmakeComWorksComment(expertId, workId);
	}
	
	public MakerWorksComment getWorksComment(int expertId,int workId){
		return commentDao.getmakerWorksComment(expertId, workId);
	}
	
    public EnterpriseComProjectComment getEnterComProjectComment(int expertId,int projectId){
    	return commentDao.getEnterComProjectComment(expertId, projectId);
    }
	
	public EnterpriseProjectComment getEnterProjectComment(int expertId,int projectId,String type){
		return commentDao.getEnterProjectComment(expertId, projectId, type);
	}
}
