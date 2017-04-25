/**
 * 
 */
package com.web.project.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.naming.spi.DirStateFactory.Result;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONArray;

import com.web.project.model.Field;
import com.web.project.model.Question;
import com.web.project.service.FieldService;
import com.web.project.service.maker.MakerInfoService;
import com.web.project.service.relationship.QuestionService;
import com.web.project.vo.QuestionVo;
/**
 * @author Administrator
 *
 */
@RequestMapping("question")
@Controller
public class QuestionController {
	
	@Autowired
	QuestionService questionService;
	
	@Autowired
	FieldService fieldService;
	
	/**
	 * 获取用户问题列表
	 */
	@RequestMapping("myQuestionList")
	@ResponseBody
	public String getUserQuestionList(@RequestParam(value = "userId") int id,
			@RequestParam(value = "type") String type,
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize){
		ArrayList<Question> questions=questionService.getQuestionsByUserId(id, type);
		int start = (pageId - 1) * pageSize;
		int end = Math.min(questions.size(), start + pageSize);
		ArrayList<QuestionVo> questionVos=new ArrayList<QuestionVo>();
		for(int i=start;i<end;i++){
			QuestionVo questionVo=new QuestionVo();
			questionVo.transfer(questions.get(i));
			questionVos.add(questionVo);
		}
		
		HashMap hashMap = new HashMap();
		hashMap.put("total", questions.size());
		hashMap.put("rows", questionVos);
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		return result;
	}

	/**
	 * 获取QA详细信息
	 */
	@RequestMapping("myQADetail")
	public String getQuestionDetailById(@RequestParam(value="id")int id,
			ModelMap model){
		Question question=questionService.getQuestionById(id);
		QuestionVo questionVo=new QuestionVo();
		questionVo.transfer(question);
		model.put("detail", questionVo);
		return "enterprise/consultview";
	}
	
	/**
	 * 进入QA提交页面
	 */
	@RequestMapping("toAddQA")
	public String toInsertQA(ModelMap model){
		ArrayList<Field> fields=fieldService.getField();
		model.put("fieldList", fields);
		return "enterprise/consult";
	}
	
	/**
	 * 提交QA
	 */
	@RequestMapping("insertQA")
	public String InsertQA(
			@RequestParam(value="userid") int userId,
			@RequestParam(value="usertype") String usertype,
			@RequestParam(value="title") String title,
			@RequestParam(value="field") String field,
			@RequestParam(value="qDescription") String qDescription
			)throws UnsupportedEncodingException{
		usertype=new String(usertype.getBytes("iso-8859-1"), "utf-8");
		title=new String(title.getBytes("iso-8859-1"), "utf-8");
		field=new String(field.getBytes("iso-8859-1"), "utf-8");
		qDescription=new String(qDescription.getBytes("iso-8859-1"), "utf-8");
		Question question=new Question();
		question.setArea(field);
		question.setTitle(title);
		question.setAskerId(userId);
		question.setAskertype(usertype);
		question.setContent(qDescription);
		Long time = System.currentTimeMillis()/1000;
		question.setAskTime(time);
		questionService.insertQuestion(question);
		return "enterprise/consultoverview";
	}
}
