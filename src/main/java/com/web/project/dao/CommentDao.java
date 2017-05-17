/**
 * 
 */
package com.web.project.dao;

import java.util.List;
import com.web.project.model.comment.EnterpriseComProjectComment;
import com.web.project.model.comment.EnterpriseProjectComment;
import com.web.project.model.comment.MakerComWorksComment;
import com.web.project.model.comment.MakerWorksComment;
import com.web.project.model.maker.MakerWorks;
import java.util.ArrayList;
import com.web.project.model.comment.MakerComWorksComment;

/**
 * @author 子晨
 *
 */
public interface CommentDao {

	public ArrayList<MakerComWorksComment> getMakerComWorksCommentsByWorkId(int id);
	
	public void insertMakerComWorksCommentList(ArrayList<MakerComWorksComment> makerComWorksComments);
	
	public int insertMakerComWorksComment(MakerComWorksComment makerComWorksComment);

	public List<Integer> getMakercommonworksIdByExpertId(int expertId);
	
	public List<Integer> getEnterpriseCommonProIdByExpertId(int expertId);
	
	public List<Integer> getEnterpriseProIdByExpertId(int expertId ,String type);
	
	public List<Integer> getMakerWorksIdByExpertId(int expertId);
	
	public void commentMakercommonworks(MakerComWorksComment makerComWorksComment);
	
	public void commentMakerworks(MakerWorksComment makerWorksComment);
	
	public void commentEnterComproject(EnterpriseComProjectComment enterpriseComProjectComment);
	
	public void commentEnterProject(EnterpriseProjectComment enterpriseProjectComment);
	
	public MakerComWorksComment getmakeComWorksComment(int expertId,int workId);
	
	public MakerWorksComment getmakerWorksComment(int expertId,int workId);
	
	public EnterpriseComProjectComment getEnterComProjectComment(int expertId,int projectId);
	
	public EnterpriseProjectComment getEnterProjectComment(int expertId,int projectId,String type);
}
