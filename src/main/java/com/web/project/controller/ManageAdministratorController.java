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

import com.web.project.model.BackManage.AdministratorInfo;
import com.web.project.service.BackManage.ManageAdministratorService;
import com.web.project.vo.ManageAdministratorVo;

/**
 * @author 瀛愭櫒
 *
 */
@RequestMapping("administrator")
@Controller
public class ManageAdministratorController {

	@Autowired
	ManageAdministratorService administratorService;

	/**
	 * 鍒涘椤圭洰浣滃搧鍒楄〃
	 */
	@RequestMapping("administratorInfoList")
	@ResponseBody
	public String getAdministratorInfoList(
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize,ModelMap model){
		ArrayList<AdministratorInfo> administratorInfo = administratorService.getAdministratorList();
		int start = (pageId - 1) * pageSize;
		int end = Math.min(administratorInfo.size(), start + pageSize);
		ArrayList<ManageAdministratorVo> administratorVos = new ArrayList<ManageAdministratorVo>();
		for (int i = start; i < end; i++) {
			ManageAdministratorVo administratorVo = new ManageAdministratorVo();
			administratorVo.transfer(administratorInfo.get(i));
			administratorVos.add(administratorVo);
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", administratorInfo.size());
		hashMap.put("rows", administratorVos);
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		System.out.println(result);
		return result;
	}	
	
	/**
	 * 璺宠浆鍒伴」鐩綔鍝佸垪琛�	 */
	@RequestMapping("toAdministratorList")
	public String toManageEnterpriseList(){
		return "blackManage/sysManagement/guanliyuanOverview";
	}
	

	@RequestMapping("insertAdministratorInfo")
	public String insertExpertInfo(
			@RequestParam(value="name")String name,
			@RequestParam(value="roleID")final int roleID,
			@RequestParam(value="password")String password,ModelMap model) throws UnsupportedEncodingException{
		
		name = new String(name.getBytes("iso-8859-1"), "utf-8");
		password = new String(password.getBytes("iso-8859-1"), "utf-8");
		administratorService.insertAdministratorInfo(name,password,roleID);
		return "blackManage/sysManagement/guanliyuanOverview";
    }
	
	@RequestMapping("deleteAdministratorInfo")
	@ResponseBody
	public void deleteExpertInfo(
			@RequestParam(value = "remove") final int[] administratorid) {
		ArrayList<Integer> remove=new ArrayList<Integer>();
		for(int i=0;i<administratorid.length;i++){
			remove.add(administratorid[i]);
		}
		administratorService.deleteAdministratorInfoById(remove);
	}
}
