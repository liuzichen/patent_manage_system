
package com.web.project.vo;

import java.text.SimpleDateFormat;

import com.web.project.model.BackManage.News;

public class ManageNewsVo {
	int id;
	String title;
	String time;
	String type;
	String content;
	String fujianName;
	String fujianType;

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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFujianName() {
		return fujianName;
	}

	public void setFujianName(String fujianName) {
		this.fujianName = fujianName;
	}

	public String getFujianType() {
		return fujianType;
	}

	public void setFujianType(String fujianType) {
		this.fujianType = fujianType;
	}
	
	public ManageNewsVo transfer(News news){
		this.setId(news.getId());
		this.setTitle(news.getTitle());
		this.setType(news.getType());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Long time=news.getTime()*1000;
		this.setTime(sdf.format(time));
		this.setContent(news.getContent());
		this.setFujianName(news.getFujianName());
		this.setFujianType(news.getFujianType());
		return this;
	}

}
