package com.web.project.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.io.*;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.project.model.BackManage.ExpertInfo;
import com.web.project.model.expert.ExpertFee;
import com.web.project.service.BackManage.ManageExpertInfoService;
import com.web.project.service.expertService.ExpertFeeService;
import com.web.project.vo.ExpertFeeVo;
import com.web.project.vo.ManageExpertVo;


/**
 * @author 瀛愭櫒
 *
 */
@RequestMapping("manageExpert")
@Controller
public class ManageExpertController {

	@Autowired
	ManageExpertInfoService expertInfoService;
	
	@Autowired
	ExpertFeeService expertFeeService;

	/**
	 * 鍒涘椤圭洰浣滃搧鍒楄〃
	 */
	@RequestMapping("ExpertInfoList")
	@ResponseBody
	public String getExpertInfoList(
			@RequestParam(value = "state") final String state,
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize,ModelMap model){
		ArrayList<ExpertInfo> expertInfo;
		if(state=="")
		{
			expertInfo = expertInfoService.getExpertList();
		}
		else{
			expertInfo = expertInfoService.getExpertNameList(state);
		}
		int start = (pageId - 1) * pageSize;
		int end = Math.min(expertInfo.size(), start + pageSize);
		ArrayList<ManageExpertVo> expertInfoVos = new ArrayList<ManageExpertVo>();
		for (int i = start; i < end; i++) {
			ManageExpertVo expertInfoVo = new ManageExpertVo();
			expertInfoVo.transfer(expertInfo.get(i));
			expertInfoVos.add(expertInfoVo);
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", expertInfo.size());
		hashMap.put("rows", expertInfoVos);
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		System.out.println(result);
		return result;
	}	
	
	
	/**
	 * 璺宠浆鍒伴」鐩綔鍝佸垪琛�	 */
	@RequestMapping("toExpertInfoList")
	public String toManageEnterpriseList(){
		return "blackManage/userPageManage/expertOverview";
	}
	
	
	/**
	 * 鍒涘椤圭洰浣滃搧璇︾粏淇℃伅
	 */
	@RequestMapping("expertInfoDetail")
	public String getmanageEnterpriseDetail(@RequestParam(value="id")final int id,ModelMap model){
		ExpertInfo expertInfo = expertInfoService.getInfoById(id);
		ManageExpertVo expertInfoVo = new ManageExpertVo();
		expertInfoVo.transfer(expertInfo);
		model.put("detail", expertInfoVo);
		String result1 = JSONArray.fromObject(expertInfoVo).toString();
		String result = result1.substring(1, result1.length() - 1);
		System.out.println(result);
		return "blackManage/userPageManage/expertInfo";
	}
	

	@RequestMapping("insertExpertInfo")
	public String insertExpertInfo(
			@RequestParam(value="name")String name,
			@RequestParam(value="age")String ag,
			@RequestParam(value="company")String company,
			@RequestParam(value="title")String title,
			@RequestParam(value="major")String major,
			@RequestParam(value="cellphone")String cellphone,
			@RequestParam(value="telephone")String telephone,
			@RequestParam(value="email")String email,
			@RequestParam(value="type")String type,
			@RequestParam(value="achievement")String achievement,ModelMap model) throws UnsupportedEncodingException{
		
		int age = Integer.valueOf(ag).intValue();
		name = new String(name.getBytes("iso-8859-1"), "utf-8");
        company = new String(company.getBytes("iso-8859-1"), "utf-8");
        title = new String(title.getBytes("iso-8859-1"), "utf-8");
        major = new String(major.getBytes("iso-8859-1"), "utf-8");
        cellphone = new String(cellphone.getBytes("iso-8859-1"), "utf-8");
        telephone = new String(telephone.getBytes("iso-8859-1"), "utf-8");
        email = new String(email.getBytes("iso-8859-1"), "utf-8");
        type = new String(type.getBytes("iso-8859-1"), "utf-8");
        achievement = new String(achievement.getBytes("iso-8859-1"), "utf-8");
        expertInfoService.insertExpertInfo(name ,age, company, title, major, cellphone, telephone, email, type,achievement);
		return "blackManage/userPageManage/expertOverview";
    }
	
	@RequestMapping("deleteExpertInfo")	
	@ResponseBody
	public void deleteExpertInfo(
			@RequestParam(value = "remove") final int[] id) {
		System.out.println("ssssssss");
		ArrayList<Integer> remove=new ArrayList<Integer>();
		for(int i=0;i<id.length;i++){
			remove.add(id[i]);
		}
		System.out.println("ssssssss");
		expertInfoService.deleteExpertInfoById(remove);
	}
	
	@RequestMapping("ExpertFeeList")
	@ResponseBody
	public String getExpertFeeList(
			@RequestParam(value = "state") final String state,
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize,ModelMap model){
		ArrayList<ExpertFee> expertFee;
		if(state.equals("0"))
		{
			expertFee = expertFeeService.getExpertFeeInfoList();
		}
		else if(state.equals("1")){
			expertFee = expertFeeService.getExpertFeeWorkList();
		}
		else if(state.equals("2")){
			expertFee = expertFeeService.getExpertFeeMKWorkList();
		}
		else if(state.equals("3")){
			expertFee = expertFeeService.getExpertFeeEKWorkList();
		}else {
			expertFee = expertFeeService.getExpertFeeInfoList();
		}
		int start = (pageId - 1) * pageSize;
		int end = Math.min(expertFee.size(), start + pageSize);
		ArrayList<ExpertFeeVo> expertFeeVos = new ArrayList<ExpertFeeVo>();
		for (int i = start; i < end; i++) {
			ExpertFeeVo expertFeeVo = new ExpertFeeVo();
			expertFeeVo.transfer(expertFee.get(i));
			expertFeeVos.add(expertFeeVo);
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", expertFee.size());
		hashMap.put("rows", expertFeeVos);
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		System.out.println(result);
		return result;
	}	
	
	@RequestMapping("UpdateExpertFee")
	public String UpdateExpertFee(
			@RequestParam(value = "id") final int id){
		expertFeeService.updateExpertFee(id);
		return "blackManage/expertPageManage/pingshengFreeDeliverMange";
	}	
}