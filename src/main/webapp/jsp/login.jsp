<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="com.google.code.kaptcha.Constants"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登陆</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<style type="text/css">
body{margin:0;padding:0; font:12px "宋体", arial,sans-serif;}
.header{width:980px;margin:0px auto;clear:both;}
.container{width:100%; height:420px;margin:0px auto;clear:both;position:relative;background:url(<%=request.getContextPath()%>/image/login_bg.jpg);}
.header_left{float:left;height:200px; width:400px; position:relative;}
.header_right{float:right;height:100px; width:265px;}
.info{width:300px; height:350px;position:absolute; top:140px; right:140px;}
.background{width:1200px; height:100%;position:relative;margin-left:auto; margin-right:auto;background:url(<%=request.getContextPath()%>/image/login_cbg.jpg);backgroud-repea:no-repeat;}
.bottom{width:100%; height:60px;margin:0px auto;clear:both;position:relative;}
.loginfooter{text-align:center; color:#8d8c8c;width:1200px; height:60px; line-height:20px; font-family:Verdana,arial,sans-serif;position:relative;margin-left:auto; margin-right:auto;}
</style>
<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
<script type="text/javascript">
$.ajaxSetup ({
   	cache: true //关闭AJAX相应的缓存
});
$(document).ready(function(){
	var isExist ="<%=request.getSession().getAttribute("isExist")%>";
	if(isExist=="1"){
		alert("用户名或密码错误");
	}
	if(isExist=="2"){
		alert("验证码错误");
	}
});
function checkForm(){
	var username = document.getElementById("login_username").value;   
	var password = document.getElementById("login_password").value;
	if(username.length==0){             
		alert("提示：\n\n用户名不能为空！");  
		document.getElementById("login_username").value = "";             
		document.getElementById("login_username").focus();             
		return false;        
		}                
	if(password.length<4 || password.length>20){             
		alert("提示：\n\n密码必须大于4位，小于20位！");
		document.getElementById("login_password").value = "";             
		document.getElementById("login_password").focus();             
		return false;        
		}
	login_Form.submit();
}
function changecode(){
	$("#kaptchaImage").hide().attr('src', '<%=request.getContextPath()%>/kaptcha.do?' + Math.floor(Math.random()*100) ).fadeIn();
	event.cancelBubble=true;
}      
</script>
</head>
<body>
<%request.getSession().setAttribute("isExist","0");%>
<div id="login">
	<div class="header">
		<div class="header_left"><img src="<%=request.getContextPath()%>/image/login_logo.jpg" style="position:absolute; bottom:0px; width:100%; height:50%;" ></div>
	</div>
	<div class="container">
		<div class="background">
		<div class="info">
			<form  method="post" action="<%=request.getContextPath()%>/login/log" id="login_Form"> <!-- action填目标文件地址 -->
				<table width="350" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="60" height="40" align="left">账号类型</td>
						<td><select id="role"  name="role" style="width:180px;">
 								<option value="专家用户">专家用户</option>
								<option value="个人用户">个人用户</option>
 								<option value="企业用户">企业用户</option>
 								<option value="政府用户">政府用户</option>
 							</select></td>
					</tr>
					<tr>
						<td height="40" align="left">用户名</td>
						<td><input class="easyui-textbox" type="text" name="login_username" id="login_username" style="width:180px;"></td>
					</tr>
					<tr>
						<td height="40" align="left">密&nbsp;&nbsp;&nbsp;&nbsp;码</td>
						<td><input class="easyui-textbox" type="password" name="login_password" id="login_password" style="width:180px;"></td>
					</tr>
					<tr>
						<td height="40" align="left">验&nbsp;证&nbsp;码</td>
						<td align="left" height="40"><input class="easyui-textbox" type="text" name="login_code" id="login_code" style="width:80px;">&nbsp;<img align=center alt="刷新" id="kaptchaImage" src="<%=request.getContextPath()%>/kaptcha.do" style="cursor:pointer;" onclick="changecode()"/> <a href="Javascript:void(0);"  onclick="changecode()" style="font-size:8pt;">看不清？</a></td>
					</tr>
					<tr>
						<td height="74">&nbsp;</td>
								<td><div style="float:left">
										<img name="login_signin" id="login_signin" alt="登录" src="<%=request.getContextPath()%>/image/signin.png" onclick="checkForm()" style="cursor:pointer;" />&nbsp;										
									</div>
                                    <div style="float:left; line-height:40px; padding-left:20px;">
                                    <a href="register.jsp" style="color: #338cce;">新用户注册</a><!-- 链接注册页面 -->
                                    </div>
								</td>

					</tr>
				</table>
			</form>
		</div>
		</div>
	</div>
	<div class="bottom">
	<div class="loginfooter">
	<pre align="centre" height=100% >
Copyright  1998 - 2012 All Rights Reserved. 版权所有 大连中天项目管理有限公司 
联系电话：0411-88079200 传真：0411-88079200-777 公司地址：大连市沙河口区佳时科技园1栋4层 邮编：116000 
	</pre>
	</div>
	<div style="line-height:100px;">
	&nbsp;
	</div>
	</div>
</div>

</body>
</html>