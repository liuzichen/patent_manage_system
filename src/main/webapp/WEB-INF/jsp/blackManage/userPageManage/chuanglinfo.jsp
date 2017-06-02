<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创客用户详情</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/common.css">
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
<script type="text/javascript">
$(document).ready(function(){
	var team="123";
	var contact="123";
	var phone="123456";
	var email="123@";
	var address="谁知道住哪";
	var field1="2";
	var field2="";
	$("#team").textbox("setValue", team);
	$("#contact").textbox("setValue", contact); 
	$("#phone").textbox("setValue", phone); 
	$("#email").textbox("setValue", email); 
	$("#address").textbox("setValue", address); 
	document.getElementById("field1").value=field1; 
	document.getElementById("field2").value=field2;
});
</script>
</head>
<body>
	<div>
		<div class="topnav">
			<div class="path">
				<span><font>当前位置:</font></span> <span><font>用户信息管理&nbsp;&nbsp;
						&gt;&nbsp;&nbsp;创客用户信息详情</font></span>
			</div>
		</div>
		<div class="context">
			<div class="titlebox">
				<span class="title">团队基本信息</span>
			</div>
			<div>
				<form action="" name="Form1" id="Form1">
					<table class="persional" align="center" border="1" cellpadding="0"
						cellspacing="0" bordercolor="#DEE5EA">
						<tr>
							<td class="tdname">团队名称：</td>
							<td class="tdcontent1"><%=request.getAttribute("team")%></td>
							<td class="tdname">负责人：</td>
							<td class="tdcontent2"><%=request.getAttribute("contact")%>
						</tr>
						<tr>
							<td class="tdname">联系电话：</td>
							<td class="tdcontent1"><%=request.getAttribute("phone")%></td>
							<td class="tdname">电子邮箱：</td>
							<td class="tdcontent2"><%=request.getAttribute("email")%></td>
						</tr>
						<tr>
							<td class="tdname">通讯地址：</td>
							<td class="tdcontent1" colspan="3"><%=request.getAttribute("address")%>
							</td>
						</tr>
						<tr>
							<td class="tdname">第一领域：</td>
							<td class="tdcontent1"><%=request.getAttribute("field1")%></td>
							<td class="tdname">第二领域：</td>
							<td class="tdcontent2"><%=request.getAttribute("field1")%></td>
						</tr>
						<tr>
							<td class="tdname" align="center">团队情况介绍</td>
							<td align="center" height="400px" colspan="3">
								<div class="tdcontent3">
									<textarea id="teamIntro" name="teamIntro" cols="40" rows="12"
										style="width: 90%; height: 90%;">
		               <%=request.getAttribute("teamIntro")%>
		               </textarea>
								</div>
							</td>
						</tr>
						<tr>
							<td class="tdname" align="center">创作成果简介</td>
							<td align="center" height="400px" colspan="3">
								<div class="tdcontent3">
									<textarea id="achievement" name="achievement" cols="40"
										rows="12" style="width: 90%; height: 90%;">
		                  <%=request.getAttribute("achievement")%>
		               </textarea>
								</div>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>

	</div>
</body>
</html>