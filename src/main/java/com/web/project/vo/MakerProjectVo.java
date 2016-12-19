/**
 * 
 */
package com.web.project.vo;

import com.web.project.model.maker.MakerProject;
/**
 * @author Administrator
 *
 */
public class MakerProjectVo {
	int id;
	String title;
	String startTime;
	String endTime;
	String description;
	byte[] attachment;
	String attachmentName;
	String attachmentType;
	
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
	
	public String getDescription(){
		return description;
	}
	
	public void setDescription(String description){
		this.description=description;
	}
	
	public byte[] getAttachment(){
		return attachment;
	}
	
	public void setAttachment(byte[] attachment){
		this.attachment=attachment;
	}
	
	public String getAttachmentName(){
		return attachmentName;
	}
	
	public void setAttachmentName(String attachmentName){
		this.attachmentName=attachmentName;
	}
	
	public String getAttachmentType(){
		return attachmentType;
	}
	
	public void setAttachmentType(String attachmentType){
		this.attachmentType=attachmentType;
	}
	
	public MakerProjectVo transfer(MakerProject makerProject){
		this.setId(makerProject.getId());
		this.setTitle(makerProject.getTitle());
		this.setStartTime(makerProject.getStartTime().substring(0,10));
		this.setEndTime(makerProject.getEndTime().substring(0,10));
		this.setDescription(makerProject.getDescription());
		this.setAttachment(makerProject.getAttachment());
		this.setAttachmentName(makerProject.getAttachmentName());
		this.setAttachmentType(makerProject.getAttachmentType());
		return this;
	}
}
