/**
 * 
 */
package com.web.project.service.expertService;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.CommentDao;
import com.web.project.model.comment.MakerComWorksComment;

/**
 * @author 子晨
 *
 */
@Service
public class CommentService {
	@Autowired
	CommentDao commentDao;
	
	public ArrayList<MakerComWorksComment> getMakerComWorksCommentsByWorkId(int id){
		return commentDao.getMakerComWorksCommentsByWorkId(id);
	}
	
	public void insertMakerComWorksCommentList(ArrayList<MakerComWorksComment> makerComWorksComments){
		commentDao.insertMakerComWorksCommentList(makerComWorksComments);
	}
	
	public int insertMakerComWorksComment(MakerComWorksComment makerComWorksComment){
		return commentDao.insertMakerComWorksComment(makerComWorksComment);
	}
	
}
