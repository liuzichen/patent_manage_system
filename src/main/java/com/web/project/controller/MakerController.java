/**
 * 
 */
package com.web.project.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.project.model.Question;
import com.web.project.model.maker.MakerWorks;
import com.web.project.service.maker.MakerWorksService;
import com.web.project.vo.MakerWorkVo;
import com.web.project.vo.QuestionVo;

/**
 * @author 子晨
 *
 */
@RequestMapping("maker")
@Controller
public class MakerController {

	@Autowired
	MakerWorksService makerWorksService;
	
	/**
	 * 创客项目作品列表
	 */
	@RequestMapping("workList")
	@ResponseBody
	public String getMakerWorkList(@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize,ModelMap model){
		ArrayList<MakerWorks> makerWorks = makerWorksService.getMakerWorksList();
		int start = (pageId - 1) * pageSize;
		int end = Math.min(makerWorks.size(), start + pageSize);
		ArrayList<MakerWorkVo> makerWorkVos = new ArrayList<MakerWorkVo>();
		for (int i = start; i < end; i++) {
			MakerWorkVo makerWorkVo = new MakerWorkVo();
			makerWorkVo.transfer(makerWorks.get(i));
			makerWorkVos.add(makerWorkVo);
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", makerWorks.size());
		hashMap.put("rows", makerWorkVos);
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		return result;
	}	
	
	/**
	 * 跳转到项目作品列表
	 */
	@RequestMapping("toMakerWorkList")
	public String toWorkList(){
		return "expert/pmakeroverview";
	}
	
	/**
	 * 创客项目作品详细信息
	 */
	@RequestMapping("makerWorkDetail")
	public String getWorkDetail(@RequestParam(value="id")final int id,ModelMap model){
		MakerWorks makerWork = makerWorksService.getMakerWorksDetailById(id);
		MakerWorkVo makerWorkVo = new MakerWorkVo();
		makerWorkVo.transfer(makerWork);
		model.put("detail", makerWorkVo);
		return "expert/pmakerreview";
	}
	
	/**
	 * 专家评价创客项目
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping("evaluate")
	public String evaluate(@RequestParam(value="presention")String evaluation,
			@RequestParam(value="advice")String problems,
			@RequestParam(value="sort")String flag,
			@RequestParam(value="id")int id,ModelMap model) throws UnsupportedEncodingException{
        problems = new String(problems.getBytes("iso-8859-1"), "utf-8");
        evaluation = new String(evaluation.getBytes("iso-8859-1"), "utf-8");
		Long time = System.currentTimeMillis()/1000;
		if(flag.equals("save"))
		   makerWorksService.updateMakerWorkInfo(problems, evaluation, time, false, id);
		else {
			makerWorksService.updateMakerWorkInfo(problems, evaluation, time, true, id);
		}
		return "expert/pmakeroverview";
    }
	
}