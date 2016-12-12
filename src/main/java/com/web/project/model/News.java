/**
 * 
 */
package com.web.project.model;

/**
 * @author 子晨
 * 
 */
public class News {
	int id;
	String title;
	Long time;
	String type;
	String content;
	byte[] fujian;
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

	public Long getTime() {
		return time;
	}

	public void setTime(Long time) {
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

	public byte[] getFujian() {
		return fujian;
	}

	public void setFujian(byte[] fujian) {
		this.fujian = fujian;
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

}
