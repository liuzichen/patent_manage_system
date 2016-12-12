<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业用户注册</title>
<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>

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
.info{width:800px;height:810px;margin:0px auto;clear:both;position:relative;}
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
function timeboxisnull(id){
	var txt = $("#"+id).datebox("getValue");
	if(txt=="")
	{
		return true;
	}
	else{
		return false;
	}
}
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
	if(txtisnull("register_company")){num++;}
	if(timeboxisnull("register_time")){num++;}
	if(txtisnull("register_code")){num++;}
	if(txtisnull("register_money")){num++;}
	if(txtisnull("register_sort")){num++;}
	if(txtisnull("register_channel2")){num++;}
	if(txtisnull("register_contact")){num++;}
	if(txtisnull("register_phone")){num++;}
	if(txtisnull("register_email")){num++;}
	if(txtisnull("register_address")){num++;}	
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
	if($("#register_code").val().length!=9)
	{
		alert("提示：\n\n法人代码位数错误！"); 
		return false;  
	}
	if(checkcode("register_code")==false){
		alert("提示：\n\n法人代码格式不规范！"); 
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
function checkcode(objid){
	var txtval=$("#"+objid).val();
	var reg = /^[0-9]{8}[0-9a-z]$/;
	return reg.test(txtval);
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
function getEachScienceOffice(){
	var txtval=$("#register_channel1").val();
	if(txtval!=""){
	$.ajax({
		type: "POST",
		async: false,
		url: "<%=request.getContextPath()%>/channel2.do",    
		data: {first:txtval},   
		dataType : "text",
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			 alert(XMLHttpRequest.status);
			 alert(XMLHttpRequest.readyState);
			 alert(textStatus);
			   },
		success: function(msg){
			var objSelect = document.getElementById("register_channel2");
			var result = eval("("+msg+")"); 
			while(objSelect.options.length>0)
			{
				objSelect.options.remove(0);  
			}
			objSelect.options.add(new Option("--请选择--", "0"));
			$(result.msg).each(function (key) {
                //第一种方法
                var opt = new Option(result.msg[key].text, result.msg[key].value);
                objSelect.options.add(opt);
			});
		}
	}); 
}
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
		<span style="position:absolute;bottom:0px; ">企业用户注册</span>
		<span style="position:absolute;bottom:0px; font-size:12px;left:180px">适用于:大、中型企业</span>
	</div>
	<div class="title_right">
		<a href="#" style="position:absolute;bottom:0px; ">切换到创客用户注册</a><!-- 提取创客注册相关信息后台代码 -->
	</div>
</div>
<div class="xline"></div>
<div class="info">
<form method="post" action="" id="register_Form" name="register_Form">
	<div class="label1">
		<span>基本信息</span>
	</div>
	<div class="info_form1">
			<input type="hidden" name="register_roleid" id="register_roleid" value="3">
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
		<span>企业信息</span>
	</div>
	<div class="info_form2">
			<table border="0" cellspacing="0" cellpadding="0" style="margin:0px auto;">
					<tr>
						<td width="60" >企业名称:</td>
						<td width="260"><input class="easyui-textbox box" type="text" name="register_company" id="register_company"></td>
						<td class="star">*</td>
					</tr>
					<tr>
						<td>法人代码:</td>
						<td><input class="easyui-textbox box" type="text" name="register_code" id="register_code"></td>
						<td class="star">*&nbsp;请填写9位代码</td>
					</tr>
					<tr>
						<td>注册时间:</td>
						<td><input class="easyui-datebox box" type="text" name="register_time" id="register_time" editable="false" panelHeight="260" panelWidth="200" ></td>
						<td class="star">*&nbsp;工商局注册时间</td>
					</tr>
					<tr>
						<td>注册资金:</td>
						<td><input class="easyui-textbox box" type="text" name="register_money" id="register_money"></td>
						<td class="star">*</td>
					</tr>
					<tr>
						<td>单位性质:</td>
						<td><select id="register_sort"  name="register_sort">
								<option value="">--请选择--</option> 
								<option value="1" >事业型研究单位</option>
	     			     		<option value="2" >政府机关</option>
	     			     		<option value="3" >群众团体</option>
	     			     		<option value="4" >其他事业单位</option>
	     			     		<option value="5" >转制型企业</option>
	     			     		<option value="6" >国有企业</option>
	     			     		<option value="7" >集体所有制企业</option>
	     			     		<option value="8" >私营企业</option>
	     			     		<option value="9" >合资企业</option>
	     			     		<option value="10" >外商投资企业</option>
	     			     		<option value="11" >港、澳、台投资企业</option>
	     			     		<option value="12" >其他企业</option> 
							</select>
						</td>
						<td class="star">*</td>
					</tr>
					<tr>
						<td>申报渠道:</td>
						<td><select id="register_channel1"  name="register_channel1" onchange="getEachScienceOffice()">
								<option value="">--请选择--</option> 
								<option value="1">区市县科技局</option>
								<option value="2">高校</option>
								<option value="3">行业主管部门</option>
								<option value="4">市科技局</option>
							</select>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<select id="register_channel2"  name="register_channel2">
							</select>
						</td>
						<td class="star">*</td>
					</tr>
					<tr>
						<td>联&nbsp;系&nbsp;人:</td>
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
						<td>邮政编码:</td>
						<td><input class="easyui-textbox box" type="text" name="register_address" id="register_address"></td>
						<td class="star">*</td>
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