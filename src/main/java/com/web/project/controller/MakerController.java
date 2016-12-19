/**
 * 
 */
package com.web.project.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.ArrayList;
import java.util.HashMap;

import net.sf.json.JSONArray;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONArray;

import com.web.project.model.maker.MakerCooperation;
import com.web.project.model.maker.MakerProject;
import com.web.project.service.makerService.MakerProjectService;
import com.web.project.vo.MakerProjectListVo;
import com.web.project.model.Question;
import com.web.project.model.maker.MakerWorks;
import com.web.project.service.maker.MakerCooperationService;
import com.web.project.service.maker.MakerWorksService;
import com.web.project.vo.MakerWorkVo;
import com.web.project.vo.QuestionVo;
import com.web.project.vo.MakerProjectVo;
/**
 * @author 子晨
 *
 */
@RequestMapping("maker")
@Controller
public class MakerController {

	@Autowired
	MakerWorksService makerWorksService;
	@Autowired
	MakerProjectService makerProjectService;
	@Autowired
	MakerCooperationService makerCooperationService;
	
	/**
	 * 获取创客项目列表
	 */
	@RequestMapping("makerProjectList")
	@ResponseBody
	public String getProjectList(
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Long current = System.currentTimeMillis();
		String currentTime=sdf.format(current);
		String [] currentList=currentTime.substring(0,10).split("-");
		String currentDate=currentList[0]+currentList[1]+currentList[2];
		int currentIdate=Integer.parseInt(currentDate);
		int num=0;
		
		ArrayList<MakerProject> makerProjectList = makerProjectService.getProjectList();
		ArrayList<MakerProject> availableList = new ArrayList<MakerProject>();
		ArrayList<MakerProjectListVo> viewList = new ArrayList<MakerProjectListVo>();
		
		for (int i = 0; i < makerProjectList.size(); i++) {
			MakerProject makerProject = makerProjectList.get(i);
			String startTime=makerProject.getStartTime();
			String [] startList=startTime.substring(0,10).split("-");
			String startDate=startList[0]+startList[1]+startList[2];
			int startIdate=Integer.parseInt(startDate);
			String endTime=makerProject.getEndTime();
			String [] endList=endTime.substring(0,10).split("-");
			String endDate=endList[0]+endList[1]+endList[2];
			int endIdate=Integer.parseInt(endDate);			
			if(startIdate<=currentIdate&&endIdate>=currentIdate){
				availableList.add(makerProject);
				num++;
			}
		}
		int start = (pageId - 1) * pageSize;
		int end = Math.min(availableList.size(), start + pageSize);
		for (int i = start; i < end; i++) {
			MakerProject makerProject = availableList.get(i);
			String startTime=makerProject.getStartTime();
			String [] startList=startTime.substring(0,10).split("-");
			String startDate=startList[0]+startList[1]+startList[2];
			int startIdate=Integer.parseInt(startDate);
			String endTime=makerProject.getEndTime();
			String [] endList=endTime.substring(0,10).split("-");
			String endDate=endList[0]+endList[1]+endList[2];
			int endIdate=Integer.parseInt(endDate);			
			if(startIdate<=currentIdate&&endIdate>=currentIdate){
				MakerProjectListVo view = new MakerProjectListVo();
				view.setId(makerProject.getId());
				view.setTitle(makerProject.getTitle());
				view.setStartTime(startTime.split(" ")[0]);
				view.setEndTime(endTime.split(" ")[0]);
				viewList.add(view);
			}
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", num);
		hashMap.put("rows", viewList);
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		return result;
	}
	
	/**
	 * 获取创客合作列表
	 */
	@RequestMapping("makerCooperationList")
	@ResponseBody
	public String getCooperationList(
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize,
			@RequestParam(value = "pageSort") final String pageSort,
			@RequestParam(value = "pageOrder") final String pageOrder) {
		
		ArrayList<MakerCooperation> makerCooperationList = makerCooperationService.getCooperationList(pageSort, pageOrder);
		ArrayList<MakerCooperation> viewList = new ArrayList<MakerCooperation>();
		int start = (pageId - 1) * pageSize;
		int end = Math.min(makerCooperationList.size(), start + pageSize);
		for (int i = start; i < end; i++) {
			MakerCooperation makerCooperation = makerCooperationList.get(i);
			viewList.add(makerCooperation);
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", makerCooperationList.size());
		hashMap.put("rows", viewList);
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		return result;
	}
	/**
	 * 创客项目详细信息
	 */
	@RequestMapping("makerProjectDetail")
	public String getProjectDetail(@RequestParam(value="projectId")final int id,ModelMap model){
		MakerProject makerProject = makerProjectService.getProjectById(id);
		MakerProjectVo makerProjectVo = new MakerProjectVo();
		makerProjectVo.transfer(makerProject);
		model.put("detail", makerProjectVo);
		return "maker/mproject";
	}
	
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