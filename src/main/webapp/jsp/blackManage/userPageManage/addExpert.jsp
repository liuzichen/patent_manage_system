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

});
function sub(){
	var name=document.getElementById("name").value;
	var age=document.getElementById("age").value;
	var company=document.getElementById("company").value;
	var title=document.getElementById("title").value;
	var major=document.getElementById("major").value;
	var cellphone=document.getElementById("cellphone").value;
	var telephone=document.getElementById("telephone").value;
	var email=document.getElementById("email").value;
	var type=document.getElementById("type").value;
	var achievement=document.getElementById("achievement").value;
	if(name==""){
		alert("提示：\n\n请填写专家姓名！");
		return false;
	}
	if(cellphone==""){
		alert("提示：\n\n请填写联系电话！");
		return false;
	}
	if(email==""){
		alert("提示：\n\n请填写电子邮件！");
		return false;
	}
	if(age==""){
		alert("提示：\n\n请填写年龄！");
		return false;
	}
	if(major==""){
		alert("提示：\n\n请填写专业领域！");
		return false;
	}
	if(type==""){
		alert("提示：\n\n请填写类型！");
		return false;
	}
	if(achievement==""){
		alert("提示：\n\n请填写介绍！");
		return false;
	}
	if(confirm("确认保存更改？")){
		return true;
    }
  else
    {
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
	      <% String urlString=request.getContextPath()+"/manageExpert/insertExpertInfo"; %>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">专家用户信息查看与修改</span></div>
	     <div >
	     	 <form method="post" action="<%=request.getContextPath()%>/manageExpert/insertExpertInfo" name="Form1" id="Form1">
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname" >专家姓名：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="name" id="name" ></td>
	     	 		<td class="tdname">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</td>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox" type="text" name="age" id="age" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">工作单位：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="company" id="company" ></td>
	     	 		<td class="tdname">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：</td>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox" type="text" name="title" id="title" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历：</td>
	     	 		<td class="tdcontent1"  ><input class="easyui-textbox mydatebox" type="text" name="major" id="major"></td>
	     	 		<td class="tdname">联系电话：</td>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox" type="text" name="cellphone" id="cellphone" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">办公室电话：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="telephone" id="telephone" ></td>
	     	 		<td class="tdname">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</td>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox" type="text" name="email" id="email"></td>
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
					<input class="easyui-textbox mydatebox" type="text" name="type" id="type">
					</td>
	     	 	</tr>
	     	 	<tr>
             	 <td  class="tdname" align="center" >学术科研成就简介</td>
            	 <td  align="center" height="400px" colspan="3">
	            	 <div class="tdcontent3">
		               <textarea id="achievement" name="achievement" cols="40" rows="12" style="margin-top:10px;width:90%;height:90%;"></textarea>
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