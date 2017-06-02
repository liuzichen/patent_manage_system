<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息维护</title>
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
	var address="123";
	var contact="123";
	var phone="123456";
	var email="123@";
	var postcode="谁知道住哪";
	$("#contact").textbox("setValue", contact); 
	$("#phone").textbox("setValue", phone); 
	$("#email").textbox("setValue", email); 
	$("#postcode").textbox("setValue", postcode); 
	$("#address").textbox("setValue", address);

});
function sub(){
	var phone=document.getElementById("phone").value;
	var email=document.getElementById("email").value;
	var address=document.getElementById("address").value;
	var contact=document.getElementById("contact").value;
	var postcode=document.getElementById("postcode").value;
	if(contact==""){
		alert("提示：\n\n请填写联系人！");
		return false;
	}
	if(phone==""){
		alert("提示：\n\n请填写联系电话！");
		return false;
	}
	if(email==""){
		alert("提示：\n\n请填写电子邮件！");
		return false;
	}
	if(address==""){
		alert("提示：\n\n请填写所在地址！");
		return false;
	}
	if(postcode==""){
		alert("提示：\n\n请填写邮政编码！");
		return false;
	}
	if(confirm("确认保存更改？")){
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
		<div class="topnav">
			<div class="path">
				<span><font>当前位置:</font></span> <span><font>基本信息管理&nbsp;&nbsp;
						&gt;&nbsp;&nbsp; 基本信息维护</font></span>
			</div>
		</div>
		<div class="context">
			<div class="titlebox">
				<span class="title">政府部门基本信息</span>
			</div>
			<div>
				<form action="" name="Form1" id="Form1">
					<table class="persional" align="center" border="1" cellpadding="0"
						cellspacing="0" bordercolor="#DEE5EA">
						<tr>
							<td class="tdname">部门名称：</td>
							<td class="tdcontent1"></td>
							<td class="tdname">部门级别：</td>
							<td class="tdcontent2"></td>
						</tr>
						<tr>
							<td class="tdname">账户ID：</td>
							<td class="tdcontent1"></td>
							<td class="tdname">联系人：</td>
							<td class="tdcontent2"><input
								class="easyui-textbox mydatebox" type="text" name="contact"
								id="contact"></td>
						</tr>
						<tr>
							<td class="tdname">联系电话：</td>
							<td class="tdcontent1"><input
								class="easyui-textbox mydatebox" type="text" name="phone"
								id="phone"></td>
							<td class="tdname">电子邮箱：</td>
							<td class="tdcontent2"><input
								class="easyui-textbox mydatebox" type="text" name="email"
								id="email"></td>
						</tr>
						<tr>
							<td class="tdname">地址：</td>
							<td class="tdcontent1"><input
								class="easyui-textbox mydatebox" type="text" name="address"
								id="address"></td>
							<td class="tdname">邮政编码：</td>
							<td class="tdcontent2"><input
								class="easyui-textbox mydatebox" type="text" name="postcode"
								id="postcode"></td>
						</tr>
						<tr>
							<td align="center" colspan="4">
								<div
									style="margin-top: 15px; margin-left: auto; margin-right: auto; margin-bottom: 15px">
									<a href="javascript:void(document.Form1.submit())"
										style="height: 35px; width: 70px; font-size: 16px;"
										class="easyui-linkbutton button" onclick="return sub();">保&nbsp;&nbsp;存</a>
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