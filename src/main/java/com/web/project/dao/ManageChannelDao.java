/**
 * 
 */
package com.web.project.dao;

import java.util.ArrayList;

import com.web.project.model.BackManage.Channel;




/**
 * @author Administrator
 * 
 */
public interface ManageChannelDao {
	
	public ArrayList<Channel> getChannel(String channel);
	

}
