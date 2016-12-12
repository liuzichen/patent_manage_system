<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>专家用户信息查看与修改</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
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
function sub(){
	var contact=document.getElementById("contact").value;
	var phone=document.getElementById("phone").value;
	var email=document.getElementById("email").value;
	var teamIntro=document.getElementById("teamIntro").value;
	if(contact==""){
		alert("提示：\n\n请填写负责人！");
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
	if(teamIntro==""){
		alert("提示：\n\n请填写团队情况介绍！");
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
<div >
	<div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >用户信息管理&nbsp;&nbsp; &gt;&nbsp;&nbsp;专家用户信息查看与修改</font></span>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">专家用户信息查看与修改</span></div>
	     <div >
	     	 <form action="" name="Form1" id="Form1">
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname" >专家姓名：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="Name" id="Name" ></td>
	     	 		<td class="tdname">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</td>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox" type="text" name="Age" id="Age" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">工作单位：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="Company" id="Company" ></td>
	     	 		<td class="tdname">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：</td>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox" type="text" name="Title" id="Title" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历：</td>
	     	 		<td class="tdcontent1"  ><input class="easyui-textbox mydatebox" type="text" name="Major" id="Major"></td>
	     	 		<td class="tdname">联系电话：</td>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox" type="text" name="Cellphone" id="Cellphone" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">办公室电话：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="Telephone" id="Telephone" ></td>
	     	 		<td class="tdname">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</td>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox" type="text" name="Email" id="Email"></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">第一领域:</td>
	     	 		<td class="tdcontent1"><select id="field1"  name="field1" style="width:80%">
					<%-- 
						<%List  list= (ArrayList)request.getAttribute("field");
						for(int i=0;i<list.size();i++){
						Field fd = (Field)list.get(i);%><option value="<%=fd.getFieldId()%>"><%=fd.getName()%></option><%}%>
					 --%>
					 </select>
					</td>
	     	 		<td class="tdname">第二领域：</td>
	     	 		<td class="tdcontent2"><select id="field2"  name="field2" style="width:80%"> 
	     	 		<option value="">--请选择--</option>
					<%-- <%  for(int i=0;i<list.size();i++){
					 Field fd = (Field)list.get(i);%><option value="<%=fd.getFieldId()%>"><%=fd.getName()%></option><%}%>
					 --%>
					</select></td>
	     	 	</tr>
	     	 	<tr>

	     	 		<td class="tdname">所属类别：</td>
	     	 		<td class="tdcontent2" colspan="3">
					<input class="easyui-textbox mydatebox" type="text" name="Type" id="Type">
					</td>
	     	 	</tr>
	     	 	<tr>
             	 <td  class="tdname" align="center" >学术科研成就简介</td>
            	 <td  align="center" height="400px" colspan="3">
	            	 <div class="tdcontent3">
		               <textarea id="Acievement" name="Achiement" cols="40" rows="12" style="margin-top:10px;width:90%;height:90%;"></textarea>
		             </div> 
                 </td>
                </tr>

                <tr>
	             <td align="center" colspan="4">
	             	<div style="margin-top:20px;margin-left:auto;margin-right:auto; margin-bottom:20px" >
	             		<a href="javascript:void(document.Form1.submit())" style="height:35px;width:70px;font-size:16px;" class="easyui-linkbutton button" onclick="return sub();">保&nbsp;&nbsp;存</a>
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