
<%@ page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目验收申请</title>
	
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
	

<style type="text/css">
	
	.persional{
		width:100%;
		position:relative;
		background-color:#F7F7F7;
		border-collapse:collapse;
		border-color:#DEE5EA;
		color:#5F6467;
	}
	
	.prodTab{
		width:100%;
		height:100%;
		position:relative;
		border-collapse:collapse;
	
	}
	.prodTab td{
	
	     height:25px;
	     text-align:center;
	     text-indent:10;
	     font-size:14px;
	     border-color:#DEE5EA;
	     color:#5F6467;
	}
	
		
	#tabtitle{
		height:30px;
		background-color:#CDE8F9;
		font-weight:bolder;
		border:0;
		font-size:14px;
		color:#2C3E4B;
	}
	
	#tabtitle1{
		border:1;
		width:15.1%;
		height:400px;
		background-color:#F2F2F2;
		font-size:16px;
	}		
	.tdname{height:35px;text-align:center;background-color:#F2F2F2;width:15%;}
	.tdcontent1{width:35%;text-align:center;}
	.tdcontent2{width:35%;text-align:center;}
	.mydatebox{width:300px;}
	.tdcontent3{padding-top:20px;height:100%;padding-bottom:20px;}
</style>
<script type="text/javascript">
$(document).ready(function(){
	if("${detail.state}"!="待修改"){
		var ctab = $('#mytabs').tabs('getTab', '评审结果').panel('options').tab;
		 ctab.hide();
	}
	$("#stime").datebox("setValue", stime); 
	$("#etime").datebox("setValue", etime);
	$("#ctime").datebox("setValue", ctime);
	$("#wtime").datebox("setValue", wtime);
	$("#expl").textbox("setValue", expl);
	var a = new Array();
<%-- 	<%
	  for(int i=0;i<b.length;i++)
	  {
	%>
	       a.push('<%=b[i]%>');
	<%
	   }
	%> --%>
	for(var i=0;i<a.length;i++){
	$("input[name=love][value='"+a[i]+"']").attr('checked','true');
	}

});
function save(){
	if(confirm("确认保存检查意见？")){
		document.getElementById("sort").value="save";
		return true;
	}
	else{
		return false;
	}
}
function check(){
	if(confirm("导出前须保存表单内容\n\n是否现在导出？")){
		return true;
	}
	else{
		return false;
	}
}
function sub(){
	var wtime=$("#wtime").datebox("getValue");
	var stime=$("#stime").datebox("getValue");
	var etime=$("#etime").datebox("getValue");
	var ctime=$("#ctime").datebox("getValue");
	var expl=document.getElementById("expl").value;
	var presention=document.getElementById("presention").value;
	var advice=document.getElementById("advice").value;

	if(expl==""){
		alert("提示：\n\n请填写专家组长！");
		return false;
	}
	if(wtime==""){
		alert("提示：\n\n请填写填报日期！");
		return false;
	}
	if(stime==""){
		alert("提示：\n\n请填写项目启动时间！");
		return false;
	}
	if(etime==""){
		alert("提示：\n\n请填写项目截止时间！");
		return false;
	}
	if(ctime==""){
		alert("提示：\n\n请填写评审日期！");
		return false;
	}
	if(presention==""){
		alert("提示：\n\n请填写检查情况评述！");
		return false;
	}
	if(advice==""){
		alert("提示：\n\n请填写问题及意见！");
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

 <div class="commonPage">
 
     <div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >项目评审&nbsp;&nbsp; &gt;&nbsp;&nbsp; 企业项目评审</font></span>
	   </div>
     </div> 
		 
    <div class="context">
       <div class="titlebox"><span class="title">项目验收报告</span></div>
       <form action="<%=request.getContextPath() %>/enterprise/saveendproject" name="Form1" id="Form1">
      <div class="easyui-tabs" style="width:100%" id="mytabs">
       <div title="报告扉页" style="width:100%">
       	<div style="width:100%">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                <tr >
                    <td class="tdname">项目名称：</td>                    
                    <td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="G1" id="G1" value=${pcf.g1 }>
                                        </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2">
					<input class="easyui-textbox mydatebox" type="text" name="G2" id="G2" value=${pcf.g2 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname">项目编号：</td>
                    <td class="tdcontent1">
                   <input class="easyui-textbox mydatebox" type="text" name="G3" id="G3" value=${pcf.g3 }>
                    </td>
                    <td class="tdname">技术领域：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="G4" id="G4" value=${pcf.g4 } >
                    </td>                    
                </tr>
                <tr>
                    <td class="tdname">归口管理部门：</td>
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="G5" id="G5" value=${pcf.g5 }>
                    </td>
                    <td class="tdname">起止日期：</td>
                    <td class="tdcontent2">
                      <input class="easyui-datebox mydatebox" type="text" name="G6" id="G6" editable="false" panelHeight="260" panelWidth="200" value=${pcf.g6 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname">联系人：</td>
                    <td class="tdcontent1">
                   <input class="easyui-textbox mydatebox" type="text" name="G7" id="G7" value=${pcf.g7 }>
                    </td>
                    <td class="tdname">电话：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="G8" id="G8" value=${pcf.g8 }>
                    </td>                    
                </tr>
                <tr>
                <td class="tdname" rowspan="4">附件清单：</td>
                <td  align="center" height="500px" colspan="2">
	            	 <div class="tdcontent3">
		               <textarea id="G9" name="G9" cols="40" rows="12" style="width:90%;height:100%;"  >${pcf.g9 }</textarea>
		             </div> 
                </td>
                   <td>
                   	 <div class="tdcontent3">
		               <div style="word-wrap:break-word;word-break:break-all;margin:0 auto;width:95%;">
	     					<pre style="width:100%;white-space:pre-wrap; font-size:16px">
附件应包含如下内容：
大连市科技计划项目验收信息表
大连市科技计划项目验收评价报告
项目经费决算表
发表专著、论文清单
知识产权证书或受理文件（复印件）
技术标准备案文件（复印件）
材料、产品检验或测试报告（复印件）
成果评价证书、科技成果登记表（复印件）
科技奖励证书（复印件）
项目经费财务审计报告（原件）
用户意见书
项目合同书（复印件）
其他（详细注明）
</pre>
	    				 </div>
		             </div> 
<!--                    		<input name="G9" type="checkbox" id="G9" value="1" >大连市科技计划项目验收信息表
                        <input name="G9" type="checkbox" id="G9" value="2" >大连市科技计划项目验收评价报告
                        <input name="G9" type="checkbox" id="G9" value="3" >项目经费决算表
                        <input name="G9" type="checkbox" id="G9" value="4" >发表专著、论文清单
                        <input name="G9" type="checkbox" id="G9" value="5" >知识产权证书或受理文件（复印件）
                        <input name="G9" type="checkbox" id="G9" value="6" >技术标准备案文件（复印件）
                        <input name="G9" type="checkbox" id="G9" value="7" >材料、产品检验或测试报告（复印件）
                        <input name="G9" type="checkbox" id="G9" value="8" >成果评价证书、科技成果登记表（复印件）
                        <input name="G9" type="checkbox" id="G9" value="9" >科技奖励证书（复印件）
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="G9" type="checkbox" id="G9" value="10" >项目经费财务审计报告（原件）
                        <input name="G9" type="checkbox" id="G9" value="11" >用户意见书
                        <input name="G9" type="checkbox" id="G9" value="12" >项目合同书（复印件）
                        <input name="G9" type="checkbox" id="G9" value="13" >其他（详细注明） -->
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
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="K1" id="K1" value=${pci.k1 }>
                    </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="K2" id="K2" value=${pci.k2 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname">计划文号：</td>
                    <td class="tdcontent1">
                       <input class="easyui-textbox mydatebox" type="text" name="K3" id="K3" value=${pci.k3 }>
                    </td>
                    <td class="tdname">项目编号：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="K4" id="K4" value=${pci.k4 }>
                    </td>                    
                </tr>
                </table>
                <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA" >
                <tr>
                
	   			<td colspan="2" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二、项目进展情况</td>
	   			</tr>
	   			 <tr >
                    <td class="tdname">进展情况：</td>                    
                    <td class="tdcontent2" >
                      <input class="easyui-textbox mydatebox" type="text" name="K5" id="K5" value=${pci.k5 }>
                    </td>
                    
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
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K6" id="K6" value=${pci.k6 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K7" id="K7" value=${pci.k7 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K8" id="K8" value=${pci.k8 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">市财政拨款：</td>
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K9" id="K9" value=${pci.k9 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K10" id="K10" value=${pci.k10 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K11" id="K11" value=${pci.k11 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">国家、省财政拨款：</td>
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K12" id="K12" value=${pci.k12 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K13" id="K13" value=${pci.k13 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K14" id="K14" value=${pci.k14 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">其他：</td>
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K15" id="K15" value=${pci.k15 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K16" id="K16" value=${pci.k16 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K17" id="K17" value=${pci.k17 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">合计：</td>
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K18" id="K18" value=${pci.k18 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K19" id="K19" value=${pci.k19 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox mydatebox" type="text" name="K20" id="K20" value=${pci.k20 }></td>
                <tr>
             </table>
              <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
              	<tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四、项目产出及成果情况</td>
	   			</tr>
	   			 <tr >
                    <td class="tdname">总投入：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="K21" id="K21" value=${pci.k21 }>万元
                    </td>
                    <td class="tdname">总产值：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="K22" id="K22" value=${pci.k22 }>万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">产品销售收入：</td>                    
                    <td class="tdcontent1">
                       <input class="easyui-textbox mydatebox" type="text" name="K23" id="K23" value=${pci.k23 }>万元
                    </td>
                    <td class="tdname">工业增加值：</td>
                    <td class="tdcontent2">
                     <input class="easyui-textbox mydatebox" type="text" name="K24" id="K24" value=${pci.k24 }>  万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">净利润：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="K25" id="K25" value=${pci.k25 }>万元
                    </td>
                    <td class="tdname">缴税总额：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="K26" id="K26" value=${pci.k26 }>万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">创汇：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="K27" id="K27" value=${pci.k27 }>万美元
                    </td>
                    <td class="tdname">新增就业人数：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="K28" id="K28" value=${pci.k28 }>人
                    </td>
                </tr>
                <tr >
                    <td class="tdname">专利申请：</td>                    
                    <td class="tdcontent1" colspan="3">
                      <input class="easyui-textbox mydatebox" type="text" name="K29" id="2K9" value=${pci.k29 }>项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中发明专利：</td>                    
                    <td class="tdcontent1">
                   <input class="easyui-textbox mydatebox" type="text" name="K30" id="K30" value=${pci.k30 }>  项
                    </td>
                    <td class="tdname">其中PCT专利：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="K31" id="K31" value=${pci.k31 }>项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">专利授权：</td>                    
                    <td class="tdcontent1" colspan="3">
                      <input class="easyui-textbox mydatebox" type="text" name="K32" id="K32" value=${pci.k32 }>项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中发明专利：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="K33" id="K33" value=${pci.k33 }>项
                    </td>
                    <td class="tdname">其中PCT专利：</td>
                    <td class="tdcontent2">
                      <input class="easyui-textbox mydatebox" type="text" name="K34" id="K34" value=${pci.k34 }> 项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">软件产品登记：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="K35" id="K35" value=${pci.k35 }>项
                    </td>
                    <td class="tdname">软件著作权登记：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="K36" id="K36" value=${pci.k36 }>项
                    </td>
                </tr>
                 <tr >
                    <td class="tdname">发表科技论文：</td>                    
                    <td class="tdcontent1">
                     <input class="easyui-textbox mydatebox" type="text" name="K37" id="K37" value=${pci.k37 }> 篇
                    </td>
                    <td class="tdname">出版专著：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="K38" id="K38" value=${pci.k38 }>万字
                    </td>
                </tr>
                <tr >
                    <td class="tdname">形成新产品、新工艺等：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="K39" id="K39" value=${pci.k39 }>项
                    </td>
                    <td class="tdname">其中国家重点新产品：</td>
                    <td class="tdcontent2">
                      <input class="easyui-textbox mydatebox" type="text" name="K40" id="K40" value=${pci.k40 }> 项
                    </td>
                </tr>
                 <tr >
                    <td class="tdname">科技奖励：</td>                    
                    <td class="tdcontent1" colspan="3">
                      <input class="easyui-textbox mydatebox" type="text" name="K41" id="K41" value=${pci.k41 }>项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中国家级：</td>                    
                    <td class="tdcontent1">
                    <input class="easyui-textbox mydatebox" type="text" name="K42" id="K42" value=${pci.k42 }> 项
                    </td>
                    <td class="tdname">其中省、市级：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="K43" id="K43" value=${pci.k43 }>项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">制定标准：</td>                    
                    <td class="tdcontent1" colspan="3">
                      <input class="easyui-textbox mydatebox" type="text" name="K44" id="K44" value=${pci.k44 } >项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中国家：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="K45" id="K45" value=${pci.k45 } >项
                    </td>
                    <td class="tdname">其中行业：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="K46" id="K46" value=${pci.k46 }>项
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">建立示范基地、中试平台：</td>                    
                    <td class="tdcontent1" colspan="2">
                      <input class="easyui-textbox mydatebox" type="text" name="K47" id="K47" value=${pci.k47 } >个
                    </td>                
                </tr>
                <tr >
                    <td class="tdname" colspan="2">建立实验室、工程技术研究中心：</td>                    
                    <td class="tdcontent1" colspan="2">
                      <input class="easyui-textbox mydatebox" type="text" name="K48" id="K48" value=${pci.k48 }>个
                    </td>                
                </tr>
                <tr >
                    <td class="tdname" colspan="2">市级以上科技人才与创新团队：</td>                    
                    <td class="tdcontent1" colspan="2">
                      <input class="easyui-textbox mydatebox" type="text" name="K49" id="K49" value=${pci.k49 }>个
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
                    <td class="tdname" colspan="2">项目名称：</td>                    
                    <td class="tdcontent1" colspan="2">
                      <input class="easyui-textbox mydatebox" type="text" name="I1" id="I1" value=${pcb.i1 }>
                    </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I2" id="I2" value=${pcb.i2 }>
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
                    	<input class="easyui-textbox mydatebox" type="text" name="I3" id="I3" value=${pcb.i3 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I4" id="I4" value=${pcb.i4 } >
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">市科技计划拨款</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I5" id="I5" value=${pcb.i5 } >
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I6" id="I6" value=${pcb.i6 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">单位自筹</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I7" id="I7" value=${pcb.i7 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I8" id="I8" value=${pcb.i8 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">自筹</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I9" id="I9" value=${pcb.i9 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I10" id="I10" value=${pcb.i10 }>
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
                    	<input class="easyui-textbox mydatebox" type="text" name="I11" id="I11" value=${pcb.i11 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I12" id="I12" value=${pcb.i12 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">1．设备费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I13" id="I13" value=${pcb.i13 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I14" id="I14" value=${pcb.i14 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">（1）购置设备费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I15" id="I15" value=${pcb.i15 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I16" id="I16" value=${pcb.i16 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">（2）试制设备费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I17" id="I17" value=${pcb.i17 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I18" id="I18" value=${pcb.i18 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">（3）设备改造与租赁费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I19" id="I19" value=${pcb.i19 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I20" id="I20" value=${pcb.i20 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">2.材料费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I21" id="I21" value=${pcb.i21 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I22" id="I22" value=${pcb.i22 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">3.测试化验加工费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I23" id="I23" value=${pcb.i23 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I24" id="I24" value=${pcb.i24 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">4.燃料动力费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I25" id="I25" value=${pcb.i25 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I26" id="I26" value=${pcb.i26 }>
                    </td>
                </tr>
                
                <tr >
                    <td class="tdname" colspan="2">5．差旅费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I27" id="I27" value=${pcb.i27 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I28" id="I28" value=${pcb.i28 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">6．会议费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I29" id="I29" value=${pcb.i29 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I30" id="I30" value=${pcb.i30 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">7．国际合作与交流费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I31" id="I31" value=${pcb.i31 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I32" id="I32" value=${pcb.i32 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">8．出版/文献/信息传播/知识产权事务费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I33" id="I33" value=${pcb.i33 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I34" id="I34" value=${pcb.i34 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">9．劳务费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I35" id="I35" value=${pcb.i35 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I36" id="I36" value=${pcb.i36 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">10．专家咨询费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I37" id="I37" value=${pcb.i37 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I38" id="I38" value=${pcb.i38 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">11．管理费</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I39" id="I39" value=${pcb.i39 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I40" id="I40" value=${pcb.i40 }>
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">12．其他</td>                                    
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I41" id="I41" value=${pcb.i41 }>
                    </td>
                    <td class="tdcontent2" colspan="2">
                    	<input class="easyui-textbox mydatebox" type="text" name="I42" id="I42" value=${pcb.i42 }>
                    </td>
                </tr>
             <tr>
	             <td align="center" colspan="6">
	             	<div style="margin-top:20px; left:40%; margin-bottom:20px;float:left; position:relative" ><a href="javascript:void(document.Form1.submit())" style="height:35px;width:70px;font-size:16px;" class="easyui-linkbutton button" onclick="return sub();">提&nbsp;&nbsp;交</a>
	             	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <a href="javascript:void(document.Form1.submit())" style="height:35px;width:70px;font-size:16px" class="easyui-linkbutton button" onclick="return save();">保&nbsp;&nbsp;存</a></div>
		            <div style="margin-top:20px; margin-bottom:20px;float:right; position:relative; right:20px"><a href="<%=request.getContextPath() %>/*******.do" style="height:35px;width:100px;font-size:16px" class="easyui-linkbutton button" onclick="return *****;">上传附件</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <a href="<%=request.getContextPath() %>/commitmiddledownload.do" style="height:35px;width:100px;font-size:16px" class="easyui-linkbutton button" onclick="return check();">导出为word</a></div>
		            
		        </td>
	        </tr>
	        
           </table>
         </div>
	   	</div>
	   	<div title="评审结果" style="width:100%" id="reviewresult">
       			<div style="width:100%">
       			<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA"> 
       			<tr>
             	 <td  class="tdname" align="center" >评审结果</td>
            	 <td  align="center" height="100px" colspan="3">
	            	 <div style="word-wrap:break-word;word-break:break-all;margin:0 auto;width:95%;">
	     					<pre style="width:100%;white-space:pre-wrap; font-size:16px"></pre>
	    				 </div>
		            
             </td>
             </tr>           
       			 <tr>
             	 <td  class="tdname" align="center" >主要问题评述</td>
            	 <td  align="center" height="400px" colspan="3">
	            	 <div style="word-wrap:break-word;word-break:break-all;margin:0 auto;width:95%;">
	     					<pre style="width:100%;white-space:pre-wrap; font-size:16px"></pre>
	    				 </div>
		           
             </td>
             </tr>
               
             </table>
       			</div>
       	</div>
	</div>
	 </form>
   </div>   
 	     
 </div>
</body>
</html>