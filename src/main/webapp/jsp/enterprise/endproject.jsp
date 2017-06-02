<%@ page import="com.hibernate.beans.Intermediateinspection"%>
<%@ page import="com.hibernate.beans.Intermediateinspectioninfo"%>
<%@ page import="com.hibernate.beans.Coverofintermediateinspection"%>
<%@ page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目验收申请</title>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css" />
<script
	src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>

<%Intermediateinspection ii=(Intermediateinspection) request.getAttribute("ii"); %>
<%Coverofintermediateinspection coii=(Coverofintermediateinspection) request.getAttribute("coii"); %>
<%Intermediateinspectioninfo iii=(Intermediateinspectioninfo) request.getAttribute("iii"); %>
<style type="text/css">
.persional {
	width: 100%;
	position: relative;
	background-color: #F7F7F7;
	border-collapse: collapse;
	border-color: #DEE5EA;
	color: #5F6467;
}

.prodTab {
	width: 100%;
	height: 100%;
	position: relative;
	border-collapse: collapse;
}

.prodTab td {
	height: 25px;
	text-align: center;
	text-indent: 10;
	font-size: 14px;
	border-color: #DEE5EA;
	color: #5F6467;
}

#tabtitle {
	height: 30px;
	background-color: #CDE8F9;
	font-weight: bolder;
	border: 0;
	font-size: 14px;
	color: #2C3E4B;
}

#tabtitle1 {
	border: 1;
	width: 15.1%;
	height: 400px;
	background-color: #F2F2F2;
	font-size: 16px;
}

.tdname {
	height: 35px;
	text-align: center;
	background-color: #F2F2F2;
	width: 15%;
}

.tdcontent1 {
	width: 35%;
	text-align: center;
}

.tdcontent2 {
	width: 35%;
	text-align: center;
}

.mydatebox {
	width: 300px;
}

