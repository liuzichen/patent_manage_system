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

import com.web.project.model.BackManage.Maker;
import com.web.project.model.maker.MakerCooperation;
import com.web.project.model.maker.MakerProject;
import com.web.project.service.MakerInfoService;
import com.web.project.service.makerService.MakerProjectService;
import com.web.project.vo.MakerProjectListVo;
import com.web.project.model.Question;
import com.web.project.model.maker.MakerWorks;
import com.web.project.service.maker.MakerCooperationService;
import com.web.project.service.maker.MakerWorksService;
import com.web.project.vo.MakerInfoVo;
import com.web.project.vo.MakerWorkVo;
import com.web.project.vo.QuestionVo;
import com.web.project.vo.MakerProjectVo;
/**
 * @author 瀛愭櫒
 *
 */
@RequestMapping("makerinfo")
@Controller
public class ManageMakerController {

	@Autowired
	MakerInfoService makerInfoService;

	/**
	 * 鍒涘椤圭洰浣滃搧鍒楄〃
	 */
	@RequestMapping("workList")
	@ResponseBody
	public String getMakerInfoList(
			@RequestParam(value = "state") final String state,
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize,ModelMap model){
		ArrayList<Maker> maker;
		if(state==""){
			maker = makerInfoService.getMakerInfoList();
		}
		else{
			maker = makerInfoService.getMakerInfoByName(state);
		}
		int start = (pageId - 1) * pageSize;
		int end = Math.min(maker.size(), start + pageSize);
		ArrayList<MakerInfoVo> makerInfoVos = new ArrayList<MakerInfoVo>();
		for (int i = start; i < end; i++) {
			MakerInfoVo makerInfoVo = new MakerInfoVo();
			makerInfoVo.transfer(maker.get(i));
			makerInfoVos.add(makerInfoVo);
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", maker.size());
		hashMap.put("rows", makerInfoVos);
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		System.out.println(result);
		return result;
	}	
	
	/**
	 * 璺宠浆鍒伴」鐩綔鍝佸垪琛�	 */
	@RequestMapping("toMakerWorkList")
	public String toInfoList(){
		return "blackManage/userPageManage/chuangOverview";
	}
	
	/**
	 * 鍒涘椤圭洰浣滃搧璇︾粏淇℃伅
	 */
	@RequestMapping("makerInfoDetail")
	public String getInfoDetail(@RequestParam(value="makerID")final int makerID,ModelMap model){
		Maker maker = makerInfoService.getMakerInfoById(makerID);
		MakerInfoVo makerInfoVo = new MakerInfoVo();
		makerInfoVo.transfer(maker);
		model.put("detail", makerInfoVo);
		String result1 = JSONArray.fromObject(makerInfoVo).toString();
		String result = result1.substring(1, result1.length() - 1);
		System.out.println(result);
		return "blackManage//userPageManage/chuanglinfo";
	}
	
	/**
	 * 涓撳璇勪环鍒涘椤圭洰
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping("evaluate")
	public String evaluate(@RequestParam(value="presention")String evaluation,
			@RequestParam(value="advice")String problems,
			@RequestParam(value="sort")String flag,
			@RequestParam(value="id")int id,ModelMap model) throws UnsupportedEncodingException{
        problems = new String(problems.getBytes("iso-8859-1"), "utf-8");
        evaluation = new String(evaluation.getBytes("iso-8859-1"), "utf-8");
		return "blackManage/projectManage/chuangkeProjectOverview";
    }
	
	@RequestMapping("insertMakerInfo")
	public String insertExpertInfo(
			@RequestParam(value="loginName")String loginName,
			@RequestParam(value="team")String team,
			@RequestParam(value="address")String address,
			@RequestParam(value="teamIntro")String teamIntro,
			@RequestParam(value="field1")String field1,
			@RequestParam(value="field2")String field2,
			@RequestParam(value="phone")String phone,
			@RequestParam(value="email")String email,
			@RequestParam(value="achievement")String achievement,ModelMap model) throws UnsupportedEncodingException{
		
		loginName = new String(loginName.getBytes("iso-8859-1"), "utf-8");
        team = new String(team.getBytes("iso-8859-1"), "utf-8");
        address = new String(address.getBytes("iso-8859-1"), "utf-8");
        teamIntro = new String(teamIntro.getBytes("iso-8859-1"), "utf-8");
        field1 = new String(field1.getBytes("iso-8859-1"), "utf-8");
        field2 = new String(field2.getBytes("iso-8859-1"), "utf-8");
        phone = new String(phone.getBytes("iso-8859-1"), "utf-8");
        email = new String(email.getBytes("iso-8859-1"), "utf-8");
        achievement = new String(achievement.getBytes("iso-8859-1"), "utf-8");
        makerInfoService.insertMakerInfo(loginName ,team, address, teamIntro, field1, field2,phone, email,achievement);
		return "blackManage/userPageManage/chuangOverview";
    }
	
	@RequestMapping("deleteMakerInfo")
	@ResponseBody
	public void deleteExpertInfo(
			@RequestParam(value = "remove") final int[] makerID) {
		System.out.println("ssssssss");
		ArrayList<Integer> remove=new ArrayList<Integer>();
		for(int i=0;i<makerID.length;i++){
			remove.add(makerID[i]);
		}
		System.out.println("ssssssss");
		makerInfoService.deleteMakerInfoById(remove);
	}
}