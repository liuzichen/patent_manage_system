package com.web.project.controller;

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

import com.web.project.model.expert.ExpertInfo;
import com.web.project.service.expertService.ExpertInfoService;
import com.web.project.vo.ExpertInfoView;

@Controller
@RequestMapping("expert")
public class ExpertController {

	@Autowired
	ExpertInfoService expertInfoService;

	@RequestMapping("list")
	@ResponseBody
	public String getExpertList(@RequestParam(value = "pageNum") int pageId,
			@RequestParam(value = "pageSize") int pageSize, ModelMap model) {		
		ArrayList<ExpertInfo> expertInfoList = expertInfoService
				.getExpertList();
		ArrayList<ExpertInfoView> viewList = new ArrayList<ExpertInfoView>();
		int start=(pageId-1)*pageSize;
		int end=Math.min(expertInfoList.size(), start+pageSize);
		for (int i=start;i<end;i++) {
			ExpertInfo expertInfo = expertInfoList.get(i);
			ExpertInfoView view = new ExpertInfoView();
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
		// System.out.println(result1);
		String result = result1.substring(1, result1.length() - 1);
		// System.out.println(result);
		return result;
	}
}
