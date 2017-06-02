<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员信息维护</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
function sub(){
	var name=document.getElementById("name").value;
	var roleID=document.getElementById("roleID").value;
	var password=document.getElementById("password").value;

	if(name==""){
		alert("提示：\n\n请填写管理员姓名！");
		return false;
	}
	if(password==""){
		alert("提示：\n\n请填写密码！");
		return false;
	}
	if(roleID==""){
		alert("提示：\n\n请填写管理权限组！");
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
	      <span ><font >管理员信息查看&nbsp;&nbsp; &gt;&nbsp;&nbsp;管理员添加</font></span>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">企业基本信息</span></div>
	     <div >
	     	 <form action="<%=request.getContextPath()%>/administrator/insertAdministratorInfo" name="Form1" id="Form1">
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname" colspan = "2">管理员名称：</td>
	     	 		<td class="tdcontent1" colspan = "2"><input class="easyui-textbox mydatebox" type="text" name="name" id="name" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname" colspan = "2">管理员权限组：</td>
	     	 		<td class="tdcontent1" colspan = "2"><input class="easyui-textbox mydatebox" type="text" name="roleID" id="roleID" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname" colspan = "2">密码：</td>
	     	 		<td class="tdcontent1" colspan = "2"><input class="easyui-textbox mydatebox" type="text" name="password" id="password" ></td>
	     	 	</tr>
                <tr>
	             <td align="center" colspan="4">
	             	<div style="margin-top:15px;margin-left:auto;margin-right:auto; margin-bottom:15px" >
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