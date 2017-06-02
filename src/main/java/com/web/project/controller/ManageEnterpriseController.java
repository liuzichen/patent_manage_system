package com.web.project.controller;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.project.model.Field;
import com.web.project.model.BackManage.ManageEnterprise;
import com.web.project.model.comment.EnterpriseComProjectComment;
import com.web.project.model.comment.MakerComWorksComment;
import com.web.project.model.enterprise.EnterpriseCommonProject;
import com.web.project.model.enterprise.EnterpriseProject;
import com.web.project.model.expert.ExpertFee;
import com.web.project.model.expert.ExpertInfo;
import com.web.project.model.maker.MakerCommonWorks;
import com.web.project.service.FieldService;
import com.web.project.service.BackManage.ManageEnterpriseService;
import com.web.project.service.enterprise.EnterpriseProjectService;
import com.web.project.service.expertService.CommentService;
import com.web.project.service.expertService.ExpertFeeService;
import com.web.project.service.expertService.ExpertInfoService;
import com.web.project.vo.EnterComWorkCommentVo;
import com.web.project.vo.EnterpriseCommonProjectVo;
import com.web.project.vo.MakerComWorkCommentVo;
import com.web.project.vo.MakerCommonWorksVo;
import com.web.project.vo.ManageEnterpriseVo;

/**
 * @author 瀛愭櫒
 *
 */
@RequestMapping("manageEnterprise")
@Controller
public class ManageEnterpriseController {

	@Autowired
	ManageEnterpriseService manageEnterpriseService;

	@Autowired
	EnterpriseProjectService enterProjectService;
	
	@Autowired
	CommentService commentService;
	
	@Autowired
	ExpertInfoService expertInfoService;
	
	@Autowired
	EnterpriseProjectService EPService;
	
	@Autowired
	FieldService fieldService;
	
