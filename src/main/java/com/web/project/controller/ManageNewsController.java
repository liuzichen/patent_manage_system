package com.web.project.controller;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.project.model.BackManage.News;
import com.web.project.service.BackManage.ManageNewsService;
import com.web.project.vo.ManageNewsVo;

/**
 * @author 瀛愭櫒
 *
 */
@Controller
@RequestMapping("ManageNews")
public class ManageNewsController {
	
	@Autowired
	ManageNewsService newsService;
	
	/**
	 * 閫氳繃绫诲瀷鑾峰彇鐩稿叧鐨勬柊闂诲垪琛�	 */
	@RequestMapping("list")
	@ResponseBody
	public String getListByType(
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize){
		ArrayList<News> newsList= newsService.getNewsInfo();
		int start = (pageId - 1) * pageSize;
		int end = Math.min(newsList.size(), start + pageSize);
		ArrayList<ManageNewsVo> newsVos = new ArrayList<ManageNewsVo>();
		for(int i = start; i < end; i++){
			News news = newsList.get(i);
			ManageNewsVo newsVo = new ManageNewsVo();
			newsVos.add(newsVo.transfer(news));
		}
		HashMap hashMap = new HashMap();
	    hashMap.put("total",newsList.size());
	    hashMap.put("rows", newsVos);
	    String result1=JSONArray.fromObject(hashMap).toString();
	    String result = result1.substring(1,result1.length()-1);  
	    return result;
	}	
	
	
	@RequestMapping("toNewsInfo")
	public String toNewsInfo(){

		return "blackManage/sysManagement/sysgonggaoOverview";
	}
	
	/** 
	 * 閫氳繃id鑾峰彇鏂伴椈鐨勮缁嗕俊鎭�	 */
	@RequestMapping("detail")
	public String getDetailById(@RequestParam(value="id")final int id,ModelMap model){
		News news = newsService.getNewsDetailById(id);
		ManageNewsVo newsVo = new ManageNewsVo();
		newsVo.transfer(news);
		model.put("detail", newsVo);
		return "blackManage/sysManagement/sysgonggaoDetail";
	}
	
	@RequestMapping("insertNewsInfo")
	public String insertNewsInfo(
			@RequestParam(value="title")String title,		
			@RequestParam(value="type")String type,
			@RequestParam(value="content")String content,
			@RequestParam(value="fujianType")String fujianType,
			@RequestParam(value="fujianName")String fujianName,ModelMap model) throws UnsupportedEncodingException{
		
        title = new String(title.getBytes("iso-8859-1"), "utf-8");
        content = new String(content.getBytes("iso-8859-1"), "utf-8");
        type = new String(type.getBytes("iso-8859-1"), "utf-8");
        fujianType = new String(fujianType.getBytes("iso-8859-1"), "utf-8");
        fujianName = new String(fujianName.getBytes("iso-8859-1"), "utf-8");
        Long time = System.currentTimeMillis()/1000;
        newsService.insertNewsInfo(title ,type, time, fujianType, fujianName,content);
		return "blackManage/sysManagement/sysgonggaoOverview";
    }
	
	@RequestMapping("deleteNewsInfo")
	@ResponseBody
	public void deleteNewsInfo(
			@RequestParam(value = "remove") final int[] id) {
		System.out.println("ssssssss");
		ArrayList<Integer> remove=new ArrayList<Integer>();
		for(int i=0;i<id.length;i++){
			remove.add(id[i]);
		}
		System.out.println("ssssssss");
		newsService.deleteNewsInfoById(remove);
	}

}
