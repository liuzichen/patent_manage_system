
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
									<td class="tdcontent1"></td>
									<td class="tdname">承担单位：</td>
									<td class="tdcontent2"></td>
								</tr>
								<tr>
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
								<tr>
									<td class="tdname">联系人：</td>
									<td class="tdcontent1"></td>
									<td class="tdname">电话：</td>
									<td class="tdcontent2"></td>
								</tr>
								<tr>
									<td class="tdname" rowspan="4">附件清单：</td>
									<td colspan="3"></td>
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
							</table>
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>

									<td colspan="2" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二、项目进展情况</td>
								</tr>
								<tr>
									<td class="tdname">进展情况：</td>
									<td class="tdcontent2"></td>

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
									<td style="text-align: center;"></td>
									<td style="text-align: center;"></td>
									<td style="text-align: center;"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">市财政拨款：</td>
									<td style="text-align: center;"></td>
									<td style="text-align: center;"></td>
									<td style="text-align: center;"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">国家、省财政拨款：</td>
									<td style="text-align: center;"></td>
									<td style="text-align: center;"></td>
									<td style="text-align: center;"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">其他：</td>
									<td style="text-align: center;"></td>
									<td style="text-align: center;"></td>
									<td style="text-align: center;"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">合计：</td>
									<td style="text-align: center;"></td>
									<td style="text-align: center;"></td>
									<td style="text-align: center;"></td>
								<tr>
							</table>
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td colspan="4" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四、项目产出及成果情况</td>
								</tr>
								<tr>
									<td class="tdname">总投入：</td>
									<td class="tdcontent1">万元</td>
									<td class="tdname">总产值：</td>
									<td class="tdcontent2">万元</td>
								</tr>
								<tr>
									<td class="tdname">产品销售收入：</td>
									<td class="tdcontent1">万元</td>
									<td class="tdname">工业增加值：</td>
									<td class="tdcontent2">万元</td>
								</tr>
								<tr>
									<td class="tdname">净利润：</td>
									<td class="tdcontent1">万元</td>
									<td class="tdname">缴税总额：</td>
									<td class="tdcontent2">万元</td>
								</tr>
								<tr>
									<td class="tdname">创汇：</td>
									<td class="tdcontent1">万美元</td>
									<td class="tdname">新增就业人数：</td>
									<td class="tdcontent2">人</td>
								</tr>
								<tr>
									<td class="tdname">专利申请：</td>
									<td class="tdcontent1" colspan="3">项</td>
								</tr>
								<tr>
									<td class="tdname">其中发明专利：</td>
									<td class="tdcontent1">项</td>
									<td class="tdname">其中PCT专利：</td>
									<td class="tdcontent2">项</td>
								</tr>
								<tr>
									<td class="tdname">专利授权：</td>
									<td class="tdcontent1" colspan="3">项</td>
								</tr>
								<tr>
									<td class="tdname">其中发明专利：</td>
									<td class="tdcontent1">项</td>
									<td class="tdname">其中PCT专利：</td>
									<td class="tdcontent2">项</td>
								</tr>
								<tr>
									<td class="tdname">软件产品登记：</td>
									<td class="tdcontent1">项</td>
									<td class="tdname">软件著作权登记：</td>
									<td class="tdcontent2">项</td>
								</tr>
								<tr>
									<td class="tdname">发表科技论文：</td>
									<td class="tdcontent1">篇</td>
									<td class="tdname">出版专著：</td>
									<td class="tdcontent2">万字</td>
								</tr>
								<tr>
									<td class="tdname">形成新产品、新工艺等：</td>
									<td class="tdcontent1">项</td>
									<td class="tdname">其中国家重点新产品：</td>
									<td class="tdcontent2">项</td>
								</tr>
								<tr>
									<td class="tdname">科技奖励：</td>
									<td class="tdcontent1" colspan="3">项</td>
								</tr>
								<tr>
									<td class="tdname">其中国家级：</td>
									<td class="tdcontent1">项</td>
									<td class="tdname">其中省、市级：</td>
									<td class="tdcontent2">项</td>
								</tr>
								<tr>
									<td class="tdname">制定标准：</td>
									<td class="tdcontent1" colspan="3">项</td>
								</tr>
								<tr>
									<td class="tdname">其中国家：</td>
									<td class="tdcontent1">项</td>
									<td class="tdname">其中行业：</td>
									<td class="tdcontent2">项</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">建立示范基地、中试平台：</td>
									<td class="tdcontent1" colspan="2">个</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">建立实验室、工程技术研究中心：</td>
									<td class="tdcontent1" colspan="2">个</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">市级以上科技人才与创新团队：</td>
									<td class="tdcontent1" colspan="2">个</td>
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
									<td class="tdcontent1" colspan="2"></td>
									<td class="tdname">承担单位：</td>
									<td class="tdcontent2" colspan="2"></td>
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
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">市科技计划拨款</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2">I6" ></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">单位自筹</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">自筹</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
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
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">1．设备费</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">（1）购置设备费</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">（2）试制设备费</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">（3）设备改造与租赁费</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">2.材料费</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">3.测试化验加工费</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">4.燃料动力费</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>

								<tr>
									<td class="tdname" colspan="2">5．差旅费</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">6．会议费</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">7．国际合作与交流费</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">8．出版/文献/信息传播/知识产权事务费</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">9．劳务费</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">10．专家咨询费</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">11．管理费</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">12．其他</td>
									<td class="tdcontent2" colspan="2"></td>
									<td class="tdcontent2" colspan="2"></td>
								</tr>
								<tr>
									<td align="center" colspan="6">
										<div
											style="margin-top: 20px; margin-bottom: 20px; float: right; position: relative; right: 20px">
											<a href="<%=request.getContextPath() %>/*******.do"
												style="height: 35px; width: 100px; font-size: 16px"
												class="easyui-linkbutton button" onclick="">下载附件</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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