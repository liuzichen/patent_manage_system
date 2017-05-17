<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目执行情况报表（半年）</title>
	
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
	

<script type="text/javascript">
$(document).ready(function(){

	$("#j789").datebox("setValue", j789); 
	$("#j5").textbox("setValue", j5);
	$("#j6").textbox("setValue", j6);
	document.getElementById("k5").value=k5;
	for(i=6;i<=94;i++){
		$("#k"+i).textbox("setValue", mydata[i]);
	}
});
function save(){
	if(confirm("确认保存执行情况报表？")){
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
	var j5=$("#j5").val();
	var j6=$("#j6").val();
	var j789=$("#j789").datebox("getValue");
	if(j5==""){
		alert("提示：\n\n请填写填报人！");
		return false;
	}
	if(j789==""){
		alert("提示：\n\n请填写填报日期！");
		return false;
	}
	if(j6==""){
		alert("提示：\n\n请填写联系方式！");
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

 <div>
 
     <div class="topnav" >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >项目管理&nbsp;&nbsp; &gt;&nbsp;&nbsp; 阶段管理</font></span>
	   </div>
     </div> 
		 
    <div class="context">
       <div class="titlebox"><span class="title">项目执行情况报表（半年）</span></div>
       <form action="<%=request.getContextPath() %>/enterprise/savehalfyear" name="Form1" id="Form1">
       <input type="hidden" name="sort" id="sort">
       <div class="easyui-tabs" style="width:100%">
       <div title="报告扉页" style="width:100%">
       	<div style="width:100%">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                <tr >
                    <td class="tdname">项目名称：</td>                    
                    <td class="tdcontent1">
                      ${ehtitle.project_name }
                    </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2">
                      ${ehtitle.responsible_unit }
                    </td>
                </tr>
                <tr >
                    <td class="tdname">计划类别：</td>
                    <td class="tdcontent1">
                     ${ehtitle.type }
                    </td>
                    <td class="tdname">单位负责人：</td>
                    <td class="tdcontent2">
                       ${ehtitle.principal }
                    </td>                    
                </tr>
                <tr>
                    <td class="tdname">填报人：</td>
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="j5" id="j5"   value=${ehtitle.informant }>
                    </td>
                    <td class="tdname">填报日期：</td>
                    <td class="tdcontent2">
                      <input class="easyui-datebox mydatebox" type="text" name="j789" id="j789" editable="false" panelHeight="260" panelWidth="200" value=${ehtitle.date }>
                    </td>
                </tr>
                <tr>
                	<td class="tdname">联系电话：</td>
                	<td class="tdcontent2" colspan="3">
                		<input class="easyui-textbox mydatebox" type="text" name="j6" id="j6" value=${ehtitle.phone }>
                	</td>
                </tr>
             </table>
             </div>
       </div>
       <div title="项目执行情况信息表" style="width:100%">
       <div style="width:100%">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	   			<tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、项目基本情况</td>
	   			</tr>
                <tr >
                    <td class="tdname">项目名称：</td>                    
                    <td class="tdcontent1">
                      ${ehinfo.k1 }
                    </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2">
                        ${ehinfo.k2 }
                    </td>
                </tr>
                <tr >
                    <td class="tdname">计划文号：</td>
                    <td class="tdcontent1">
                        ${ehinfo.k3 }
                    </td>
                    <td class="tdname">项目编号：</td>
                    <td class="tdcontent2">
                        ${ehinfo.k4 }
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
                      <select class="mydatebox" id="k5"  name="k5" >
                      			<option value="按计划进行">按计划进行</option>
								<option value="进度超前">进度超前</option>
 								<option value="拖延">拖延</option>
 								<option value="停滞">停滞</option>
                      </select>
                     <script language="javascript">
                      document.getElementById("k5").value = "${ehinfo.k5}"; </script> 
                    </td>
                    
                </tr>
                </table>
                <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                 <tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三、项目资金情况（单位：万元）</td>
	   			</tr>
	   			 <tr >
                    <td class="tdname" style="font-weight:bold;">投资情况</td>
                    <td class="tdname"> 当期计划投资</td>
                    <td class="tdname">当期实际投资</td>
                    <td class="tdname">执行期内累计投资</td>                    
                </tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">单位自筹：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k6" id="k6" value=${ehinfo.k6 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k7" id="k7" value=${ehinfo.k7 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k8" id="k8" value=${ehinfo.k8 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">市财政拨款：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k9" id="k9" value=${ehinfo.k9 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k10" id="k10" value=${ehinfo.k10 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k11" id="k11" value=${ehinfo.k11 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">国家、省财政拨款：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k12" id="k12" value=${ehinfo.k12 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k13" id="k13" value=${ehinfo.k13 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k14" id="k14" value=${ehinfo.k14 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">科技贷款：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k15" id="k15" value=${ehinfo.k15 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k16" id="k16" value=${ehinfo.k16 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k17" id="k17" value=${ehinfo.k17 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">创业投资：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k18" id="k18" value=${ehinfo.k18 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k19" id="k19" value=${ehinfo.k19 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k20" id="k20" value=${ehinfo.k20 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">横向创收：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k21" id="k21" value=${ehinfo.k21 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k22" id="k22" value=${ehinfo.k22 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k23" id="k23" value=${ehinfo.k23 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">合计：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k24" id="k24" value=${ehinfo.k24 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k25" id="k25" value=${ehinfo.k25 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k26" id="k26" value=${ehinfo.k26 }></td>
                <tr>
                <tr >
                    <td class="tdname" style="font-weight:bold;">市财政拨款使用情况</td>
                    <td class="tdname"> 当期支出</td>
                    <td class="tdname">执行期内累计支出</td>
                    <td class="tdname">备注</td>                    
                </tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">1、研发设备费：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k27" id="k27" value=${ehinfo.k27 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k28" id="k28" value=${ehinfo.k28 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k29" id="k29" value=${ehinfo.k29 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">2、合作研发费：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k30" id="k30" value=${ehinfo.k30 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k31" id="k31" value=${ehinfo.k31 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k32" id="k32" value=${ehinfo.k32 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">3、材料费：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k33" id="k33" value=${ehinfo.k33 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k34" id="k34" value=${ehinfo.k34 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k35" id="k35" value=${ehinfo.k35 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">4、测试化验加工费：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k36" id="k36" value=${ehinfo.k36 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k37" id="k37" value=${ehinfo.k37 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k38" id="k38" value=${ehinfo.k38 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">5、燃料动力费：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k39" id="k39" value=${ehinfo.k39 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k40" id="k40" value=${ehinfo.k40 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k41" id="k41" value=${ehinfo.k41 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">6、差旅费：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k42" id="k42" value=${ehinfo.k42 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k43" id="k43" value=${ehinfo.k43 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k44" id="k44" value=${ehinfo.k44 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">7、会议费：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k45" id="k45" value=${ehinfo.k45 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k46" id="k46" value=${ehinfo.k46 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k47" id="k47" value=${ehinfo.k47 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">8、国际合作与交流费：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k48" id="k48" value=${ehinfo.k48 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k49" id="k49" value=${ehinfo.k49 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k50" id="k50" value=${ehinfo.k50 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">9、出版/文献/信息传播/知识产权事务费：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k51" id="k51" value=${ehinfo.k51 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k52" id="k52" value=${ehinfo.k52 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k53" id="k53" value=${ehinfo.k53 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">10、劳务费：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k54" id="k54" value=${ehinfo.k54 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k55" id="k55" value=${ehinfo.k55 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k56" id="k56" value=${ehinfo.k56 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">11、专家咨询费：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k57" id="k57" value=${ehinfo.k57 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k58" id="k58" value=${ehinfo.k58 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k59" id="k59" value=${ehinfo.k59 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">12、管理费：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k60" id="k60" value=${ehinfo.k60 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k61" id="k61" value=${ehinfo.k61 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k62" id="k62" value=${ehinfo.k62 }></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">合计：</td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k63" id="k63" value=${ehinfo.k63 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k64" id="k64" value=${ehinfo.k64 }></td>
                	<td style="text-align:center;"><input class="easyui-textbox" style="width:200px" type="text" name="k65" id="k65" value=${ehinfo.k65 }></td>
                <tr>
             </table>
              <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
              	<tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四、项目产出及成果情况</td>
	   			</tr>
	   			 <tr >
                    <td class="tdname">总投入：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="k66" id="k66" value=${ehinfo.k66 }>万元
                    </td>
                    <td class="tdname">总产值：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="k67" id="k67" value=${ehinfo.k67 }>万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">产品销售收入：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="k68" id="k68" value=${ehinfo.k68 }>万元
                    </td>
                    <td class="tdname">工业增加值：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="k69" id="k69" value=${ehinfo.k69 }>万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">净利润：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="k70" id="k70" value=${ehinfo.k70 }>万元
                    </td>
                    <td class="tdname">缴税总额：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="k71" id="k71" value=${ehinfo.k71 }>万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">创汇：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="k72" id="k72" value=${ehinfo.k72 }>万美元
                    </td>
                    <td class="tdname">新增就业人数：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="k73" id="k73" value=${ehinfo.k73 }>人
                    </td>
                </tr>
                <tr >
                    <td class="tdname">专利申请：</td>                    
                    <td class="tdcontent1" colspan="3">
                      <input class="easyui-textbox mydatebox" type="text" name="k74" id="k74" value=${ehinfo.k74 }>项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中发明专利：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="k75" id="k75" value=${ehinfo.k75 }>项
                    </td>
                    <td class="tdname">其中PCT专利：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="k76" id="k76" value=${ehinfo.k76 }>项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">专利授权：</td>                    
                    <td class="tdcontent1" colspan="3">
                      <input class="easyui-textbox mydatebox" type="text" name="k77" id="k77" value=${ehinfo.k77 }>项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中发明专利：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="k78" id="k78" value=${ehinfo.k78 }>项
                    </td>
                    <td class="tdname">其中PCT专利：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="k79" id="k79" value=${ehinfo.k79 }>项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">软件产品登记：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="k80" id="k80" value=${ehinfo.k80 }>项
                    </td>
                    <td class="tdname">软件著作权登记：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="k81" id="k81" value=${ehinfo.k81 }>项
                    </td>
                </tr>
                 <tr >
                    <td class="tdname">发表科技论文：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="k82" id="k82" value=${ehinfo.k82 } >篇
                    </td>
                    <td class="tdname">出版专著：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="k83" id="k83" value=${ehinfo.k83 } >万字
                    </td>
                </tr>
                <tr >
                    <td class="tdname">形成新产品、新工艺等：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="k84" id="k84" value=${ehinfo.k84 }>项
                    </td>
                    <td class="tdname">其中国家重点新产品：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="k85" id="k85" value=${ehinfo.k85 }>项
                    </td>
                </tr>
                 <tr >
                    <td class="tdname">科技奖励：</td>                    
                    <td class="tdcontent1" colspan="3">
                      <input class="easyui-textbox mydatebox" type="text" name="k86" id="k86" value=${ehinfo.k86 }>项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中国家级：</td>                    
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="k87" id="k87" value=${ehinfo.k87 }>项
                    </td>
                    <td class="tdname">其中省、市级：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="k88" id="k88" value=${ehinfo.k88 }>项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">制定标准：</td>                    
                    <td class="tdcontent1" colspan="3">
                      <input class="easyui-textbox mydatebox" type="text" name="k89" id="k89" value=${ehinfo.k89 }>项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中国家：</td>                    
                    <td class="tdcontent1">
                     <input class="easyui-textbox mydatebox" type="text" name="k90" id="k90" value=${ehinfo.k90 }>项
                    </td>
                    <td class="tdname">其中行业：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="k91" id="k91" value=${ehinfo.k91 }>项
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">建立示范基地、中试平台：</td>                    
                    <td class="tdcontent1" colspan="2">
                      <input class="easyui-textbox mydatebox" type="text" name="k92" id="k92" value=${ehinfo.k92 }>个
                    </td>                
                </tr>
                <tr >
                    <td class="tdname" colspan="2">建立实验室、工程技术研究中心：</td>                    
                    <td class="tdcontent1" colspan="2">
                      <input class="easyui-textbox mydatebox" type="text" name="k93" id="k93" value=${ehinfo.k93 }>个
                    </td>                
                </tr>
                <tr >
                    <td class="tdname" colspan="2">市级以上科技人才与创新团队：</td>                    
                    <td class="tdcontent1" colspan="2">
                      <input class="easyui-textbox mydatebox" type="text" name="k94" id="k94" value=${ehinfo.k94 }>个
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
</body>
</html>