.tdcontent3 {
	padding-top: 20px;
	height: 100%;
	padding-bottom: 20px;
}
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
	<%
	  for(int i=0;i<b.length;i++)
	  {
	%>
	       a.push('<%=b[i]%>');
	<%
	   }
	%>
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
	var G1 = document.getElementById("G1").value;
	var G2 = document.getElementById("G2").value;
	var G3 = document.getElementById("G3").value;
	var G4 = document.getElementById("G4").value;
	var G5 = document.getElementById("G5").value;
	var G6 = document.getElementById("G6").value;
	var G7 = document.getElementById("G7").value;
	var G8 = document.getElementById("G8").value;
	var G9 = document.getElementById("G9").value;  //该项为复选项数组，修改。
	
	var K1 = document.getElementById("K1").value;
	var K2 = document.getElementById("K2").value;
	var K3 = document.getElementById("K3").value;
	var K4 = document.getElementById("K4").value;
	var K5 = document.getElementById("K5").value;
	var K6 = document.getElementById("K6").value;
	var K7 = document.getElementById("K7").value;
	var K8 = document.getElementById("K8").value;
	var K9 = document.getElementById("K9").value;
	var K10 = document.getElementById("K10").value;
	var K11 = document.getElementById("K11").value;
	var K12 = document.getElementById("K12").value;
	var K13 = document.getElementById("K13").value;
	var K14 = document.getElementById("K14").value;
	var K15 = document.getElementById("K15").value;
	var K16 = document.getElementById("K16").value;
	var K17 = document.getElementById("K17").value;
	var K18 = document.getElementById("K18").value;
	var K19 = document.getElementById("K19").value;
	var K20 = document.getElementById("K20").value;
	var K21 = document.getElementById("K21").value;
	var K22 = document.getElementById("K22").value;
	var K23 = document.getElementById("K23").value;
	var K24 = document.getElementById("K24").value;
	var K25 = document.getElementById("K25").value;
	var K26 = document.getElementById("K26").value;
	var K27 = document.getElementById("K27").value;
	var K28 = document.getElementById("K28").value;
	var K29 = document.getElementById("K29").value;
	var K30 = document.getElementById("K30").value;
	var K31 = document.getElementById("K31").value;
	var K32 = document.getElementById("K32").value;
	var K33 = document.getElementById("K33").value;
	var K34 = document.getElementById("K34").value;
	var K35 = document.getElementById("K35").value;
	var K36 = document.getElementById("K36").value;
	var K37 = document.getElementById("K37").value;
	var K38 = document.getElementById("K38").value;
	var K39 = document.getElementById("K39").value;
	var K40 = document.getElementById("K40").value;
	var K41 = document.getElementById("K41").value;
	var K42 = document.getElementById("K42").value;
	var K43 = document.getElementById("K43").value;
	var K44 = document.getElementById("K44").value;
	var K45 = document.getElementById("K45").value;
	var K46 = document.getElementById("K46").value;
	var K47 = document.getElementById("K47").value;
	var K48 = document.getElementById("K48").value;
	var K49 = document.getElementById("K49").value;
	
	var I1 = document.getElementById("I1").value;
	var I2 = document.getElementById("I2").value;
	var I3 = document.getElementById("I3").value;
	var I4 = document.getElementById("I4").value;
	var I5 = document.getElementById("I5").value;
	var I6 = document.getElementById("I6").value;
	var I7 = document.getElementById("I7").value;
	var I8 = document.getElementById("I8").value;
	var I9 = document.getElementById("I9").value;
	var I10 = document.getElementById("I10").value;
	var I11 = document.getElementById("I11").value;
	var I12 = document.getElementById("I12").value;
	var I13 = document.getElementById("I13").value;
	var I14 = document.getElementById("I14").value;
	var I15 = document.getElementById("I15").value;
	var I16 = document.getElementById("I16").value;
	var I17 = document.getElementById("I17").value;
	var I18 = document.getElementById("I18").value;
	var I19 = document.getElementById("I19").value;
	var I20 = document.getElementById("I20").value;
	var I21 = document.getElementById("I21").value;
	var I22 = document.getElementById("I22").value;
	var I23 = document.getElementById("I23").value;
	var I24 = document.getElementById("I24").value;
	var I25 = document.getElementById("I25").value;
	var I26 = document.getElementById("I26").value;
	var I27 = document.getElementById("I27").value;
	var I28 = document.getElementById("I28").value;
	var I29 = document.getElementById("I29").value;
	var I30 = document.getElementById("I30").value;
	var I31 = document.getElementById("I31").value;
	var I32 = document.getElementById("I32").value;
	var I33 = document.getElementById("I33").value;
	var I34 = document.getElementById("I34").value;
	var I35 = document.getElementById("I35").value;
	var I36 = document.getElementById("I36").value;
	var I37 = document.getElementById("I37").value;
	var I38 = document.getElementById("I38").value;
	var I39 = document.getElementById("I39").value;
	var I40 = document.getElementById("I40").value;
	var I41 = document.getElementById("I41").value;
	var I42 = document.getElementById("I42").value;
	
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

		<div class="topnav">
			<div class="path">
				<span><font>当前位置:</font></span> <span><font>项目评审&nbsp;&nbsp;
						&gt;&nbsp;&nbsp; 企业项目评审</font></span>
			</div>
		</div>

		<div class="context">
			<div class="titlebox">
				<span class="title">项目验收报告</span>
			</div>
			<form
				action="<%=request.getContextPath() %>/intermediateinspection.do"
				name="Form1" id="Form1">
				<div class="easyui-tabs" style="width: 100%" id="mytabs">
					<div title="报告扉页" style="width: 100%">
						<div style="width: 100%">
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td class="tdname">项目名称：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="G1" id="G1">
									</td>
									<td class="tdname">承担单位：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="G2" id="G2">
									</td>
								</tr>
								<tr>
									<td class="tdname">项目编号：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="G3" id="G3">
									</td>
									<td class="tdname">技术领域：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="G4" id="G4">
									</td>
								</tr>
								<tr>
									<td class="tdname">归口管理部门：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="G5" id="G5">
									</td>
									<td class="tdname">起止日期：</td>
									<td class="tdcontent2"><input
										class="easyui-datebox mydatebox" type="text" name="G6" id="G6"
										editable="false" panelHeight="260" panelWidth="200">
									</td>
								</tr>
								<tr>
									<td class="tdname">联系人：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="G7" id="G7">
									</td>
									<td class="tdname">电话：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="G8" id="G8">
									</td>
								</tr>
								<tr>
									<td class="tdname" rowspan="4">附件清单：</td>
									<td colspan="3"><input name="G9" type="checkbox" id="G9"
										value="1">大连市科技计划项目验收信息表 <input name="G9"
										type="checkbox" id="G9" value="2">大连市科技计划项目验收评价报告 <input
										name="G9" type="checkbox" id="G9" value="3">项目经费决算表 <input
										name="G9" type="checkbox" id="G9" value="4">发表专著、论文清单
										<input name="G9" type="checkbox" id="G9" value="5">知识产权证书或受理文件（复印件）
										<input name="G9" type="checkbox" id="G9" value="6">技术标准备案文件（复印件）
										<input name="G9" type="checkbox" id="G9" value="7">材料、产品检验或测试报告（复印件）
										<input name="G9" type="checkbox" id="G9" value="8">成果评价证书、科技成果登记表（复印件）
										<input name="G9" type="checkbox" id="G9" value="9">科技奖励证书（复印件）
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input name="G9"
										type="checkbox" id="G9" value="10">项目经费财务审计报告（原件） <input
										name="G9" type="checkbox" id="G9" value="11">用户意见书 <input
										name="G9" type="checkbox" id="G9" value="12">项目合同书（复印件）
										<input name="G9" type="checkbox" id="G9" value="13">其他（详细注明）
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div title="项目验收信息表" style="width: 100%">
						<div style="width: 100%">
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td colspan="4" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、项目基本情况</td>
								</tr>
								<tr>
									<td class="tdname">项目名称：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="K1" id="K1">
									</td>
									<td class="tdname">承担单位：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="K2" id="K2">
									</td>
								</tr>
								<tr>
									<td class="tdname">计划文号：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="K3" id="K3">
									</td>
									<td class="tdname">项目编号：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="K4" id="K4">
									</td>
								</tr>
							</table>
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>

									<td colspan="2" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二、项目进展情况</td>
								</tr>
								<tr>
									<td class="tdname">进展情况：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="K5" id="K5">
									</td>

								</tr>
							</table>
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td colspan="4" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三、项目资金情况（单位：万元）</td>
								</tr>
								<tr>
									<td class="tdname" style="font-weight: bold;">投资情况</td>
									<td class="tdname">计划投资</td>
									<td class="tdname">当期实际投资</td>
									<td class="tdname">执行期内累计投资</td>
								</tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">单位自筹：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K6" id="K6"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K7" id="K7"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K8" id="K8"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">市财政拨款：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K9" id="K9"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K10"
										id="K10"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K11"
										id="K11"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">国家、省财政拨款：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K12"
										id="K12"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K13"
										id="K13"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K14"
										id="K14">></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">其他：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K15"
										id="K15"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K16"
										id="K16"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K17"
										id="K17"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">合计：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K18"
										id="K18"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K19"
										id="K19"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox mydatebox" type="text" name="K20"
										id="K20"></td>
								<tr>
							</table>
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td colspan="4" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四、项目产出及成果情况</td>
								</tr>
								<tr>
									<td class="tdname">总投入：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="K21"
										id="K21">万元</td>
									<td class="tdname">总产值：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="K22"
										id="K22">万元</td>
								</tr>
								<tr>
									<td class="tdname">产品销售收入：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="K23"
										id="K23">万元</td>
									<td class="tdname">工业增加值：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="K24"
										id="K24"> 万元</td>
								</tr>
								<tr>
									<td class="tdname">净利润：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="K25"
										id="K25">万元</td>
									<td class="tdname">缴税总额：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="K26"
										id="K26">万元</td>
								</tr>
								<tr>
									<td class="tdname">创汇：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="K27"
										id="K27">万美元</td>
									<td class="tdname">新增就业人数：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="K28"
										id="K28">人</td>
								</tr>
								<tr>
									<td class="tdname">专利申请：</td>
									<td class="tdcontent1" colspan="3"><input
										class="easyui-textbox mydatebox" type="text" name="K29"
										id="2K9">项</td>
								</tr>
								<tr>
									<td class="tdname">其中发明专利：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="K30"
										id="K30"> 项</td>
									<td class="tdname">其中PCT专利：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="K31"
										id="K31">项</td>
								</tr>
								<tr>
									<td class="tdname">专利授权：</td>
									<td class="tdcontent1" colspan="3"><input
										class="easyui-textbox mydatebox" type="text" name="K32"
										id="K32">项</td>
								</tr>
								<tr>
									<td class="tdname">其中发明专利：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="K33"
										id="K33">项</td>
									<td class="tdname">其中PCT专利：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="K34"
										id="K34"> 项</td>
								</tr>
								<tr>
									<td class="tdname">软件产品登记：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="K35"
										id="K35">项</td>
									<td class="tdname">软件著作权登记：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="K36"
										id="K36">项</td>
								</tr>
								<tr>
									<td class="tdname">发表科技论文：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="K37"
										id="K37"> 篇</td>
									<td class="tdname">出版专著：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="K38"
										id="K38">万字</td>
								</tr>
								<tr>
									<td class="tdname">形成新产品、新工艺等：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="K39"
										id="K39">项</td>
									<td class="tdname">其中国家重点新产品：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="K40"
										id="K40"> 项</td>
								</tr>
								<tr>
									<td class="tdname">科技奖励：</td>
									<td class="tdcontent1" colspan="3"><input
										class="easyui-textbox mydatebox" type="text" name="K41"
										id="K41">项</td>
								</tr>
								<tr>
									<td class="tdname">其中国家级：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="K42"
										id="K42"> 项</td>
									<td class="tdname">其中省、市级：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="K43"
										id="K43">项</td>
								</tr>
								<tr>
									<td class="tdname">制定标准：</td>
									<td class="tdcontent1" colspan="3"><input
										class="easyui-textbox mydatebox" type="text" name="K44"
										id="K44">项</td>
								</tr>
								<tr>
									<td class="tdname">其中国家：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="K45"
										id="K45">项</td>
									<td class="tdname">其中行业：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="K46"
										id="K46">项</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">建立示范基地、中试平台：</td>
									<td class="tdcontent1" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="K47"
										id="K47">个</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">建立实验室、工程技术研究中心：</td>
									<td class="tdcontent1" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="K48"
										id="K48">个</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">市级以上科技人才与创新团队：</td>
									<td class="tdcontent1" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="K49"
										id="K49">个</td>
								</tr>
							</table>
						</div>
					</div>
					<div title="项目经费决算表" style="width: 100%">
						<div style="width: 100%">
							<input type="hidden" name="sort" id="sort">
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td class="tdname">项目名称：</td>
									<td class="tdcontent1" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I1" id="I1">
									</td>
									<td class="tdname">承担单位：</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I2" id="I2">
									</td>
								</tr>
								<tr>
									<td class="tdname" colspan="6">收入</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">科目</td>
									<td class="tdname" colspan="2">预算数（万元）</td>
									<td class="tdname" colspan="2">实际数（万元）</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">合计</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I3" id="I3">
									</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I4" id="I4">
									</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">市科技计划拨款</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I5" id="I5">
									</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I6" id="I6">
									</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">单位自筹</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I7" id="I7">
									</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I8" id="I8">
									</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">自筹</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I9" id="I9">
									</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I10"
										id="I10"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="6">支出</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">科目</td>
									<td class="tdname" colspan="2">金额(万元)</td>
									<td class="tdname" colspan="2">市科技计划拨款</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">合计</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I11"
										id="I11"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I12"
										id="I12"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">1．设备费</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I13"
										id="I13"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I14"
										id="I14"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">（1）购置设备费</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I15"
										id="I15"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I16"
										id="I16"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">（2）试制设备费</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I17"
										id="I17"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I18"
										id="I18"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">（3）设备改造与租赁费</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I19"
										id="I19"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I20"
										id="I20"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">2.材料费</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I21"
										id="I21"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I22"
										id="I22"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">3.测试化验加工费</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I23"
										id="I23"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I24"
										id="I24"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">4.燃料动力费</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I25"
										id="I25"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I26"
										id="I26"></td>
								</tr>

								<tr>
									<td class="tdname" colspan="2">5．差旅费</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I27"
										id="I27"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I28"
										id="I28"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">6．会议费</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I29"
										id="I29"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I30"
										id="I30"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">7．国际合作与交流费</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I31"
										id="I31"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I32"
										id="I32"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">8．出版/文献/信息传播/知识产权事务费</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I33"
										id="I33"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I34"
										id="I34"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">9．劳务费</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I35"
										id="I35"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I36"
										id="I36"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">10．专家咨询费</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I37"
										id="I37"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I38"
										id="I38"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">11．管理费</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I39"
										id="I39"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I40"
										id="I40"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">12．其他</td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I41"
										id="I41"></td>
									<td class="tdcontent2" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="I42"
										id="I42"></td>
								</tr>
								<tr>
									<td align="center" colspan="6">
										<div
											style="margin-top: 20px; left: 40%; margin-bottom: 20px; float: left; position: relative">
											<a href="javascript:void(document.Form1.submit())"
												style="height: 35px; width: 70px; font-size: 16px;"
												class="easyui-linkbutton button" onclick="return sub();">提&nbsp;&nbsp;交</a>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="javascript:void(document.Form1.submit())"
												style="height: 35px; width: 70px; font-size: 16px"
												class="easyui-linkbutton button" onclick="return save();">保&nbsp;&nbsp;存</a>
										</div>
										<div
											style="margin-top: 20px; margin-bottom: 20px; float: right; position: relative; right: 20px">
											<a href="<%=request.getContextPath() %>/*******.do"
												style="height: 35px; width: 100px; font-size: 16px"
												class="easyui-linkbutton button" onclick="return *****;">上传附件</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a
												href="<%=request.getContextPath() %>/commitmiddledownload.do"
												style="height: 35px; width: 100px; font-size: 16px"
												class="easyui-linkbutton button" onclick="return check();">导出为word</a>
										</div>

									</td>
								</tr>

							</table>
						</div>
					</div>
					<div title="评审结果" style="width: 100%" id="reviewresult">
						<div style="width: 100%">
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td class="tdname" align="center">评审结果</td>
									<td align="center" height="100px" colspan="3">
										<div
											style="word-wrap: break-word; word-break: break-all; margin: 0 auto; width: 95%;">
											<pre
												style="width: 100%; white-space: pre-wrap; font-size: 16px"></pre>
										</div>

									</td>
								</tr>
								<tr>
									<td class="tdname" align="center">主要问题评述</td>
									<td align="center" height="400px" colspan="3">
										<div
											style="word-wrap: break-word; word-break: break-all; margin: 0 auto; width: 95%;">
											<pre
												style="width: 100%; white-space: pre-wrap; font-size: 16px"></pre>
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