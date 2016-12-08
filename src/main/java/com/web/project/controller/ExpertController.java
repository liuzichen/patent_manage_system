package com.web.project.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONArray;

import com.web.project.model.Question;
import com.web.project.model.expert.ExpertInfo;
import com.web.project.service.expertService.ExpertInfoService;
import com.web.project.service.relationship.QuestionService;
import com.web.project.vo.ExpertInfoVo;
import com.web.project.vo.QuestionVo;

@Controller
@RequestMapping("expert")
public class ExpertController {

	@Autowired
	ExpertInfoService expertInfoService;
	@Autowired
	QuestionService questionService;
	
	/**
	 * 获取专家列表
	 */
	@RequestMapping("list")
	@ResponseBody
	public String getExpertList(
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize) {
		ArrayList<ExpertInfo> expertInfoList = expertInfoService
				.getExpertList();
		ArrayList<ExpertInfoVo> viewList = new ArrayList<ExpertInfoVo>();
		int start = (pageId - 1) * pageSize;
		int end = Math.min(expertInfoList.size(), start + pageSize);
		for (int i = start; i < end; i++) {
			ExpertInfo expertInfo = expertInfoList.get(i);
			ExpertInfoVo view = new ExpertInfoVo();
			view.setId(expertInfo.getId());
			view.setCompany(expertInfo.getCompany());
			view.setMajor(expertInfo.getMajor());
			view.setName(expertInfo.getName());
			view.setTitle(expertInfo.getTitle());
			viewList.add(view);
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", expertInfoList.size());
		hashMap.put("rows", viewList);
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		return result;
	}
	
	/**
	 * 获取某个专家详细信息
	 */
	@RequestMapping("detail")
	public String getDetail(@RequestParam(value = "id") final int id,
			ModelMap model) {
		ExpertInfo expertInfo = expertInfoService.getInfoById(id);
		model.put("detailInfo", expertInfo);
		return "expert/personalityPage";
	}

	/**
	 * 跳转到某个专家个人的问题列表界面
	 */
	@RequestMapping("toQuestionList")
	public String toQuestionList() {
		return "expert/responseOverview";
	}

	/**
	 * 获得某个专家文回答的问题列表
	 */
	@RequestMapping("questionList")
	@ResponseBody
	public String getQuestionList(
			@RequestParam(value = "expertId") final int expertId,
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize,
			@RequestParam(value = "order") final String order
			) {
		ArrayList<Question> questions = questionService
				.getQuestionByExpertID(expertId);
		int start = (pageId - 1) * pageSize;
		int end = Math.min(questions.size(), start + pageSize);
		ArrayList<QuestionVo> questionVos = new ArrayList<QuestionVo>();
		for (Question question : questions) {
			QuestionVo questionVo = new QuestionVo();
			questionVo.transfer(question);
			questionVos.add(questionVo);
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", questionVos.size());
		hashMap.put("rows", questionVos);
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		return result;
	}
	
	/**
	 * 跳转到某个具体的问题
	 */
	@RequestMapping("answer")
	public String answerQuestion(
			@RequestParam(value = "questionId") final int id, ModelMap model) {
		Question question = questionService.getQuestionById(id);
		QuestionVo questionVo = new QuestionVo();
		questionVo.transfer(question);
		model.put("questionDetail", questionVo);
		return "expert/response";
	}

	/**
	 * 回答相应的问题
	 */
	@RequestMapping("confirmResponse")
	public String confirmResponse(
			@RequestParam(value = "achievement") String answer,
			@RequestParam(value = "id") final int id, ModelMap model)
			throws UnsupportedEncodingException {
		Long answerTime = System.currentTimeMillis() / 1000;
		answer = new String(answer.getBytes("iso-8859-1"), "utf-8");
		questionService.addResponse(id, true, answer, answerTime);
		return "expert/responseOverview";
	}

}
