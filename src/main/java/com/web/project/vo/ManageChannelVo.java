package com.web.project.vo;

import com.web.project.model.BackManage.Channel;
import com.web.project.model.BackManage.Department;

public class ManageChannelVo {


	int channelid;
	String part1;
	String part2;
	public int getChannelid() {
		return channelid;
	}
	public void setChannelid(int channelid) {
		this.channelid = channelid;
	}
	public String getPart1() {
		return part1;
	}
	public void setPart1(String part1) {
		this.part1 = part1;
	}
	public String getPart2() {
		return part2;
	}
	public void setPart2(String part2) {
		this.part2 = part2;
	}


	public ManageChannelVo transfer(Channel m){
		
		this.setChannelid(m.getChannelid());
		this.setPart1(m.getPart1());
		this.setPart2(m.getPart2());
		
		return this;
		
	}
	

}
