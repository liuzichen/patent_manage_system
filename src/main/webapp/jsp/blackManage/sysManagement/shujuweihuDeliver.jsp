<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据库新建</title>
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
	var name=document.getElementById("name").value;
	if(name==""){
		alert("提示：\n\n请填写公告标题！");
		return false;
	}
	
	if(confirm("确认提交？")){
		return true;
	}
	else{
		return false;
	}
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
	     	 <form action="<%=request.getContextPath()%>/manageMajor/insertMajorInfo" name="Form1" id="Form1">
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname">数据库名称：</td>
	     	 		<td class="tdcontent2" ><select style="width:150px;" id="state"  name="state"><option value="f">领域信息表</option><option value="m">专业表</option></select></td>
	     	 		<td class="tdname">字段名称：</td>
	     	 	    <td class="tdcontent2" ><input class="easyui-textbox mydatebox" style="width:248px" type="text" name="name" id="name" >
	     	 	</tr>
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