package com.web.project.vo;

public class MakerProjectListVo {
	int id;
	String title;
	String startTime;
	String endTime;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStartTime(){
		return startTime;
	}

	public void setStartTime(String startTime){
		this.startTime=startTime;
	}
	
	public String getEndTime(){
		return endTime;
	}

	public void setEndTime(String endTime){
		this.endTime=endTime;
	}
}
