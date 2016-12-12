<%@ page language="java" contentType="text/html; charset=UTF-8" 
import="java.util.*,java.lang.reflect.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>专家评审费发放管理</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var project="111";
	var title="1";
	var team="1";
	var contact="123";
	var phone="123456";
	var email="2";
	$("#project").textbox("setValue", project); 
	$("#contact").textbox("setValue", contact); 
	$("#phone").textbox("setValue", phone); 
	$("#title").textbox("setValue", title);
	$("#team").textbox("setValue", team);  
	$("#email").textbox("setValue", email);  
	document.getElementById("field").value=field; 	
});
function sub(){
	var email=document.getElementById("email").value;
	var contact=document.getElementById("contact").value;
	var phone=document.getElementById("phone").value;
	var title=document.getElementById("title").value;
	var field=document.getElementById("field").value;
	var description=document.getElementById("description").value;
	if(title==""){
		alert("提示：\n\n请填写成果名称！");
		return false;
	}
	if(contact==""){
		alert("提示：\n\n请填写联系人！");
		return false;
	}
	if(phone==""){
		alert("提示：\n\n请填写联系电话！");
		return false;
	}
	if(field==""){
		alert("提示：\n\n请选择技术领域！");
		return false;
	}
	if(email==""){
		alert("提示：\n\n请填写电子邮箱！");
		return false;
	}
	if(description==""){
		alert("提示：\n\n请填写作品简介！");
		return false;
	}
	if(confirm("确认提交原创成果？")){
		return true;
	}
	else{
		return false;
	}
}
</script>
<%String b="123"; %>
</head>
<body>
<div >
	<div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >专家评审费发放管理&nbsp;&nbsp; &gt;&nbsp;&nbsp;</font></span>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">项目作品提交</span></div>
	     <div >
	     	 <form action="" name="Form1" id="Form1">
	     	 <input type="hidden" id="projectid" name="projectid" value="<%=b%>">
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname">项目名称</td>
	     	 		<td class="tdname">项目所属领域</td>
					<td class="tdname">评审状态</td>
					<td class="tdname">评审专家</td>
					<td class="tdname">评审费用</td>
	     	 	</tr>
	     	 	
	     	 	<tr>
	             <td align="center" colspan="5">
	             	<div style="margin-top:20px;margin-left:auto;margin-right:auto; margin-bottom:20px" >
	             		<a href="javascript:void(document.Form1.submit())" style="height:35px;width:70px;font-size:16px;" class="easyui-linkbutton button" onclick="return sub();">提&nbsp;&nbsp;交</a>
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