<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创客用户注册</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
<style type="text/css">
body{margin:0;padding:0; font:12px "宋体", arial,sans-serif;}
a {color:#ff6600; text-decoration:none;}	
a:visited{text-decoration:none;}
a:hover{color:#ff6600;text-decoration:underline;}
a:active{color:#63B8FF;}
td{height:40px;text-align:left;}
select{width:245px;}
.header{width:1000px;height:150px;margin:0px auto;clear:both;position:relative;}
.header_left{height:100px; width:400px; position:absolute; bottom:0px; left:50px;}
.header_right{height:50px; width:265px;position:absolute;text-align:center;margin:0px auto;right:50px;top:100px;}
.xline{border-bottom:solid 2px #7A378B; height:5px;width:1000px;margin:0px auto;}
.title{width:800px;height:100px;margin:0px auto;clear:both;position:relative; }
.title_left{height:100%; width:400px; position:absolute; left:50px; font-size:28px; font-family:"微软雅黑";bottom:0px;font-weight:bold; }
.title_right{height:50px; width:150px;position:absolute;margin:0px auto;right:50px;bottom:0px;}
.label1{font:16px "微软雅黑",arial,sans-serif ; width:100px; position:absolute; left:100px;top:30px; font-weight:bold}
.label2{font:16px "微软雅黑",arial,sans-serif ; width:100px; position:absolute; left:100px;top:240px; font-weight:bold}
.info{width:800px;height:650px;margin:0px auto;clear:both;position:relative;}
.info_form1{width:500px; margin:0px auto;clear:both;position:relative; top:70px;}
.info_form2{width:500px; margin:0px auto;clear:both;position:relative; top:160px;}
.box{width:240px;}
.star{color:#CD0000;width:120px}
.clause{font-size:10px;}
.regbt{background-color:}
.bottom{width:800px; height:60px;margin:0px auto;clear:both;position:relative;}
.loginfooter{text-align:center; color:#8d8c8c;width:800px; height:60px; line-height:20px; font-family:Verdana,arial,sans-serif;position:relative;margin:0px auto;font-size:10px;}
</style>
<script type="text/javascript">
$(document).ready(function(){
	var isExist ="<%=request.getSession().getAttribute("isExist")%>";
	if(isExist=="1"){
		alert("提示：\n\n注册成功！");
		window.location.href="login.jsp"; 
	}
	if(isExist=="2"){
		alert("提示：\n\n注册失败！");
	}
});
var ajaxstate=0;
function txtisnull(id){
	var txt=document.getElementById(id).value;
	if(txt=="")
	{
		return true;
	}
	else{
		return false;
	}
}
function checkForm()
{
	var num=0;
	if(txtisnull("register_username"))
	{
		num++;
	}
	if(txtisnull("register_password"))
	{
		num++;
	}
	if(txtisnull("register_apassword"))
	{
		num++;
	}
	if(txtisnull("register_contact")){num++;}
	if(txtisnull("register_phone")){num++;}
	if(txtisnull("register_email")){num++;}
	if(txtisnull("register_field1")){num++;}
		
	if(num!=0)
	{
		alert("您有必填信息没有填写！");
		return false;
	}
	if(!($("#register_username").val().length>5&&$("#register_username").val().length<41))
	{
		alert("提示：\n\n用户名位数错误！"); 
		return false; 
	}
	if(!($("#register_password").val().length>4&&$("#register_password").val().length<20))
	{
		alert("提示：\n\n密码位数错误！"); 
		return false;  
	}
	if($("#register_password").val()!=$("#register_apassword").val())
	{
		alert("提示：\n\n两次密码输入不一致！"); 
		return false;  
	}
	usernameajax('register_username');
	if(ajaxstate==1){
		alert("提示：\n\n用户名不可用！"); 
		return false;
	}
	else{
		$("#info_form1").submit();
	}
}
function usernameajax(objid)
{
	var txtval=$("#"+objid).val();
	$.ajax({
		type: "POST",
		async: false,
		url: "",    
		data: {username:txtval},   
		dataType : "text",
		success: function(msg){
				if(msg=="success")
				{
					ajaxstate=0; //验证成功
				}
				else
				{
					ajaxstate=1;
				}
			}     
	}); 
}
</script>
</head>
<body>
<%request.getSession().setAttribute("isExist","0");%>
<div class="header">
	<div class="header_left">
		<img src="<%=request.getContextPath()%>/image/login_logo.jpg" style="width:100%;height:100%"></img>
	</div>	
</div>
<div class="title">
	<div class="title_left">
		<span style="position:absolute;bottom:0px; ">创客用户注册</span>
		<span style="position:absolute;bottom:0px; font-size:12px;left:180px">适用于:个人、团队创业者及小微企业</span>
	</div>
	<div class="title_right">
		<a href="#" style="position:absolute;bottom:0px; ">切换到企业用户注册</a><!-- 提取企业注册相关信息后台代码 -->
	</div>
</div>
<div class="xline"></div>
<div class="info">
<form method="post" action="" id="register_Form" name="register_Form">
	<div class="label1">
		<span>基本信息</span>
	</div>
	<div class="info_form1">
			<input type="hidden" name="register_roleid" id="register_roleid" value="2">
			<table border="0" cellspacing="0" cellpadding="0" style="margin:0px auto;">
					<tr>
						<td width="60" >用&nbsp;户&nbsp;名:</td>
						<td width="260"><input class="easyui-textbox box" type="text" name="register_username" id="register_username"></td>
						<td class="star">*&nbsp;请确保长度为6~40</td>
					</tr>
					<tr>
						<td>密&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
						<td><input class="easyui-textbox box" type="password" name="register_password" id="register_password"></td>
						<td class="star">*&nbsp;请确保长度为5~19</td>
					</tr>
					<tr>
						<td>密码确认:</td>
						<td><input class="easyui-textbox box" type="password" name="register_apassword" id="register_apassword"></td>
						<td class="star">*</td>
					</tr>
			</table>
	</div>
	<div class="label2">
		<span>团队信息</span>
	</div>
	<div class="info_form2">
			<table border="0" cellspacing="0" cellpadding="0" style="margin:0px auto;">
					<tr>
						<td width="60" >团队名称:</td>
						<td width="260"><input class="easyui-textbox box" type="text" name="register_team" id="register_team"></td>
						<td class="star"></td>
					</tr>
					<tr>
						<td>负&nbsp;责&nbsp;人:</td>
						<td><input class="easyui-textbox box" type="text" name="register_contact" id="register_contact"></td>
						<td class="star">*</td>
					</tr>
					<tr>
						<td>电子邮箱:</td>
						<td><input class="easyui-textbox box" type="text" name="register_email" id="register_email"></td>
						<td class="star">*</td>
					</tr>
					<tr>
						<td>联系电话:</td>
						<td><input class="easyui-textbox box" type="text" name="register_phone" id="register_phone"></td>
						<td class="star">*</td>
					</tr>
					<tr>
						<td>通讯地址:</td>
						<td><input class="easyui-textbox box" type="text" name="register_address" id="register_address"></td>
						<td class="star"></td>
					</tr>
					<tr>
						<td>第一领域:</td>
						<td><select id="register_field1"  name="register_field1">
								<option value="">--请选择--</option> 
								<%List  list= (ArrayList)request.getAttribute("field");
								for(int i=0;i<list.size();i++){
									Field fd = (Field)list.get(i);%><option value="<%=fd.getFieldId()%>"><%=fd.getName()%></option><%}%>
							</select>

						</td>
						<td class="star">*</td>
					</tr>
					<tr>
						<td>第二领域:</td>
						<td><select id="register_field2"  name="register_field2">
								<option value="">--请选择--</option> 
								<%
								for(int i=0;i<list.size();i++){
									Field fd = (Field)list.get(i);%><option value="<%=fd.getFieldId()%>"><%=fd.getName()%></option><%}%>
							</select>

						</td>
						<td class="star"></td>
					</tr>
					<tr>
						<td height="60">&nbsp;</td>
					</tr>
			</table>
			<table>
					<tr>
          				<td width="30">&nbsp;</td>
        				<td width="130"><div class="regbt" id="subform"><img name="register_signin" id="register_signin" alt="注册" src="<%=request.getContextPath()%>/image/register2.jpg" onclick="checkForm()" style="cursor:pointer; width:110px;height:40px;" />&nbsp;	</div></td>
            			<td width="300"><div class="clause">在接受本网站服务之前，请务必仔细<a href="#">阅读相关条款</a>并同意本声明。</div></td>
        			</tr>
					
			</table>
	</div>
</form>
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
</body>
</html>