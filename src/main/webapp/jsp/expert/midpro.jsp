
<%@ page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中期检查评审</title>

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
	var wtime="1";
	var stime="1";
	var etime="1";
	var ctime="1";
	var expl="1";
	$("#stime").datebox("setValue", stime); 
	$("#etime").datebox("setValue", etime);
	$("#ctime").datebox("setValue", ctime);
	$("#wtime").datebox("setValue", wtime);
	$("#expl").textbox("setValue", expl);
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
function sub(){
	
	var ctime=$("#ctime").datebox("getValue");
	var expl=document.getElementById("expl").value;
	var presention=document.getElementById("presention").value;
	var advice=document.getElementById("advice").value;
	if(expl==""){
		alert("提示：\n\n请填写专家组长！");
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
				<span class="title">科技项目中期评审</span>
			</div>
			<form
				action="<%=request.getContextPath() %>/intermediateinspection.do"
				name="Form1" id="Form1">
				<div class="easyui-tabs" style="width: 100%">
					<div title="报告扉页" style="width: 100%">
						<div style="width: 100%">
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td class="tdname">项目名称：</td>
									<td class="tdcontent1"><%=request.getAttribute("name")%></td>
									<td class="tdname">承担单位：</td>
									<td class="tdcontent2"><%=request.getAttribute("age")%></td>
								</tr>
								<tr>
									<td class="tdname">计划类别：</td>
									<td class="tdcontent1"><%=request.getAttribute("age")%></td>
									<td class="tdname">单位负责人：</td>
									<td class="tdcontent2"><%=request.getAttribute("company")%>
									</td>
								</tr>
								<tr>
									<td class="tdname">专家组长：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="expl"
										id="expl"></td>
									<td class="tdname">填报日期：</td>
									<td class="tdcontent2"></td>
								</tr>
							</table>
						</div>
					</div>
					<div title="中期检查信息表" style="width: 100%">
						<div style="width: 100%">
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td colspan="4" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、项目基本情况</td>
								</tr>
								<tr>
									<td class="tdname">项目名称：</td>
									<td class="tdcontent1"><%=request.getAttribute("name")%></td>
									<td class="tdname">承担单位：</td>
									<td class="tdcontent2"><%=request.getAttribute("age")%></td>
								</tr>
								<tr>
									<td class="tdname">计划文号：</td>
									<td class="tdcontent1"><%=request.getAttribute("age")%></td>
									<td class="tdname">项目编号：</td>
									<td class="tdcontent2"><%=request.getAttribute("company")%>
									</td>
								</tr>
							</table>
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>

									<td colspan="4" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二、项目进展情况</td>
								</tr>
								<tr>
									<td class="tdname">进展情况：</td>
									<td class="tdcontent2"><%=request.getAttribute("name")%>
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
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">市财政拨款：</td>
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">国家、省财政拨款：</td>
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">其他：</td>
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">合计：</td>
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
									<td style="text-align: center;"><%=request.getAttribute("name")%></td>
								<tr>
							</table>
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td colspan="4" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四、项目产出及成果情况</td>
								</tr>
								<tr>
									<td class="tdname">总投入：</td>
									<td class="tdcontent1"><%=request.getAttribute("name")%>万元
									</td>
									<td class="tdname">总产值：</td>
									<td class="tdcontent2"><%=request.getAttribute("age")%>万元
									</td>
								</tr>
								<tr>
									<td class="tdname">产品销售收入：</td>
									<td class="tdcontent1"><%=request.getAttribute("name")%>万元
									</td>
									<td class="tdname">工业增加值：</td>
									<td class="tdcontent2"><%=request.getAttribute("age")%>万元
									</td>
								</tr>
								<tr>
									<td class="tdname">净利润：</td>
									<td class="tdcontent1"><%=request.getAttribute("name")%>万元
									</td>
									<td class="tdname">缴税总额：</td>
									<td class="tdcontent2"><%=request.getAttribute("age")%>万元
									</td>
								</tr>
								<tr>
									<td class="tdname">创汇：</td>
									<td class="tdcontent1"><%=request.getAttribute("name")%>万美元
									</td>
									<td class="tdname">新增就业人数：</td>
									<td class="tdcontent2"><%=request.getAttribute("age")%>人</td>
								</tr>
								<tr>
									<td class="tdname">专利申请：</td>
									<td class="tdcontent1" colspan="3"><%=request.getAttribute("name")%>项
									</td>
								</tr>
								<tr>
									<td class="tdname">其中发明专利：</td>
									<td class="tdcontent1"><%=request.getAttribute("name")%>项
									</td>
									<td class="tdname">其中PCT专利：</td>
									<td class="tdcontent2"><%=request.getAttribute("age")%>项</td>
								</tr>
								<tr>
									<td class="tdname">专利授权：</td>
									<td class="tdcontent1" colspan="3"><%=request.getAttribute("name")%>项
									</td>
								</tr>
								<tr>
									<td class="tdname">其中发明专利：</td>
									<td class="tdcontent1"><%=request.getAttribute("name")%>项
									</td>
									<td class="tdname">其中PCT专利：</td>
									<td class="tdcontent2"><%=request.getAttribute("age")%>项</td>
								</tr>
								<tr>
									<td class="tdname">软件产品登记：</td>
									<td class="tdcontent1"><%=request.getAttribute("name")%>项
									</td>
									<td class="tdname">软件著作权登记：</td>
									<td class="tdcontent2"><%=request.getAttribute("age")%>项</td>
								</tr>
								<tr>
									<td class="tdname">发表科技论文：</td>
									<td class="tdcontent1"><%=request.getAttribute("name")%>篇
									</td>
									<td class="tdname">出版专著：</td>
									<td class="tdcontent2"><%=request.getAttribute("age")%>万字
									</td>
								</tr>
								<tr>
									<td class="tdname">形成新产品、新工艺等：</td>
									<td class="tdcontent1"><%=request.getAttribute("name")%>项
									</td>
									<td class="tdname">其中国家重点新产品：</td>
									<td class="tdcontent2"><%=request.getAttribute("age")%>项</td>
								</tr>
								<tr>
									<td class="tdname">科技奖励：</td>
									<td class="tdcontent1" colspan="3"><%=request.getAttribute("name")%>项
									</td>
								</tr>
								<tr>
									<td class="tdname">其中国家级：</td>
									<td class="tdcontent1"><%=request.getAttribute("name")%>项
									</td>
									<td class="tdname">其中省、市级：</td>
									<td class="tdcontent2"><%=request.getAttribute("age")%>项</td>
								</tr>
								<tr>
									<td class="tdname">制定标准：</td>
									<td class="tdcontent1" colspan="3"><%=request.getAttribute("name")%>项
									</td>
								</tr>
								<tr>
									<td class="tdname">其中国家：</td>
									<td class="tdcontent1"><%=request.getAttribute("name")%>项
									</td>
									<td class="tdname">其中行业：</td>
									<td class="tdcontent2"><%=request.getAttribute("age")%>项</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">建立示范基地、中试平台：</td>
									<td class="tdcontent1" colspan="2"><%=request.getAttribute("name")%>个
									</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">建立实验室、工程技术研究中心：</td>
									<td class="tdcontent1" colspan="2"><%=request.getAttribute("name")%>个
									</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">市级以上科技人才与创新团队：</td>
									<td class="tdcontent1" colspan="2"><%=request.getAttribute("name")%>个
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div title="中期检查意见表" style="width: 100%">
						<div style="width: 100%">
							<input type="hidden" name="sort" id="sort">
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td class="tdname">项目名称：</td>
									<td class="tdcontent1"></td>
									<td class="tdname">承担单位：</td>
									<td class="tdcontent2"></td>
								</tr>
								<tr>
									<td class="tdname">计划文号：</td>
									<td class="tdcontent1"></td>
									<td class="tdname">项目编号：</td>
									<td class="tdcontent2"></td>
								</tr>
								<tr>
									<td class="tdname">项目启动时间：</td>
									<td class="tdcontent1"></td>
									<td class="tdname">项目截止时间：</td>
									<td class="tdcontent1"></td>
								</tr>
								<tr>
									<td class="tdname">评审日期：</td>
									<td class="tdcontent2"><input
										class="easyui-datebox mydatebox" type="text" name="ctime"
										id="ctime" editable="false" panelHeight="260" panelWidth="200">
									</td>
									<td class="tdname" colspan="2">
										<div align="center">
											<a href="#" class="easyui-linkbutton button"
												style="width: 120px; height: 25px">相关附件下载</a>
										</div>
									</td>
								</tr>
								<tr>
									<td class="tdname">中期检查情况评述</td>
									<td align="center" height="400px" colspan="3">
										<div class="tdcontent3">
											<textarea id="presention" name="presention" cols="40"
												rows="12" style="width: 90%; height: 100%;"></textarea>
										</div>
									</td>
								</tr>

								<tr>
									<td class="tdname">主要问题及建议</td>
									<td align="center" height="400px" colspan="3">
										<div class="tdcontent3">
											<textarea id="advice" name="advice" cols="40" rows="12"
												style="width: 90%; height: 100%;"></textarea>
										</div>
									</td>
								</tr>

								<tr>
									<td align="center" colspan="4">
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
											<a href="javascript:void(document.Form1.submit())"
												style="height: 35px; width: 100px; font-size: 16px"
												class="easyui-linkbutton button" onclick="return save();">导出为word</a>
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