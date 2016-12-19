package com.web.project.model.maker;

public class MakerProject {
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
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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
}
