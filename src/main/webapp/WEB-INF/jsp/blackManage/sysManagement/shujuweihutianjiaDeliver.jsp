<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>追加数据库内容</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var Title="1";
	var Content="1";
	
	$("#Title").textbox("setValue", Title); 
	$("#Content").textbox("setValue", Content); 
	
});
function sub(){
	var Title=document.getElementById("Title").value;
	var Content=document.getElementById("Content").value;
	var Content1=document.getElementById("Content1").value;
	var Content2=document.getElementById("Content2").value;
	var Content3=document.getElementById("Content3").value;
	var Content4=document.getElementById("Content4").value;
	if(Title==""){
		alert("提示：\n\n请填写公告标题！");
		return false;
	}
	
	if(Content==""){
		alert("提示：\n\n请填写内容！");
		return false;
	}
	else if(Content1==""){
		alert("提示：\n\n请填写内容！");
		return false;
	}
	else if(Content2==""){
		alert("提示：\n\n请填写内容！");
		return false;
	}
	else if(Content3==""){
		alert("提示：\n\n请填写内容！");
		return false;
	}
	else if(Content4==""){
		alert("提示：\n\n请填写内容！");
		return false;
	}
	
	if(confirm("确认提交？")){
		return true;
	}
	else{
		return false;
	}
}

function tianjia(){
	var Title=document.getElementById("Title").value;
	var Content=document.getElementById("Content").value;
	var Content1=document.getElementById("Content1").value;
	var Content2=document.getElementById("Content2").value;
	var Content3=document.getElementById("Content3").value;
	var Content4=document.getElementById("Content4").value;
	if(Title==""){
		alert("提示：\n\n请填写公告标题！");
		return false;
	}
	
	if(Content==""){
		alert("提示：\n\n请填写内容！");
		return false;
	}
	else if(Content1==""){
		alert("提示：\n\n请填写内容！");
		return false;
	}
	else if(Content2==""){
		alert("提示：\n\n请填写内容！");
		return false;
	}
	else if(Content3==""){
		alert("提示：\n\n请填写内容！");
		return false;
	}
	else if(Content4==""){
		alert("提示：\n\n请填写内容！");
		return false;
	}
	
	if(confirm("确认追加更多内容？")){
		return true;
		window.load.href("<%=request.getContextPath()%>/jsp/blackManage/sysManagement/shujuweihutianjiaDeliver.jsp");
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
	      <span ><font >系统管理&nbsp;&nbsp; &gt;&nbsp;&nbsp; 数据库新</font></span>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">数据库新</span></div>
	     <div >
	     	 <form action="" name="Form1" id="Form1">
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname">数据库名称：</td>
	     	 		<td class="tdcontent2" ><%request.getAttribute("Title"); %></td>
	     	 	
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname" rowspan="7">内容填写：</td>
	     	 	<tr>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox" style="width:248px" type="text" name="Content" id="Content" ></td></tr>
	     	 	<tr>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox" style="width:248px" type="text" name="Content1" id="Content1" ></td></tr>
	     	    <tr>	
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox" style="width:248px" type="text" name="Content2" id="Content2" ></td></tr>
	     	 	<tr>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox" style="width:248px" type="text" name="Content3" id="Content3" ></td></tr>
	     	 	<tr>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox" style="width:248px" type="text" name="Content4" id="Content4" ></td></tr>
	     	 	<tr>
	     	 		<td class="tdcontent2"><div style="margin-top:5px;margin-left:auto;margin-right:auto; margin-bottom:5px" >
	             		<a href="javascript:void(document.Form1.submit())" style="height:25px;width:120px;font-size:16px;" class="easyui-linkbutton button" onclick="return tianjia();">追加更多的内容</a></div></td></tr>	
	     	 
	     	 	      
             <tr>
	             <td align="center" colspan="4">
	             	<div style="margin-top:10px;margin-left:auto;margin-right:auto; margin-bottom:10px" >
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