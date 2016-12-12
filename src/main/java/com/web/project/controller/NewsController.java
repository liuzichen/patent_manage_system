package com.web.project.controller;
/**
 * 
 */


import java.util.ArrayList;
import java.util.HashMap;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.project.model.News;
import com.web.project.service.relationship.NewsService;
import com.web.project.vo.NewsVo;

/**
 * @author 子晨
 *
 */
@Controller
@RequestMapping("news")
public class NewsController {
	
	@Autowired
	NewsService newsService;
	
	/**
	 * 通过类型获取相关的新闻列表
	 */
	@RequestMapping("list")
	@ResponseBody
	public String getListByType(@RequestParam(value="type")final String type,
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize){
		ArrayList<News> newsList= newsService.getNewsByType(type);
		int start = (pageId - 1) * pageSize;
		int end = Math.min(newsList.size(), start + pageSize);
		ArrayList<NewsVo> newsVos = new ArrayList<NewsVo>();
		for(int i = start; i < end; i++){
			News news = newsList.get(i);
			NewsVo newsVo = new NewsVo();
			newsVos.add(newsVo.transfer(news));
		}
		HashMap hashMap = new HashMap();
	    hashMap.put("total",newsList.size());
	    hashMap.put("rows", newsVos);
	    String result1=JSONArray.fromObject(hashMap).toString();
	    String result = result1.substring(1,result1.length()-1);  
	    return result;
	}	
	
	/** 
	 * 通过id获取新闻的详细信息
	 */
	@RequestMapping("detail")
	public String getDetailById(@RequestParam(value="id")final int id,ModelMap model){
		News news = newsService.getNewsDetailById(id);
		NewsVo newsVo = new NewsVo();
		newsVo.transfer(news);
		model.put("detail", newsVo);
		return "expert/newsview";
	}

}
