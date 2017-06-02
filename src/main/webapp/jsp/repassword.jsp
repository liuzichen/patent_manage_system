<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>密码修改</title>
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
<style type="text/css">
.box {
	margin: 0px auto;
	width: 500px;
	height: 500px;
	position: relative;
}

.tdname {
	width: 30%;
	height: 30px;
	text-align: center;
}

.tdcontent {
	text-align: center;
}
</style>
<script type="text/javascript">
function checkform(){
	var oldp = document.getElementById("oldp").value;
	var newp = document.getElementById("newp").value;
	var againp = document.getElementById("againp").value;
	var password=<%=session.getAttribute("password")%>;
	if(oldp!=password){
		alert("提示：\n\n原始密码错误！");
		document.getElementById("oldp").value = "";             
		document.getElementById("oldp").focus();
		return false;
	}
	if(newp.length<4 || newp.length>20){             
		alert("提示：\n\n密码必须大于4位，小于20位！");
		document.getElementById("newp").value = "";             
		document.getElementById("newp").focus();             
		return false;        
	}
	if(newp!=againp){
		alert("提示：\n\n两次输入的密码不同！");
		document.getElementById("newp").value = "";  
		document.getElementById("againp").value = "";
		document.getElementById("newp").focus();
		return false;
	}
	if(confirm("确认更改密码？"))
	{
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
						&gt;&nbsp;&nbsp; 登录密码修改</font></span>
			</div>
		</div>

		<div class="context">
			<form method="post"
				action="<%=request.getContextPath()%>/login/repassword" id="reform"
				name="reform">
				<div class="box">
					<div class="titlebox">
						<div class="title">登录密码修改</div>
					</div>

					<div class="tablebox">

						<table
							style="width: 100%; border: solid #B8B8B8; border-width: 0px 1px 1px 1px;">
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td class="tdname" style="background-color: #F7F7F7;">当前用户名:</td>
								<td class="tdcontent"><%=session.getAttribute("userName")%></td>
							</tr>
							<tr>
								<td class="tdname" style="background-color: #F7F7F7;">旧&nbsp;&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
								<td class="tdcontent"><input class="easyui-textbox"
									type="password" id="oldp" name="oldp" style="width: 90%;"></td>
							</tr>
							<tr>
								<td class="tdname" style="background-color: #F7F7F7;">新密码:</td>
								<td class="tdcontent"><input class="easyui-textbox"
									type="password" id="newp" name="newp" style="width: 90%;"></td>
							</tr>
							<tr>
								<td class="tdname" style="background-color: #F7F7F7;">密码确认:</td>
								<td class="tdcontent"><input class="easyui-textbox"
									type="password" id="againp" name="againp" style="width: 90%;"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td style="text-align: center;" colspan="2"><a
									href="javascript:void(document.reform.submit())"
									class="easyui-linkbutton button" onclick="return checkform();">保&nbsp;&nbsp;存</a></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
						</table>

					</div>

				</div>
			</form>
		</div>

	</div>
</body>
</html>