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

import com.web.project.model.BackManage.Government;
import com.web.project.service.BackManage.ManageGovernmentService;
import com.web.project.vo.ManageGovernmentVo;



	@RequestMapping("govinfo")
	@Controller
	public class ManageGovernmentController {

		@Autowired
		ManageGovernmentService governmentInfoService;

		/**
		 * 鍒涘椤圭洰浣滃搧鍒楄〃
		 */
		@RequestMapping("workList")
		@ResponseBody
		public String getGovernmentInfoList(
				@RequestParam(value = "state") String state,
				@RequestParam(value = "pageNum") final int pageId,
				@RequestParam(value = "pageSize") final int pageSize,ModelMap model){
			ArrayList<Government> government;
			if(state==""){
				government = governmentInfoService.getGovernmentInfoList();
			}else{
				government = governmentInfoService.getGovernmentInfoByName(state);
			}
			int start = (pageId - 1) * pageSize;
			int end = Math.min(government.size(), start + pageSize);
			ArrayList<ManageGovernmentVo> governmentInfoVos = new ArrayList<ManageGovernmentVo>();
			for (int i = start; i < end; i++) {
				ManageGovernmentVo governmentInfoVo = new ManageGovernmentVo();
				governmentInfoVo.transfer(government.get(i));
				governmentInfoVos.add(governmentInfoVo);
			}
			HashMap hashMap = new HashMap();
			hashMap.put("total", government.size());
			hashMap.put("rows", governmentInfoVos);
			String result1 = JSONArray.fromObject(hashMap).toString();
			String result = result1.substring(1, result1.length() - 1);
			System.out.println(result);
			return result;
		}	
		
		/**
		 * 璺宠浆鍒伴」鐩綔鍝佸垪琛�	 */
		@RequestMapping("toGovernmentList")
		public String toInfoList(){
			return "blackManage/userPageManage/goverOverview";
		}
		
		/**
		 * 鍒涘椤圭洰浣滃搧璇︾粏淇℃伅
		 */
		@RequestMapping("goverInfoDetail")
		public String getInfoDetail(@RequestParam(value="id")final int id,ModelMap model){
			Government government = governmentInfoService.getGovernmentInfoById(id);
			ManageGovernmentVo governmentInfoVo = new ManageGovernmentVo();
			governmentInfoVo.transfer(government);
			model.put("detail", governmentInfoVo);
			return "blackManage/userPageManage/goverInfo";
		}
		
		@RequestMapping("update")
		public String evaluate(
				@RequestParam(value="contactpeople")String contactpeople,
				@RequestParam(value="phone")String phone,
				@RequestParam(value="email")String email,
				@RequestParam(value="address")String address,
				@RequestParam(value="postcode")String postcode,
				@RequestParam(value="id")int id,ModelMap model) throws UnsupportedEncodingException{
			contactpeople = new String(contactpeople.getBytes("iso-8859-1"), "utf-8");
			phone = new String(phone.getBytes("iso-8859-1"), "utf-8");
			email = new String(email.getBytes("iso-8859-1"), "utf-8");
			address = new String(address.getBytes("iso-8859-1"), "utf-8");
			postcode = new String(postcode.getBytes("iso-8859-1"), "utf-8");
	        governmentInfoService.updateGoverInfo(id,contactpeople,phone, email,address, postcode);
			return "blackManage/userPageManage/goverOverview";
	    }
		
}
