/**
 * 
 */
package com.web.project.service.BackManage;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.ManageChannelDao;
import com.web.project.model.BackManage.Channel;
import com.web.project.model.BackManage.Department;


/**
 * @author Administrator
 *
 */
@Service
public class ManageChannelService {
	@Autowired
	private  ManageChannelDao channelDao;
	public ArrayList<Channel> getChannel(String channel){
		return channelDao.getChannel(channel);
	}
	
}
