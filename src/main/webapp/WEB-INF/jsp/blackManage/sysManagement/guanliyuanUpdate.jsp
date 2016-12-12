<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加系统管理员</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<style type="text/css">
	body{
		margin:0;
		padding:0; 
		font:12px "宋体", arial,sans-serif;
	}
	.star{
		color:#CD0000;
		width:120px
	}
	.box{width:240px;}
</style>

<script type="text/javascript">

$(document).ready(function(){
	var isExist ="<%=request.getSession().getAttribute("isExist")%>";
	if(isExist=="1"){
		alert("提示：\n\n修改成功！");
		window.location.href="#"; 
	}
	if(isExist=="2"){
		alert("提示：\n\n修改失败！");
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
	if(txtisnull("AdministratorID")){num++;}
	if(txtisnull("Name"))
	{
		num++;
	}
	if(txtisnull("Password"))
	{
		num++;
	}
	if(txtisnull("Password"))
	{
		num++;
	}
	
	if(txtisnull("RoleID")){num++;}
	

		
	if(num!=0)
	{
		alert("您有必填信息没有填写！");
		return false;
	}
	if(!($("#Name").val().length>5&&$("#Name").val().length<41))
	{
		alert("提示：\n\n用户名位数错误！"); 
		return false; 
	}
	if(!($("#Password").val().length>4&&$("#Password").val().length<20))
	{
		alert("提示：\n\n密码位数错误！"); 
		return false;  
	}
	if($("#Password").val()!=$("#Password").val())
	{
		alert("提示：\n\n两次密码输入不一致！"); 
		return false;  
	}
	usernameajax('Name');
	if(ajaxstate==1){
		alert("提示：\n\n用户名不可用！"); 
		return false;
	}
	else{
		$("#Form1").submit();
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
<div >
	<div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >系统管理&nbsp;&nbsp; &gt;&nbsp;&nbsp; 修改系统管理员</font></span>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">修改系统管理员</span></div>
	     <div >
	     	 <form action="" name="Form1" id="Form1">
	     	 <table class="persional"  border="0" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname" style="background-color:white">用户登录ID：</td>
	     	 		<td class="tdcontent1" colspan="3"><input class="easyui-textbox box"  type="text" name="AdministratorID" id="AdministratorID" ><%request.getAttribute("AdministratorID");%></td>
	     	 		<td class="star">*&nbsp;请确保长度为6~40</td>
	     	 	</tr>
	     	 	
	     	 	<tr>
	     	 		<td class="tdname" style="background-color:white">用户名：</td>
	     	 		<td class="tdcontent1" colspan="3"><input class="easyui-textbox box" type="text" name="Name" id="Name"  value='<jsp:attribute name="Name"></jsp:attribute>'></td>
	     	 		<td class="star">*&nbsp;请确保长度为6~40</td>
	     	 	</tr>
	     	 	
	     	 	<tr>
	     	 		<td class="tdname" style="background-color:white">设置密码：</td>
	     	 		<td class="tdcontent1" colspan="3"><input class="easyui-textbox box" type="text" name="Password" id="Password" value='<jsp:attribute name="Password"></jsp:attribute>'></td>
	     	 		<td class="star">*&nbsp;请确保长度为6~40</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname" style="background-color:white">确认密码：</td>
	     	 		<td class="tdcontent1" colspan="3"><input class="easyui-textbox box" type="text" name="Password" id="Password" value='<jsp:attribute name="Password"></jsp:attribute>' ></td>
	     	 		<td class="star">*&nbsp;请确保长度为6~40</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname" style="background-color:white">用户组选择：</td>
	     	 		<td class="tdcontent2"><%request.getAttribute("RoleID");%>
	     	 		<select id="RoleID"  name="RoleID" style="width:245px;margin-left:100px;" value='<jsp:attribute name="RoleID"></jsp:attribute>'>
								<option value="">--请选择--</option> 
								<%-- <%List  list= (ArrayList)request.getAttribute("RoleID");
								for(int i=0;i<list.size();i++){
									Field fd = (Field)list.get(i);%><option value="<%=fd.getFieldId()%>"><%=fd.getName()%></option><%}%> --%>
							</select>
	     	 		</td>
	     	 	</tr>
	     	 	
	     	 	     	 	
            	
            </table>
            <table class="persional" style="width:100%;background-color:#F2F2F2" border="0" cellpadding="0" cellspacing="0"  bordercolor="#DEE5EA">
             <tr>
	             <td align="center" style="width:100%;" >
	             	<div style="margin-top:10px;margin-left:auto;margin-right:auto; margin-bottom:10px" >
	             		<a href="javascript:void(document.Form1.submit())" style="height:35px;width:70px;font-size:16px;align:center;" class="easyui-linkbutton button" onclick="return checkForm();">修改用户</a>
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