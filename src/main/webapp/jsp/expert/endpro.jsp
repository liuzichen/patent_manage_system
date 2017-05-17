<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业科技项目验收评审</title>
	
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var k1="123";
	var k2="456";
	var k3="2100-1-1";
	$("#k1").textbox("setValue", k1);
	$("#k2").textbox("setValue", k2);
	$("#k3").datebox("setValue", k3); 
});
function check(){
	if(confirm("导出前须保存表单内容\n\n是否现在导出？")){
		return true;
	}
	else{
		return false;
	}
}
function save(){
	if(confirm("确认保存检查意见？")){
		document.getElementById("sort").value="save";
		return true;
	}
	else{
		return false;
	}
}
function sub(){
	var k3=$("#k3").datebox("getValue");
	var k2=document.getElementById("k2").value;
	var k1=document.getElementById("k1").value;
	var advice=document.getElementById("advice").value;
	if(k1==""){
		alert("提示：\n\n请填写编制单位！");
		return false;
	}
	if(k2==""){
		alert("提示：\n\n请填写评审单位！");
		return false;
	}
	if(k3==""){
		alert("提示：\n\n请填写评审日期！");
		return false;
	}
	if(advice==""){
		alert("提示：\n\n请填写专家意见！");
		return false;
	}
	if(confirm("确认提交回复？")){
		document.getElementById("sort").value="submit";
		return true;
	}
	else{
		return false;
	}
}
</script>
	
</head>

