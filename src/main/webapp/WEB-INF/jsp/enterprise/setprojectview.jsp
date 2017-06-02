<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目申报书查询</title>

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

.out {
	border-top: 5em #F2F2F2 solid; /*上边框宽度等于表格第一行行高*/
	border-left: 200px white solid; /*左边框宽度等于表格第一行第一格宽度*/
	position: relative; /*让里面的两个子容器绝对定位*/
	color: black;
}

b {
	font-style: normal;
	display: block;
	position: absolute;
	top: -3.6em;
	left: -140px;
	width: 200px;
}

em {
	font-style: normal;
	display: block;
	position: absolute;
	top: -30px;
	left: -260px;
	width: 200px;
}

.assessDetail td {
	background-color: #FFF;
}

.mydatebox1 {
	width: 100px;
}

.mydatebox2 {
	width: 300px;
}

.mydatebox3 {
	width: 78.8%;
}

.mydatebox4 {
	width: 50px;
	top: -5px
}

.mydatebox5 {
	width: 200px;
}

.tdcontent2-2 {
	width: 30%;
	text-align: center;
}

.tdcontent1-1 {
	width: 25%;
	text-align: center;
}
</style>


</head>

<body>

	<div>

		<div class="topnav">
			<div class="path">
				<span><font>当前位置:</font></span> <span><font>科技项目管理&nbsp;&nbsp;
						&gt;&nbsp;&nbsp; 立项管理</font></span>
			</div>
		</div>

		<div class="context">
			<div class="titlebox">
				<span class="title">项目申报书查看</span>
			</div>
			<form action="" name="Form1" id="Form1">
				<div class="easyui-tabs" style="width: 100%">
					<div title="申报扉页" style="width: 100%">
						<div style="width: 100%">
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td class="tdname">受理编号：</td>
									<td class="tdcontent1"><%=request.getAttribute("A1")%></td>
									<td class="tdname">负责处室：</td>
									<td class="tdcontent2"><%=request.getAttribute("A2")%></td>
								</tr>
								<tr>
									<td class="tdname">项目名称：</td>
									<td class="tdcontent1"><%=request.getAttribute("A3")%></td>
									<td class="tdname">计划类别：</td>
									<td class="tdcontent2"><%=request.getAttribute("A4")%></td>
								</tr>
								<tr>
									<td class="tdname">技术领域：</td>
									<td class="tdcontent1"><%=request.getAttribute("A5")%></td>
									<td class="tdname">承担单位：</td>
									<td class="tdcontent2"><%=request.getAttribute("A6")%></td>
								</tr>
								<tr>
									<td class="tdname">归口管理部门：</td>
									<td class="tdcontent1"><%=request.getAttribute("A7")%></td>
									<td class="tdname">单位负责人：</td>
									<td class="tdcontent2"><%=request.getAttribute("A8")%></td>
								</tr>
								<tr>
									<td class="tdname">填报人：</td>
									<td class="tdcontent1"><%=request.getAttribute("A9")%></td>
									<td class="tdname">联系电话：</td>
									<td class="tdcontent1"><%=request.getAttribute("A10")%></td>

								</tr>
								<tr>
									<td class="tdname">填报日期：</td>
									<td class="tdcontent1"></td>
									<td class="tdname" colspan="2">
										<div align="center">
											<a href="#" class="easyui-linkbutton button"
												style="width: 120px; height: 25px">相关附件下载</a>
										</div>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div title="单位基本情况" style="width: 100%">
						<div style="width: 100%">

							<!-- 一、项目基本情况	 -->
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td colspan="4" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、项目基本情况</td>
								</tr>
								<tr>
									<td class="tdname">单位名称：</td>
									<td class="tdcontent1"><%=request.getAttribute("B1")%></td>
									<td class="tdname">组织机构代码：</td>
									<td class="tdcontent2"><%=request.getAttribute("B2")%></td>
								</tr>
								<tr>
									<td class="tdname">申报渠道：</td>
									<td class="tdcontent1"><%=request.getAttribute("B3")%></td>
									<td class="tdname">所在地区：</td>
									<td class="tdcontent2"><%=request.getAttribute("B4")%></td>
								</tr>
								<tr>
									<td class="tdname">通信地址：</td>
									<td class="tdcontent1"><%=request.getAttribute("B5")%></td>
									<td class="tdname">邮政编码：</td>
									<td class="tdcontent2"><%=request.getAttribute("B6")%></td>
								</tr>
								<tr>
									<td class="tdname">联 系 人：</td>
									<td class="tdcontent1"><%=request.getAttribute("B7")%></td>
									<td class="tdname">电 话：</td>
									<td class="tdcontent2"><%=request.getAttribute("B8")%></td>
								</tr>
								<tr>
									<td class="tdname">手 机：</td>
									<td class="tdcontent1"><%=request.getAttribute("B9")%></td>
									<td class="tdname">传 真：</td>
									<td class="tdcontent2"><%=request.getAttribute("B10")%></td>
								</tr>
								<tr>
									<td class="tdname">电子邮箱：</td>
									<td class="tdcontent1"><%=request.getAttribute("B11")%></td>
									<td class="tdname">开户银行：</td>
									<td class="tdcontent2"><%=request.getAttribute("B12")%></td>
								</tr>
								<tr>
									<td class="tdname">信用等级：</td>
									<td class="tdcontent1"><%=request.getAttribute("B13")%></td>
									<td class="tdname">账户：</td>
									<td class="tdcontent2"><%=request.getAttribute("B14")%></td>
								</tr>
								<tr>
									<td class="tdname">单位性质：</td>
									<td class="tdcontent1"><%=request.getAttribute("B15")%></td>
									<td class="tdname">企业规模：</td>
									<td class="tdcontent2"><%=request.getAttribute("B16")%></td>
								</tr>
							</table>

							<!-- 企业主要股东  -->
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>

									<td class="tdname" rowspan="5" style="width: 11%">企业主要股东</td>
								</tr>
								<tr>
									<th class="tdname">投资类型</th>
									<th class="tdname">企业主要股东</th>
									<th class="tdname">投资比例</th>
								</tr>
								<tr>
									<td class="tdname"><%=request.getAttribute("B17")%></td>
									<td class="tdname"><%=request.getAttribute("B18")%></td>
									<td class="tdcontent2"><%=request.getAttribute("B19")%></td>

								</tr>
								<tr>
									<td class="tdname"><%=request.getAttribute("B20")%></td>
									<td class="tdname"><%=request.getAttribute("B21")%></td>
									<td class="tdcontent2"><%=request.getAttribute("B22")%></td>

								</tr>
								<tr>
									<td class="tdname"><%=request.getAttribute("B23")%></td>
									<td class="tdname"><%=request.getAttribute("B24")%></td>
									<td class="tdcontent2"><%=request.getAttribute("B25")%></td>

								</tr>
							</table>


							<!-- 注册时间     -->
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td class="tdname">注册时间</td>
									<td class="tdname" colspan="3"><%=request.getAttribute("B26")%>
									</td>
									<td class="tdname">注册资金</td>
									<td class="tdname" colspan="3"><%=request.getAttribute("B27")%>
									</td>

								</tr>
								<tr>
									<td class="tdname" rowspan="2">单位负责人情况</td>
									<td class="tdname" style="width: 10%">姓名</td>
									<td class="tdname" style="width: 10%">性别</td>
									<td class="tdname" style="width: 10%">出生日期</td>
									<td class="tdname" style="width: 10%">最高学历</td>
									<td class="tdname" style="width: 10%">身份证号码</td>
									<td class="tdname" style="width: 10%">固定电话</td>
									<td class="tdname" style="width: 10%">移话动电话</td>

								</tr>

								<tr>
									<td class="tdname1"><%=request.getAttribute("B28")%></td>
									<td class="tdname1"><%=request.getAttribute("B29")%></td>
									<td class="tdname1"><%=request.getAttribute("B30")%></td>
									<td class="tdname1"><%=request.getAttribute("B31")%></td>
									<td class="tdname1"><%=request.getAttribute("B32")%></td>
									<td class="tdname1"><%=request.getAttribute("B33")%></td>
									<td class="tdname1"><%=request.getAttribute("B34")%></td>

								</tr>

								<tr>
									<td class="tdname1" rowspan="2">单位人员</td>
									<td class="tdname1" rowspan="2"><%=request.getAttribute("B35")%>
									</td>
									<td class="tdname1">大专以上技术人员</td>
									<td class="tdname1"><%=request.getAttribute("B36")%></td>
									<td class="tdname1">博士</td>
									<td class="tdname1"><%=request.getAttribute("B37")%></td>
									<td class="tdname1">硕士</td>
									<td class="tdname1"><%=request.getAttribute("B38")%></td>

								</tr>
								<tr>

									<td class="tdname1">高级职称</td>
									<td class="tdname1"><%=request.getAttribute("B39")%></td>
									<td class="tdname1">中级职称</td>
									<td class="tdname1"><%=request.getAttribute("B40")%></td>
									<td class="tdname1">留学人员</td>
									<td class="tdname1"><%=request.getAttribute("B41")%></td>

								</tr>

							</table>




							<!-- 近两年企业财务状况   -->


							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td colspan="4" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;近两年企业财务状况</td>
								</tr>
								<tr>

									<th style="width: 200px;" class="tdname3">
										<div class="out" style="font-size: 14px">
											<b>时&nbsp;&nbsp;间</b> <em>指&nbsp;&nbsp;标</em>
										</div>
									</th>
									<th class="tdname2">前 年:&nbsp;&nbsp; <%=request.getAttribute("B42")%>
									</th>
									<th class="tdname2">上 一 年度:&nbsp;&nbsp; <%=request.getAttribute("B43")%>
								</tr>


								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">总
										产 值（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B44")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B45")%>
									</td>

								</tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">总
										销 售 额（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B46")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B47")%>
									</td>

								</tr>

								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">净
										利 润（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B48")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B49")%>
									</td>

								</tr>

								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">纳
										税 总 额（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B50")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B51")%>
									</td>

								</tr>

								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">&nbsp;&nbsp;企
										业 所 得 税（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B52")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B53")%>
									</td>

								</tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">&nbsp;&nbsp;增
										值 税（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B54")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B55")%>
									</td>

								</tr>

								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">&nbsp;&nbsp;营
										业 税（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B56")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B57")%>
									</td>


								</tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">&nbsp;&nbsp;个
										人 所 得 税（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B58")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B59")%>
									</td>


								</tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">&nbsp;&nbsp;个
										人 所 得 税（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B60")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B61")%>
									</td>


								</tr>

								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">研
										发 支 出 费 用（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B62")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B63")%>
									</td>

								</tr>

								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">支出费用总额（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B64")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B65")%>
									</td>

								</tr>

								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">创
										汇 总 额 （ 万 美 元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B66")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B67")%>
									</td>

								</tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">固
										定 资 产 原 值（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B68")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B69")%>
									</td>

								</tr>

								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">总
										资 产（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B70")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B71")%>
									</td>

								</tr>

								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">总
										负 债（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B72")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B73")%>
									</td>

								</tr>

								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">净
										资 产（万元）</td>
									<td style="text-align: center;"><%=request.getAttribute("B74")%>
									</td>
									<td style="text-align: center;"><%=request.getAttribute("B75")%>
									</td>
								</tr>


							</table>


							<!-- 主营业务、主要产品与服务                 -->

							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td class="tdname3">主营业务、主要产品与服务</td>
									<td class="tdname" colspan="5"><%=request.getAttribute("B76")%>
									</td>
								</tr>

								<tr>
									<td class="tdname">单位性质</td>
									<td class="tdname" colspan="5"><%=request.getAttribute("B77")%>
									</td>

								</tr>

								<tr>
									<td class="tdname" rowspan="2">拥有知识产权（项）</td>
									<td class="tdname">发明专利</td>
									<td class="tdname">实用新型</td>
									<td class="tdname">软件著作权</td>
									<td class="tdname">PCT专利</td>
									<td class="tdname">其它</td>

								</tr>

								<tr>

									<td class="tdname"><%=request.getAttribute("B78")%></td>
									<td class="tdname"><%=request.getAttribute("B79")%></td>
									<td class="tdname"><%=request.getAttribute("B80")%></td>
									<td class="tdname"><%=request.getAttribute("B81")%></td>
									<td class="tdname"><%=request.getAttribute("B82")%></td>
								</tr>


								<tr>
									<td class="tdname">创新基地建设情况</td>
									<td class="tdname" colspan="5"><%=request.getAttribute("B83")%>
									</td>

								</tr>

								<tr>
									<td class="tdname">获科技计划支持情况</td>
									<td class="tdname" colspan="5"><%=request.getAttribute("B84")%>

									</td>

								</tr>

								<tr>
									<td class="tdname">获科技奖励及认定情况</td>
									<td class="tdname" colspan="5"><%=request.getAttribute("B85")%>

									</td>

								</tr>

							</table>

						</div>

					</div>



					<!-- 项目基本情况      -->
					<div title="项目基本情况" style="width: 100%">
						<div style="width: 100%">

							<input type="hidden" name="sort" id="sort">

							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td class="tdname">项目名称</td>
									<td class="tdcontent1" colspan="3"><%=request.getAttribute("C1")%>
									</td>
									<td class="tdname">计划类别</td>
									<td class="tdcontent2" colspan="2"><%=request.getAttribute("C2")%>
									</td>


								</tr>

								<tr>
									<td rowspan="5" class="tdname">项目负责人情况</td>
									<td class="tdname">姓名</td>
									<td class="tdname"><%=request.getAttribute("C3")%></td>
									<td class="tdname">性别</td>
									<td class="tdname"><%=request.getAttribute("C4")%></td>
									<td class="tdname">出生日期</td>
									<td class="tdname"><%=request.getAttribute("C5")%></td>
								</tr>


								<tr>
									<td class="tdname">职称</td>
									<td class="tdname"><%=request.getAttribute("C6")%></td>
									<td class="tdname">证件类型</td>
									<td class="tdname"><%=request.getAttribute("C7")%></td>
									<td class="tdname">证件号码</td>
									<td class="tdname"><%=request.getAttribute("C8")%></td>
								</tr>



								<tr>
									<td class="tdname">职务</td>
									<td class="tdname"><%=request.getAttribute("C9")%></td>
									<td class="tdname">学历</td>
									<td class="tdname"><%=request.getAttribute("C10")%></td>
									<td class="tdname">学位</td>
									<td class="tdname"><%=request.getAttribute("C11")%></td>

								</tr>
								<tr>
									<td class="tdname">专业</td>
									<td class="tdname"><%=request.getAttribute("C12")%></td>
									<td class="tdname">固定电话</td>
									<td class="tdname"><%=request.getAttribute("C13")%></td>
									<td class="tdname">传真</td>
									<td class="tdname"><%=request.getAttribute("C14")%></td>

								</tr>


								<tr>
									<td class="tdname">移动电话</td>
									<td class="tdname"><%=request.getAttribute("C15")%></td>
									<td class="tdname">电子邮箱</td>
									<td class="tdname"><%=request.getAttribute("C16")%></td>
									<td class="tdname"></td>
									<td class="tdname"></td>
								</tr>



								<tr>
									<td class="tdname" colspan="7">项目主要参加人员</td>
								</tr>


								<tr>
									<td class="tdname">姓名</td>
									<td class="tdname">性别</td>
									<td class="tdname">年龄</td>
									<td class="tdname">职务、职称</td>
									<td class="tdname">业务专业</td>
									<td class="tdname">承担任务</td>
									<td class="tdname">所在单位</td>
								</tr>
								<tr>
									<td class="tdname"><%=request.getAttribute("C17")%></td>

									<td class="tdname"><%=request.getAttribute("C18")%></td>

									<td class="tdname"><%=request.getAttribute("C19")%></td>

									<td class="tdname"><%=request.getAttribute("C20")%></td>
									<td class="tdname"><%=request.getAttribute("C21")%></td>
									<td class="tdname"><%=request.getAttribute("C22")%></td>
									<td class="tdname"><%=request.getAttribute("C23")%></td>

								</tr>

								<tr>
									<td class="tdname"><%=request.getAttribute("C24")%></td>

									<td class="tdname"><%=request.getAttribute("C25")%></td>

									<td class="tdname"><%=request.getAttribute("C26")%></td>

									<td class="tdname"><%=request.getAttribute("C27")%></td>
									<td class="tdname"><%=request.getAttribute("C28")%></td>
									<td class="tdname"><%=request.getAttribute("C29")%></td>
									<td class="tdname"><%=request.getAttribute("C30")%></td>

								</tr>

								<tr>
									<td class="tdname"><%=request.getAttribute("C31")%></td>

									<td class="tdname"><%=request.getAttribute("C32")%></td>

									<td class="tdname"><%=request.getAttribute("C33")%></td>

									<td class="tdname"><%=request.getAttribute("C34")%></td>
									<td class="tdname"><%=request.getAttribute("C35")%></td>
									<td class="tdname"><%=request.getAttribute("C36")%></td>
									<td class="tdname"><%=request.getAttribute("C37")%></td>

								</tr>

								<tr>
									<td class="tdname"><%=request.getAttribute("C38")%></td>

									<td class="tdname"><%=request.getAttribute("C39")%></td>

									<td class="tdname"><%=request.getAttribute("C40")%></td>

									<td class="tdname"><%=request.getAttribute("C41")%></td>
									<td class="tdname"><%=request.getAttribute("C42")%></td>
									<td class="tdname"><%=request.getAttribute("C43")%></td>
									<td class="tdname"><%=request.getAttribute("C44")%></td>

								</tr>

								<tr>
									<td class="tdname"><%=request.getAttribute("C45")%></td>
									<td class="tdname"><%=request.getAttribute("C46")%></td>

									<td class="tdname"><%=request.getAttribute("C47")%></td>

									<td class="tdname"><%=request.getAttribute("C48")%></td>
									<td class="tdname"><%=request.getAttribute("C49")%></td>
									<td class="tdname"><%=request.getAttribute("C50")%></td>
									<td class="tdname"><%=request.getAttribute("C51")%></td>


								</tr>

							</table>


							<!-- 项目现处阶段    -->
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td>项目现处阶段</td>
									<td colspan="5" class="tdname"><%=request.getAttribute("C52")%>
									</td>
								</tr>

								<tr>
									<td class="tdname">技术领域</td>
									<td class="tdname"><%=request.getAttribute("C53")%></td>
									<td class="tdname">行业领域</td>
									<td class="tdname"><%=request.getAttribute("C54")%></td>
									<td class="tdname">项目对应学科代码</td>
									<td class="tdname"><%=request.getAttribute("C55")%></td>
								</tr>
								<tr>
									<td class="tdname">项目来源</td>
									<td class="tdname" colspan="2"><%=request.getAttribute("C56")%>
									</td>
									<td class="tdname">技术来源</td>
									<td class="tdname" colspan="2"><%=request.getAttribute("C57")%>
									</td>

								</tr>
								<tr>
									<td class="tdname">开发形式</td>
									<td class="tdname" colspan="2"><%=request.getAttribute("C58")%>
									</td>

									<td class="tdname">产品采标形式</td>
									<td class="tdname" colspan="2"><%=request.getAttribute("C59")%>
									</td>
								</tr>

								<tr>
									<td class="tdname">项目知识产权情况</td>
									<td colspan="5" class="tdname"><%=request.getAttribute("C60")%>
									</td>
								</tr>

								<tr>
									<td class="tdname">科技奖励获奖情况</td>
									<td colspan="5" class="tdname"><%=request.getAttribute("C61")%>
									</td>
								</tr>

								<tr>
									<td class="tdname" class="tdname">技术权益及使用方式说明</td>
									<td colspan="5" class="tdname"><%=request.getAttribute("C62")%>
									</td>
								</tr>


								<tr>

									<td class="tdname">项目执行期</td>
									<td class="tdcontent2" colspan="2"><%=request.getAttribute("C63")%>
									</td>
									<td class="tdname">至</td>
									<td class="tdcontent2" colspan="2"><%=request.getAttribute("C64")%>
									</td>

								</tr>


								<tr>
									<td class="tdname">合作单位1</td>
									<td colspan="2" class="tdname"><%=request.getAttribute("C65")%>
									</td>

									<td class="tdname">组织机构代码</td>
									<td colspan="2" class="tdname"><%=request.getAttribute("C66")%>
									</td>
								</tr>

								<tr>
									<td class="tdname">负责人</td>
									<td colspan="2" class="tdname"><%=request.getAttribute("C67")%>
									<td class="tdname">联系电话</td>
									<td colspan="2" class="tdname"><%=request.getAttribute("C68")%>
									</td>
								</tr>


								<tr>
									<td class="tdname">合作单位2</td>
									<td colspan="2" class="tdname"><%=request.getAttribute("C69")%>
									</td>

									<td class="tdname">组织机构代码</td>
									<td colspan="2" class="tdname"><%=request.getAttribute("C70")%>
									</td>
								<tr>
									<td class="tdname">负责人</td>
									<td colspan="2" class="tdname"><%=request.getAttribute("C71")%>
									</td>

									<td class="tdname">联系电话</td>
									<td colspan="2" class="tdname"><%=request.getAttribute("C72")%>
									</td>
								</tr>

								<tr>
									<td rowspan="4" class="tdname">国际科技合作信 息</td>
									<td colspan="1" class="tdname">合作协议类别及名称</td>

									<td colspan="5" class="tdname"><%=request.getAttribute("C73")%>
									</td>
								</tr>

								<tr>
									<td colspan="1" class="tdname">合作目标及外方投入</td>
									<td colspan="5" class="tdname"><%=request.getAttribute("C74")%>
									</td>
								</tr>

								<tr>
									<td colspan="1" class="tdname">合作外方机构及负责人</td>
									<td colspan="5" class="tdname"><%=request.getAttribute("C75")%>
									</td>
								</tr>


								<tr>
									<td colspan="1" class="tdname">电子邮箱与通信地址</td>
									<td colspan="5" class="tdname"><%=request.getAttribute("C76")%>
									</td>
								</tr>


								<tr>
									<td rowspan="3" class="tdname">科技服务机构信息</td>
									<td colspan="1" class="tdname">服务方式</td>

									<td colspan="5" class="tdname"><%=request.getAttribute("C77")%>
									</td>
								</tr>

								<tr>
									<td colspan="1" class="tdname">已经服务企业数量</td>
									<td colspan="1" class="tdname"><%=request.getAttribute("C78")%>
									</td>
									<td colspan="2" class="tdname">项目完成预计服务企业数量</td>
									<td colspan="2" class="tdname"><%=request.getAttribute("C79")%>
									</td>
								</tr>
								<tr>
									<td colspan="1" class="tdname">已经提供服务种类或 平 台</td>
									<td colspan="1" class="tdname"><%=request.getAttribute("C80")%>
									</td>
									<td colspan="2" class="tdname">项目完成预计提供服务种类或平台</td>
									<td colspan="2" class="tdname"><%=request.getAttribute("C81")%>
									</td>
								</tr>


								<tr>
									<td class="tdname">项 目 简介 及 总体 目 标</td>
									<td colspan="6" class="tdname"><%=request.getAttribute("C82")%>
									</td>
								</tr>

								<tr>
									<td class="tdname">主要研究内容及技术指 标</td>
									<td colspan="6" class="tdname"><%=request.getAttribute("C83")%>
									</td>
								</tr>


								<tr>
									<td class="tdname">主要创新点</td>
									<td colspan="6" class="tdname"><%=request.getAttribute("C84")%>
									</td>
								</tr>


								<tr>
									<td class="tdname">工作基础</td>
									<td colspan="6" class="tdname"><%=request.getAttribute("C85")%>
									</td>
								</tr>

								<tr>
									<td class="tdname">计划进度及阶段性目标</td>
									<td colspan="6" class="tdname"><%=request.getAttribute("C86")%>
									</td>
								</tr>


							</table>

						</div>
					</div>


					<!-- 项目投入资金预算（万元） -->

					<div title="项目投入资金预算（万元）" style="width: 100%">
						<div style="width: 100% l;">
							<input type="hidden" name="sort" id="sort">
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td class="tdname">预算科目名称</td>
									<td class="tdcontent1-1">合计</td>
									<td class="tdname">市财政经费</td>
									<td class="tdcontent2-2">自筹经费</td>
								</tr>

								<tr>
									<td class="tdname">一、经费支出合计</td>
									<td class="tdname"><%=request.getAttribute("D1")%></td>
									<td class="tdname"><%=request.getAttribute("D2")%></td>
									<td class="tdname"><%=request.getAttribute("D3")%></td>
								</tr>


								<tr>
									<td class="tdname">1、研发设备费</td>
									<td class="tdname"><%=request.getAttribute("D4")%></td>
									<td class="tdname"><%=request.getAttribute("D5")%></td>
									<td class="tdname"><%=request.getAttribute("D6")%></td>
								</tr>
								<tr>
									<td class="tdname">（1）购置研发设备费</td>
									<td class="tdname"><%=request.getAttribute("D7")%></td>
									<td class="tdname"><%=request.getAttribute("D8")%></td>
									<td class="tdname"><%=request.getAttribute("D9")%></td>
								</tr>

								<tr>
									<td class="tdname">（2）试制研发设备费</td>
									<td class="tdname"><%=request.getAttribute("D10")%></td>
									<td class="tdname"><%=request.getAttribute("D11")%></td>
									<td class="tdname"><%=request.getAttribute("D12")%></td>
								</tr>
								<tr>
									<td class="tdname">（3）软件系统开发费</td>
									<td class="tdname"><%=request.getAttribute("D13")%></td>
									<td class="tdname"><%=request.getAttribute("D14")%></td>
									<td class="tdname"><%=request.getAttribute("D15")%></td>
								</tr>

								<tr>
									<td class="tdname">2、合作研发费</td>
									<td class="tdname"><%=request.getAttribute("D16")%></td>
									<td class="tdname"><%=request.getAttribute("D17")%></td>
									<td class="tdname"><%=request.getAttribute("D18")%></td>
								</tr>


								<tr>
									<td class="tdname">（1）引进人才、团队费</td>
									<td class="tdname"><%=request.getAttribute("D19")%></td>
									<td class="tdname"><%=request.getAttribute("D20")%></td>
									<td class="tdname"><%=request.getAttribute("D21")%></td>
								</tr>

								<tr>
									<td class="tdname">（2）购置技术、专利及成果费</td>
									<td class="tdname"><%=request.getAttribute("D22")%></td>
									<td class="tdname"><%=request.getAttribute("D23")%></td>
									<td class="tdname"><%=request.getAttribute("D24")%></td>
								</tr>


								<tr>
									<td class="tdname">（3）产学研合作经费</td>
									<td class="tdname"><%=request.getAttribute("D25")%></td>
									<td class="tdname"><%=request.getAttribute("D26")%></td>
									<td class="tdname"><%=request.getAttribute("D27")%></td>
								</tr>

								<tr>
									<td class="tdname">3、材料费</td>
									<td class="tdname"><%=request.getAttribute("D28")%></td>
									<td class="tdname"><%=request.getAttribute("D29")%></td>
									<td class="tdname"><%=request.getAttribute("D30")%></td>
								</tr>

								<tr>
									<td class="tdname">4、测试化验加工费</td>
									<td class="tdname"><%=request.getAttribute("D31")%></td>
									<td class="tdname"><%=request.getAttribute("D32")%></td>
									<td class="tdname"><%=request.getAttribute("D33")%></td>
								</tr>

								<tr>
									<td class="tdname">5、燃料动力费</td>
									<td class="tdname"><%=request.getAttribute("D34")%></td>
									<td class="tdname"><%=request.getAttribute("D35")%></td>
									<td class="tdname"><%=request.getAttribute("D36")%></td>
								</tr>

								<tr>
									<td class="tdname">6、差旅费</td>
									<td class="tdname"><%=request.getAttribute("D37")%></td>
									<td class="tdname"><%=request.getAttribute("D38")%></td>
									<td class="tdname"><%=request.getAttribute("D39")%></td>
								</tr>
								<tr>
									<td class="tdname">7、会议费</td>
									<td class="tdname"><%=request.getAttribute("D40")%></td>
									<td class="tdname"><%=request.getAttribute("D41")%></td>
									<td class="tdname"><%=request.getAttribute("D42")%></td>
								</tr>

								<tr>
									<td class="tdname">8、国际合作与交流费</td>
									<td class="tdname"><%=request.getAttribute("D43")%></td>
									<td class="tdname"><%=request.getAttribute("D44")%></td>
									<td class="tdname"><%=request.getAttribute("D45")%></td>
								</tr>

								<tr>
									<td class="tdname">9、出版/文献/信息传播/知识产权事务费</td>
									<td class="tdname"><%=request.getAttribute("D46")%></td>
									<td class="tdname"><%=request.getAttribute("D47")%></td>
									<td class="tdname"><%=request.getAttribute("D48")%></td>
								</tr>
								<tr>
									<td class="tdname">10、劳务费</td>
									<td class="tdname"><%=request.getAttribute("D49")%></td>
									<td class="tdname"><%=request.getAttribute("D50")%></td>
									<td class="tdname"><%=request.getAttribute("D51")%></td>
								</tr>

								<tr>
									<td class="tdname">11、专家咨询费</td>
									<td class="tdname"><%=request.getAttribute("D52")%></td>
									<td class="tdname"><%=request.getAttribute("D53")%></td>
									<td class="tdname"><%=request.getAttribute("D54")%></td>
								</tr>

								<tr>
									<td class="tdname">12、管理费</td>
									<td class="tdname"><%=request.getAttribute("D55")%></td>
									<td class="tdname"><%=request.getAttribute("D56")%></td>
									<td class="tdname"><%=request.getAttribute("D57")%></td>
								</tr>


								<tr>
									<td class="tdname">二、经费来源合计</td>
									<td class="tdname"><%=request.getAttribute("D58")%></td>
									<td class="tdname"><%=request.getAttribute("D59")%></td>
									<td class="tdname"><%=request.getAttribute("D60")%></td>
								</tr>

								<tr>
									<td class="tdname">1、申请从市财政经费获得的资助</td>
									<td class="tdname"><%=request.getAttribute("D61")%></td>
									<td class="tdname"><%=request.getAttribute("D62")%></td>
									<td class="tdname"><%=request.getAttribute("D63")%></td>
								</tr>
								<tr>
									<td class="tdname">2、自筹经费来源</td>
									<td class="tdname"><%=request.getAttribute("D64")%></td>
									<td class="tdname"><%=request.getAttribute("D65")%></td>
									<td class="tdname"><%=request.getAttribute("D66")%></td>
								</tr>

								<tr>
									<td class="tdname">（1）其他财政拨款</td>
									<td class="tdname"><%=request.getAttribute("D67")%></td>
									<td class="tdname"><%=request.getAttribute("D68")%></td>
									<td class="tdname"><%=request.getAttribute("D69")%></td>
								</tr>


								<tr>
									<td class="tdname">（2）单位自有货币资金</td>
									<td class="tdname"><%=request.getAttribute("D70")%></td>
									<td class="tdname"><%=request.getAttribute("D71")%></td>
									<td class="tdname"><%=request.getAttribute("D72")%></td>
								</tr>
								<tr>
									<td class="tdname">（3）其他资金</td>
									<td class="tdname"><%=request.getAttribute("D73")%></td>
									<td class="tdname"><%=request.getAttribute("D74")%></td>
									<td class="tdname"><%=request.getAttribute("D75")%></td>
								</tr>


							</table>


							<!--  其中：研发设备费预算明细表       -->

							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td class="tdname" colspan="6">其中：研发设备费预算明细表</td>
								</tr>

								<tr>
									<td class="tdname">设备名称</td>
									<td class="tdname">单价 (万元/台件)</td>
									<td class="tdname">数量（台件）</td>
									<td class="tdname">金额（单位：万元）</td>
									<td class="tdname">购置设备生产国别与地区</td>
									<td class="tdname">与项目关系</td>
								</tr>
								<tr>
									<td class="tdname"><%=request.getAttribute("E1")%></td>
									<td class="tdname"><%=request.getAttribute("E2")%></td>
									<td class="tdname"><%=request.getAttribute("E3")%></td>
									<td class="tdname"><%=request.getAttribute("E4")%></td>
									<td class="tdname"><%=request.getAttribute("E5")%></td>
									<td class="tdname"><%=request.getAttribute("E6")%></td>
								</tr>

								<tr>

									<td class="tdname"><%=request.getAttribute("E7")%></td>
									<td class="tdname"><%=request.getAttribute("E8")%></td>
									<td class="tdname"><%=request.getAttribute("E9")%></td>
									<td class="tdname"><%=request.getAttribute("E10")%></td>
									<td class="tdname"><%=request.getAttribute("E11")%></td>
									<td class="tdname"><%=request.getAttribute("E12")%></td>
								</tr>

								<tr>
									<td class="tdname"><%=request.getAttribute("E13")%></td>
									<td class="tdname"><%=request.getAttribute("E14")%></td>
									<td class="tdname"><%=request.getAttribute("E15")%></td>
									<td class="tdname"><%=request.getAttribute("E16")%></td>
									<td class="tdname"><%=request.getAttribute("E17")%></td>
									<td class="tdname"><%=request.getAttribute("E18")%></td>
								</tr>

								<tr>
									<td class="tdname"><%=request.getAttribute("E19")%></td>
									<td class="tdname"><%=request.getAttribute("E20")%></td>
									<td class="tdname"><%=request.getAttribute("E21")%></td>
									<td class="tdname"><%=request.getAttribute("E22")%></td>
									<td class="tdname"><%=request.getAttribute("E23")%></td>
									<td class="tdname"><%=request.getAttribute("E24")%></td>
								</tr>

								<tr>
									<td class="tdname"><%=request.getAttribute("E25")%></td>
									<td class="tdname"><%=request.getAttribute("E26")%></td>
									<td class="tdname"><%=request.getAttribute("E27")%></td>
									<td class="tdname"><%=request.getAttribute("E28")%></td>
									<td class="tdname"><%=request.getAttribute("E29")%></td>
									<td class="tdname"><%=request.getAttribute("E30")%></td>
								</tr>

								<tr>
									<td class="tdname"><%=request.getAttribute("E31")%></td>
									<td class="tdname"><%=request.getAttribute("E32")%></td>
									<td class="tdname"><%=request.getAttribute("E33")%></td>
									<td class="tdname"><%=request.getAttribute("E34")%></td>
									<td class="tdname"><%=request.getAttribute("E35")%></td>
									<td class="tdname"><%=request.getAttribute("E36")%></td>
								</tr>

								<tr>
									<td class="tdname"><%=request.getAttribute("E37")%></td>
									<td class="tdname"><%=request.getAttribute("E38")%></td>
									<td class="tdname"><%=request.getAttribute("E39")%></td>
									<td class="tdname"><%=request.getAttribute("E40")%></td>
									<td class="tdname"><%=request.getAttribute("E41")%></td>
									<td class="tdname"><%=request.getAttribute("E42")%></td>
								</tr>

								<tr>
									<td class="tdname"><%=request.getAttribute("E43")%></td>
									<td class="tdname"><%=request.getAttribute("E44")%></td>
									<td class="tdname"><%=request.getAttribute("E45")%></td>
									<td class="tdname"><%=request.getAttribute("E46")%></td>
									<td class="tdname"><%=request.getAttribute("E47")%></td>
									<td class="tdname"><%=request.getAttribute("E48")%></td>
								</tr>

								<tr>
									<td class="tdname"><%=request.getAttribute("E49")%></td>
									<td class="tdname"><%=request.getAttribute("E50")%></td>
									<td class="tdname"><%=request.getAttribute("E51")%></td>
									<td class="tdname"><%=request.getAttribute("E52")%></td>
									<td class="tdname"><%=request.getAttribute("E53")%></td>
									<td class="tdname"><%=request.getAttribute("E54")%></td>
								</tr>

								<tr>
									<td class="tdname"><%=request.getAttribute("E55")%></td>
									<td class="tdname"><%=request.getAttribute("E56")%></td>
									<td class="tdname"><%=request.getAttribute("E57")%></td>
									<td class="tdname"><%=request.getAttribute("E58")%></td>
									<td class="tdname"><%=request.getAttribute("E59")%></td>
									<td class="tdname"><%=request.getAttribute("E60")%></td>
								</tr>

								<tr>
									<td class="tdname"><%=request.getAttribute("E61")%></td>
									<td class="tdname"><%=request.getAttribute("E62")%></td>
									<td class="tdname"><%=request.getAttribute("E63")%></td>
									<td class="tdname"><%=request.getAttribute("E64")%></td>
									<td class="tdname"><%=request.getAttribute("E65")%></td>
									<td class="tdname"><%=request.getAttribute("E66")%></td>
								</tr>

								<tr>
									<td class="tdname"><%=request.getAttribute("E67")%></td>
									<td class="tdname"><%=request.getAttribute("E68")%></td>
									<td class="tdname"><%=request.getAttribute("E69")%></td>
									<td class="tdname"><%=request.getAttribute("E70")%></td>
									<td class="tdname"><%=request.getAttribute("E71")%></td>
									<td class="tdname"><%=request.getAttribute("E72")%></td>
								</tr>

								<tr>
									<td class="tdname">累计：</td>
									<td class="tdname"><%=request.getAttribute("E73")%></td>
									<td class="tdname"><%=request.getAttribute("E74")%></td>
									<td class="tdname"><%=request.getAttribute("E75")%></td>
									<td class="tdname"><%=request.getAttribute("E76")%></td>
									<td class="tdname"><%=request.getAttribute("E77")%></td>
								</tr>
							</table>

						</div>
					</div>



					<div title="附件清单" style="width: 100%">
						<div style="width: 100%">

							<input type="hidden" name="sort" id="sort">
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td align="center" height="400px">
										<div class="tdcontent4">
											<%=request.getAttribute("F1")%>

										</div>
									</td>
								</tr>

								<tr>
									<td align="center">
										<div
											style="margin-top: 10px; margin-bottom: 10px; float: right; position: relative; right: 20px">
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