	@Autowired
	ExpertFeeService expertFeeService;
	/**
	 * 鍒涘椤圭洰浣滃搧鍒楄〃
	 */
	@RequestMapping("manageEnterpriseList")
	@ResponseBody
	public String getManageEnterpriseList(
			@RequestParam(value = "state") final String state,
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize,ModelMap model){
		ArrayList<ManageEnterprise> manageEnterprise;
		if(state==""){
			manageEnterprise = manageEnterpriseService.getManageEnterpriseList();
		}
		else{
			manageEnterprise = manageEnterpriseService.getEnterpriseNameList(state);
		}
		int start = (pageId - 1) * pageSize;
		int end = Math.min(manageEnterprise.size(), start + pageSize);
		ArrayList<ManageEnterpriseVo> manageEnterpriseVos = new ArrayList<ManageEnterpriseVo>();
		for (int i = start; i < end; i++) {
			ManageEnterpriseVo manageEnterpriseVo = new ManageEnterpriseVo();
			manageEnterpriseVo.transfer(manageEnterprise.get(i));
			manageEnterpriseVos.add(manageEnterpriseVo);
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", manageEnterprise.size());
		hashMap.put("rows", manageEnterpriseVos);
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		System.out.println(result);
		return result;
	}	
	
	/**
	 * 璺宠浆鍒伴」鐩綔鍝佸垪琛�	 */
	@RequestMapping("toManageEnterpriseList")
	public String toManageEnterpriseList(){
		return "blackManage/userPageManage/compOverview";
	}
	
	/**
	 * 鍒涘椤圭洰浣滃搧璇︾粏淇℃伅
	 */
	@RequestMapping("manageEnterpriseDetail")
	public String getmanageEnterpriseDetail(@RequestParam(value="id")final int id,ModelMap model){
		ManageEnterprise manageEnterprise = manageEnterpriseService.getManageEnterpriseById(id);
		ManageEnterpriseVo manageEnterpriseVo = new ManageEnterpriseVo();
		manageEnterpriseVo.transfer(manageEnterprise);
		model.put("detail", manageEnterpriseVo);
		String result1 = JSONArray.fromObject(manageEnterpriseVo).toString();
		String result = result1.substring(1, result1.length() - 1);
		System.out.println(result);
		return "blackManage/userPageManage/comInfo";
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
	
	@RequestMapping("insertEnterpriseInfo")
	public String insertExpertInfo(
			@RequestParam(value="name")String name,
			@RequestParam(value="legalPerson")String legalPerson,
			@RequestParam(value="registrationTime")String registrationTime,
			@RequestParam(value="registrationMoney")String registrationMoney,
			@RequestParam(value="applyType")String applyType,
			@RequestParam(value="cellPhone")String cellPhone,
			@RequestParam(value="channel1")String channel1,
			@RequestParam(value="channel2")String channel2,
			@RequestParam(value="email")String email,
			@RequestParam(value="loginName")String loginName,
			@RequestParam(value="postcode")String postcode,ModelMap model) throws UnsupportedEncodingException{
		
		name = new String(name.getBytes("iso-8859-1"), "utf-8");
		legalPerson = new String(legalPerson.getBytes("iso-8859-1"), "utf-8");
		registrationTime = new String(registrationTime.getBytes("iso-8859-1"), "utf-8");
        registrationMoney = new String(registrationMoney.getBytes("iso-8859-1"), "utf-8");
        applyType = new String(applyType.getBytes("iso-8859-1"), "utf-8");
        cellPhone = new String(cellPhone.getBytes("iso-8859-1"), "utf-8");
        channel1 = new String(channel1.getBytes("iso-8859-1"), "utf-8");
        channel2 = new String(channel2.getBytes("iso-8859-1"), "utf-8");
        email = new String(email.getBytes("iso-8859-1"), "utf-8");
        loginName = new String(loginName.getBytes("iso-8859-1"), "utf-8");
        postcode = new String(postcode.getBytes("iso-8859-1"), "utf-8");
        manageEnterpriseService.insertEnterpriseInfo(name ,legalPerson, registrationTime,registrationMoney,applyType, cellPhone, channel1,channel2, email, loginName,postcode);
		return "blackManage/userPageManage/compOverview";
    }
	
	@RequestMapping("deleteEnterpriseInfo")
	public void deleteEnterpriseInfo(
			@RequestParam(value = "remove") final int[] id) {
		System.out.println("ssssssss");
		ArrayList<Integer> remove=new ArrayList<Integer>();
		for(int i=0;i<id.length;i++){
			remove.add(id[i]);
		}
		System.out.println("ssssssss");
		manageEnterpriseService.deleteEnterpriseInfoById(remove);
	}
	

	/**
	 * 管理员根据状态获取企业一般项目列表
	 */
	@RequestMapping("getEnterCommonWorkListForAdminByState")
	@ResponseBody
	public String getEnterCommonWorkListForAdminByState(
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize,
			@RequestParam(value = "pageSort") final String pageSort,
			@RequestParam(value = "pageOrder") final String pageOrder,
			@RequestParam(value = "state") int state)throws UnsupportedEncodingException{
		ArrayList<EnterpriseCommonProject> enterCommonProject = enterProjectService.getEnterpriseCommonProjectByState(state);
		int start = (pageId - 1) * pageSize;
		int end = Math.min(enterCommonProject.size(), start + pageSize);
		List<EnterpriseCommonProject> enterCommonWorks=enterCommonProject.subList(start, end);
		HashMap hashMap = new HashMap();
		hashMap.put("total", enterCommonProject.size());
		hashMap.put("rows", enterCommonWorks);
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);

		return result;
	}
	
	/**
	 * 管理员获取企业一般项目详细信息及专家评审结果
	 */
	@RequestMapping("getEnterCommonWorkDetailAndComments")
	public String getEnterCommonWorkDetailAndCommentsForAdmin(
			@RequestParam(value="id") int id,ModelMap model){
		model=this.getEnterCommonWorkDetailById(id, model);
		ArrayList<EnterpriseComProjectComment> enterComWorksCommentsList=commentService.getEnterComWorksCommentsByWorkId(id);
		ArrayList<EnterComWorkCommentVo> makerComWorkCommentVosList=new ArrayList<EnterComWorkCommentVo>();
		for(int i=0;i<enterComWorksCommentsList.size();i++){
			EnterComWorkCommentVo makerComWorkCommentVo=new EnterComWorkCommentVo();
			makerComWorkCommentVo.transfer(enterComWorksCommentsList.get(i));
			ExpertInfo expertInfo= expertInfoService.getInfoById(makerComWorkCommentVo.getExpertId());
			makerComWorkCommentVo.setExpertName(expertInfo.getName());
			makerComWorkCommentVosList.add(makerComWorkCommentVo);
		}
			
		model.put("comments", makerComWorkCommentVosList);
		model.put("size", enterComWorksCommentsList.size());
		return "blackManage/projectManage/qiyeyibanProjectDetail";
	}
	/**
	 * 管理员企业一般项目信息
	 */
	@RequestMapping("enterCommonWorkDetailForAssign")
	public String getEnterCommonWorkDetail(@RequestParam(value = "id") final int id,
			ModelMap model){
		model=this.getEnterCommonWorkDetailById(id, model);
		return "blackManage/expertPageManage/qiyeyibanProjectDetail";
	}
	
	/**
	 * 封装：通过id获取企业一般项目信息
	 */
	public ModelMap getEnterCommonWorkDetailById(@RequestParam(value = "id") final int id,
			ModelMap model){
		EnterpriseCommonProject enterCommonWorks=enterProjectService.getEnterpriseCommonProjectById(id);
		EnterpriseCommonProjectVo enterCommonWorksVo=new EnterpriseCommonProjectVo();
		enterCommonWorksVo.transfer(enterCommonWorks);
		model.put("detail", enterCommonWorksVo);
		return model;
	}
	
	/**
	 * 企业一般项目附件下载
	 */
	@RequestMapping("enterCommonWorksDownload")
	public void enterCommonWorksDownload(@RequestParam(value = "id") final int id,
			HttpServletRequest request, HttpServletResponse response){
		EnterpriseCommonProject enterWorks=enterProjectService.getEnterpriseCommonProjectById(id);
		byte [] fujian= enterWorks.getFujian();
		if(fujian==null)
		{
			 
		}
		else {
			BufferedOutputStream bos = null;  
	        ServletOutputStream fos = null;  
	        
	        
	        try {  
	        	//获得浏览器代理信息
				final String userAgent = request.getHeader("USER-AGENT");
				String showValue=enterWorks.getFujianName();
				//判断浏览器代理并分别设置响应给浏览器的编码格式
				String finalFileName = null;
	            if(userAgent.contains("MSIE")||userAgent.contains("Trident")){//IE浏览器
	                finalFileName = URLEncoder.encode(showValue,"UTF8");
	            }else if(userAgent.contains("Mozilla")){//google,火狐浏览器
	                finalFileName = new String(showValue.getBytes(), "ISO8859-1");
	            }else{
	                finalFileName = URLEncoder.encode(showValue,"UTF8");//其他浏览器
	            }           
				response.setContentType("application/x-download");//告知浏览器下载文件，而不是直接打开，浏览器默认为打开
	            response.setHeader("Content-Disposition" ,"attachment;filename=\"" +finalFileName+ "\"");//下载文件的名称
	           
	            fos = response.getOutputStream();
	            bos = new BufferedOutputStream(fos);  
	            bos.write(fujian);  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        } finally {  
	            if (bos != null) {  
	                try {  
	                    bos.close();  
	                } catch (IOException e1) {  
	                    e1.printStackTrace();  
	                }  
	            }  
	            if (fos != null) {  
	                try {  
	                    fos.close();  
	                } catch (IOException e1) {  
	                    e1.printStackTrace();  
	                }  
	            }  
	        } 
	       
		}
		
	}
	
	@RequestMapping("manageEnterpriseNAList")
	@ResponseBody
	public String getManageEnterpriseNAList(
			@RequestParam(value = "state") final String state,
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize,ModelMap model){
		ArrayList<EnterpriseCommonProject> manageEnterprise;
		if(state==""){
			manageEnterprise = EPService.getEnterpriseCommonProjectNALists();
		}
		else{
			manageEnterprise = EPService.getEnterpriseCommonProjectNALists();
		}
		int start = (pageId - 1) * pageSize;
		int end = Math.min(manageEnterprise.size(), start + pageSize);
		ArrayList<EnterpriseCommonProjectVo> manageEnterpriseVos = new ArrayList<EnterpriseCommonProjectVo>();
		for (int i = start; i < end; i++) {
			EnterpriseCommonProjectVo manageEnterpriseVo = new EnterpriseCommonProjectVo();
			manageEnterpriseVo.transfer(manageEnterprise.get(i));
			manageEnterpriseVos.add(manageEnterpriseVo);
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", manageEnterprise.size());
		hashMap.put("rows", manageEnterpriseVos);
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		System.out.println(result);
		return result;
	}	
	/**
	 * 管理员进入企业一般项目专家分配页面
	 */
	@RequestMapping("toAssignExpertForEnterCommonWork")
	public String toAssignExpert(@RequestParam(value="id") int id,ModelMap model){
		EnterpriseCommonProject enterCommonWorks=EPService.getEnterpriseCommonProjectById(id);
		ArrayList<Field> field=fieldService.getField();
		model.put("detail", enterCommonWorks);
		model.put("fieldList", field);
		return "blackManage/expertPageManage/qiyeyibanExpertSperate";
	}
	
	/**
	 * 管理员为企业一般项目分配专家
	 */
	@RequestMapping("AssignExpertForEnterCommonWork")
	public String insertCommentEnterCommonWork(
			@RequestParam(value="projectid") int projectid,
			@RequestParam(value="commentType") String commentType,
			@RequestParam(value="flag") int flag,
			@RequestParam(value="num") int num,
			@RequestParam(value="field") String field,
			@RequestParam(value="ExpertID1") int expertId1,
			@RequestParam(value="ExpertID2") int expertId2,
			@RequestParam(value="ExpertID3") int expertId3,
			@RequestParam(value="ExpertID4") int expertId4,
			@RequestParam(value="ExpertID5") int expertId5,
			@RequestParam(value="fee1") String sfee1,
			@RequestParam(value="fee2") String sfee2,
			@RequestParam(value="fee3") String sfee3,
			@RequestParam(value="fee4") String sfee4,
			@RequestParam(value="fee5") String sfee5,
			ModelMap model)throws UnsupportedEncodingException{
		commentType=new String(commentType.getBytes("iso-8859-1"), "utf-8");
		field=new String(field.getBytes("iso-8859-1"), "utf-8");
		//插入评审项
		ArrayList<Integer> expertIdArrayList=new ArrayList<Integer>();
		expertIdArrayList.add(expertId1);
		expertIdArrayList.add(expertId2);
		expertIdArrayList.add(expertId3);
		expertIdArrayList.add(expertId4);
		expertIdArrayList.add(expertId5);
		ArrayList<EnterpriseComProjectComment> enterComWorksComments=new ArrayList<EnterpriseComProjectComment>();
		EnterpriseCommonProject enterCommonWork=new EnterpriseCommonProject();
		enterCommonWork.setId(projectid);
		for(int i=0;i<num;i++){
			EnterpriseComProjectComment enterComWorksComment=new EnterpriseComProjectComment();
			enterComWorksComment.setEnterCommmonId(projectid);
			enterComWorksComment.setExpertId(expertIdArrayList.get(i));
			enterComWorksComments.add(enterComWorksComment);
		}

	    for(int i=0;i<num;i++){
	    	commentService.insertEnterComWorksComment(enterComWorksComments.get(i));
	    }
	    //插入费用项
	    double fee1=Double.valueOf(sfee1).doubleValue();
	    double fee2=Double.valueOf(sfee2).doubleValue();
	    double fee3=Double.valueOf(sfee3).doubleValue();
	    double fee4=Double.valueOf(sfee4).doubleValue();
	    double fee5=Double.valueOf(sfee5).doubleValue();
	    ArrayList<ExpertFee> expertFees=new ArrayList<ExpertFee>();
	    ArrayList<Double> feeArrayList=new ArrayList<Double>();
	    feeArrayList.add(fee1);
	    feeArrayList.add(fee2);
	    feeArrayList.add(fee3);
	    feeArrayList.add(fee4);
	    feeArrayList.add(fee5);
	    for(int i=0;i<num;i++){
	    	ExpertFee expertFee=new ExpertFee();
	    	expertFee.setCommentId(enterComWorksComments.get(i).getId());
	    	expertFee.setCommentType(commentType);
	    	expertFee.setFee(feeArrayList.get(i));
	    	expertFees.add(expertFee);
	    }
	    expertFeeService.insertExpertFee(expertFees);
	    //更新状态
	    EPService.updateAssignOfEnterCommonWork(enterCommonWork);
		if(flag==0){
			return "blackManage/expertPageManage/qiyeyibanExpertSperateOverview";
		}
		else {
			EnterpriseCommonProject enterCommonWorks=EPService.getEnterpriseCommonProjectById(projectid);
			ArrayList<Field> fields=fieldService.getField();
			model.put("detail", enterCommonWorks);
			model.put("fieldList", fields);
			return "blackManage/expertPageManage/qiyeyibanExpertSperate";
		}
	}
}