<body>
<%String a="      11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"; %>
 <div class="commonPage">
 
     <div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >项目评审&nbsp;&nbsp; &gt;&nbsp;&nbsp; 企业项目评审</font></span>
	   </div>
     </div> 
		 
    <div class="context">
       <div class="titlebox"><span class="title">科技项目验收评审</span></div>
	   	<form method="post" action="<%=request.getContextPath()%>/expert/commentEnterProject?workId=${detail.id}&type=项目结题评审" name="Form1" id="Form1">
	   	<input type="hidden" name="sort" id="sort">
	   	 <div class="easyui-tabs" style="width:100%">
	   	 <div title="报告扉页" style="width:100%">
       	<div style="width:100%">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                <tr >
                    <td class="tdname">项目名称：</td>                    
                    <td class="tdcontent1"></td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2"></td>
                </tr>
                <tr >
                    <td class="tdname">项目编号：</td>
                    <td class="tdcontent1"></td>
                    <td class="tdname">技术领域：</td>
                    <td class="tdcontent2"></td>                    
                </tr>
                <tr>
                    <td class="tdname">归口管理部门：</td>
                    <td class="tdcontent1"></td>
                    <td class="tdname">起止日期：</td>
                    <td class="tdcontent2"></td>
                </tr>
                <tr >
                    <td class="tdname">联系人：</td>
                    <td class="tdcontent1"></td>
                    <td class="tdname">电话：</td>
                    <td class="tdcontent2"></td>                    
                </tr>
                <tr>
                <td class="tdname" rowspan="4">附件清单：</td>
                   <td colspan="3" >
                   		
                   </td>
                </tr>
             </table>
             </div>
       </div>
       <div title="项目验收信息表" style="width:100%">
              <div style="width:100%">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	   			<tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、项目基本情况</td>
	   			</tr>
                <tr >
                    <td class="tdname">项目名称：</td>                    
                    <td class="tdcontent1"></td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2"></td>
                </tr>
                <tr >
                    <td class="tdname">计划文号：</td>
                    <td class="tdcontent1"></td>
                    <td class="tdname">项目编号：</td>
                    <td class="tdcontent2"></td>                    
                </tr>
                </table>
                <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA" >
                <tr>
                
	   			<td colspan="2" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二、项目进展情况</td>
	   			</tr>
	   			 <tr >
                    <td class="tdname">进展情况：</td>                    
                    <td class="tdcontent2" ></td>
                    
                </tr>
                </table>
                <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                 <tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三、项目资金情况（单位：万元）</td>
	   			</tr>
	   			 <tr >
                    <td class="tdname" style="font-weight:bold;">投资情况</td>
                    <td class="tdname"> 计划投资</td>
                    <td class="tdname">当期实际投资</td>
                    <td class="tdname">执行期内累计投资</td>                    
                </tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">单位自筹：</td>
                	<td style="text-align:center;"></td>
                	<td style="text-align:center;"></td>
                	<td style="text-align:center;"></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">市财政拨款：</td>
                	<td style="text-align:center;"></td>
                	<td style="text-align:center;"></td>
                	<td style="text-align:center;"></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">国家、省财政拨款：</td>
                	<td style="text-align:center;"></td>
                	<td style="text-align:center;"></td>
                	<td style="text-align:center;"></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">其他：</td>
                	<td style="text-align:center;"></td>
                	<td style="text-align:center;"></td>
                	<td style="text-align:center;"></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">合计：</td>
                	<td style="text-align:center;"></td>
                	<td style="text-align:center;"></td>
                	<td style="text-align:center;"></td>
                <tr>
             </table>
              <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
              	<tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四、项目产出及成果情况</td>
	   			</tr>
	   			 <tr >
                    <td class="tdname">总投入：</td>                    
                    <td class="tdcontent1">
                      万元
                    </td>
                    <td class="tdname">总产值：</td>
                    <td class="tdcontent2">
                       万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">产品销售收入：</td>                    
                    <td class="tdcontent1">
                      万元
                    </td>
                    <td class="tdname">工业增加值：</td>
                    <td class="tdcontent2">
                      万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">净利润：</td>                    
                    <td class="tdcontent1">
                      万元
                    </td>
                    <td class="tdname">缴税总额：</td>
                    <td class="tdcontent2">
                       万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">创汇：</td>                    
                    <td class="tdcontent1">
                      万美元
                    </td>
                    <td class="tdname">新增就业人数：</td>
                    <td class="tdcontent2">
                       人
                    </td>
                </tr>
                <tr >
                    <td class="tdname">专利申请：</td>                    
                    <td class="tdcontent1" colspan="3">
                      项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中发明专利：</td>                    
                    <td class="tdcontent1">
                      项
                    </td>
                    <td class="tdname">其中PCT专利：</td>
                    <td class="tdcontent2">
                       项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">专利授权：</td>                    
                    <td class="tdcontent1" colspan="3">
                      项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中发明专利：</td>                    
                    <td class="tdcontent1">
                      项
                    </td>
                    <td class="tdname">其中PCT专利：</td>
                    <td class="tdcontent2">
                       项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">软件产品登记：</td>                    
                    <td class="tdcontent1">
                      项
                    </td>
                    <td class="tdname">软件著作权登记：</td>
                    <td class="tdcontent2">
                      项
                    </td>
                </tr>
                 <tr >
                    <td class="tdname">发表科技论文：</td>                    
                    <td class="tdcontent1">
                    篇
                    </td>
                    <td class="tdname">出版专著：</td>
                    <td class="tdcontent2">
                      万字
                    </td>
                </tr>
                <tr >
                    <td class="tdname">形成新产品、新工艺等：</td>                    
                    <td class="tdcontent1">
                      项
                    </td>
                    <td class="tdname">其中国家重点新产品：</td>
                    <td class="tdcontent2">
                       项
                    </td>
                </tr>
                 <tr >
                    <td class="tdname">科技奖励：</td>                    
                    <td class="tdcontent1" colspan="3">
                      项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中国家级：</td>                    
                    <td class="tdcontent1">
                    项
                    </td>
                    <td class="tdname">其中省、市级：</td>
                    <td class="tdcontent2">
                       项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">制定标准：</td>                    
                    <td class="tdcontent1" colspan="3">
                    项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中国家：</td>                    
                    <td class="tdcontent1">
                      项
                    </td>
                    <td class="tdname">其中行业：</td>
                    <td class="tdcontent2">
                       项
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">建立示范基地、中试平台：</td>                    
                    <td class="tdcontent1" colspan="2">
                      个
                    </td>                
                </tr>
                <tr >
                    <td class="tdname" colspan="2">建立实验室、工程技术研究中心：</td>                    
                    <td class="tdcontent1" colspan="2">
                      个
                    </td>                
                </tr>
                <tr >
                    <td class="tdname" colspan="2">市级以上科技人才与创新团队：</td>                    
                    <td class="tdcontent1" colspan="2">
                      个
                    </td>                
                </tr>
              </table>
           </div>
       </div>
       <div title="项目经费决算表" style="width:100%">
	   <div style="width:100%">
	   	<input type="hidden" name="sort" id="sort">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                <tr >
                    <td class="tdname">项目名称：</td>                    
                    <td class="tdcontent1" colspan="2">
                      
                    </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="6">收入</td>         
                </tr>
                <tr >
                    <td class="tdname" colspan="2">科目</td>                                    
                    <td class="tdname" colspan="2">预算数（万元）</td>
                    <td class="tdname" colspan="2">实际数（万元）</td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">合计</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">市科技计划拨款</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">单位自筹</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">自筹</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>    
                <tr >
                    <td class="tdname" colspan="6">支出</td>         
                </tr>
                <tr >
                    <td class="tdname" colspan="2">科目</td>                                    
                    <td class="tdname" colspan="2">金额(万元)</td>
                    <td class="tdname" colspan="2">市科技计划拨款</td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">合计</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">1．设备费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">（1）购置设备费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">（2）试制设备费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">（3）设备改造与租赁费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">2.材料费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">3.测试化验加工费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">4.燃料动力费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                
                <tr >
                    <td class="tdname" colspan="2">5．差旅费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">6．会议费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">7．国际合作与交流费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">8．出版/文献/信息传播/知识产权事务费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">9．劳务费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">10．专家咨询费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">11．管理费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">12．其他</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	
                    </td>
                </tr>       
           </table>
         </div>
	   	</div>
	   	 <div title="项目结项意见表" style="width:100%">
       	<div style="width:100%">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                <tr >
                    <td class="tdname">项目名称：</td>                    
                    <td class="tdcontent1">
                      <%=request.getAttribute("name")%>
                    </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2">
                       <%=request.getAttribute("age")%>
                    </td>
                </tr>
                <tr >
                    <td class="tdname">计划文号：</td>
                    <td class="tdcontent1">
                       <%=request.getAttribute("age")%>
                    </td>
                    <td class="tdname">项目编号：</td>
                    <td class="tdcontent2">
                       <%=request.getAttribute("company")%>
                    </td>                    
                </tr>
                <tr >
                    <td class="tdname">编制单位：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="k1" id="k1" >
                    </td>
                    <td class="tdname">评审单位：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="k2" id="k2" >
                    </td>                    
                </tr>
                <tr>
                    <td class="tdname">评审日期：</td>
                    <td class="tdcontent1">
                      <input class="easyui-datebox mydatebox" type="text" name="k3" id="k3" editable="false" panelHeight="260" panelWidth="200" >
                    </td>
                    <td style="background-color:#F2F2F2;width:15%"colspan="2" >
                   	 <div align="center" ><a href="#" class="easyui-linkbutton button" style="width:120px;height:25px">相关附件下载</a></div></td>                    
                </tr>             
             <tr>
             	 <td  class="tdname" align="center" >专家意见</td>
            	 <td  align="center" height="500px" colspan="3">
	            	 <div class="tdcontent3">
		               <textarea id="advice" name="advice" cols="40" rows="12" style="width:90%;height:100%;"></textarea>
		             </div> 
             </td>
             </tr>
             
            <tr>
	             <td align="center" colspan="4">
	             	<div style="margin-top:20px; left:40%; margin-bottom:20px;float:left; position:relative" ><a href="javascript:void(document.Form1.submit())" style="height:35px;width:70px;font-size:16px;" class="easyui-linkbutton button" onclick="return sub();">提&nbsp;&nbsp;交</a>
	             	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <a href="javascript:void(document.Form1.submit())" style="height:35px;width:70px;font-size:16px" class="easyui-linkbutton button" onclick="return save();">保&nbsp;&nbsp;存</a></div>
		            <div style="margin-top:20px; margin-bottom:20px;float:right; position:relative; right:20px"><a href="javascript:void(document.Form1.submit())" style="height:35px;width:100px;font-size:16px" class="easyui-linkbutton button" onclick="return check();">导出为word</a></div>
		            
		        </td>
	        </tr>
	        
           </table>
           </div>
           </div>
           </div>
          </form>
	   	</div>
	
   </div>   
 	     
 </div>
</body>
</html>