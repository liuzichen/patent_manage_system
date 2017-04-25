/**
 * 
 */
package com.web.project.dao;

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

}
