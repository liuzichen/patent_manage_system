<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业一般项目评审</title>
	
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
	

<script type="text/javascript">
$(document).ready(function(){
	var k1="123";
	var k2="456";
	var k3="2100-1-1";
	$("#k1").textbox("setValue", k1);
	$("#k2").textbox("setValue", k2);
	$("#k3").datebox("setValue", k3); 
});
function check(){
	if(confirm("导出前须保存表单内容\n\n是否现在导出？")){
		return true;
	}
	else{
		return false;
	}
}
function save(){
	if(confirm("确认保存检查意见？")){
		document.getElementById("sort").value="save";
		return true;
	}
	else{
		return false;
	}
}
function sub(){
	var k3=$("#k3").datebox("getValue");
	var k2=document.getElementById("k2").value;
	var k1=document.getElementById("k1").value;
	var advice=document.getElementById("advice").value;
	if(k1==""){
		alert("提示：\n\n请填写编制单位！");
		return false;
	}
	if(k2==""){
		alert("提示：\n\n请填写评审单位！");
		return false;
	}
	if(k3==""){
		alert("提示：\n\n请填写评审日期！");
		return false;
	}
	if(advice==""){
		alert("提示：\n\n请填写专家意见！");
		return false;
	}
	if(confirm("确认提交回复？")){
		document.getElementById("sort").value="submit";
		return true;
	}
	else{
		return false;
	}
}
</script>
	
</head>

<body>
<%String a="      11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"; %>
 <div class="commonPage">
 
     <div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >项目评审&nbsp;&nbsp; &gt;&nbsp;&nbsp; 企业一般项目评审</font></span>
	   </div>
     </div> 
		 
    <div class="context">
       <div class="titlebox"><span class="title">一般项目立项评审</span></div>
	   <div>
	   	<form action="" name="Form1" id="Form1">
	   	<input type="hidden" name="sort" id="sort">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                <tr >
                    <td class="tdname">项目名称：</td>                    
                    <td class="tdcontent1">
                      <%=request.getAttribute("name")%>
                    </td>
                    <td class="tdname">运营单位：</td>
                    <td class="tdcontent2">
                       <%=request.getAttribute("age")%>
                    </td>
                </tr>         
                <tr >
                    <td class="tdname">编制单位：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="k1" id="k1" >
                    </td>
                    <td class="tdname">评审单位：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="k2" id="k2" >
                    </td>                    
                </tr>
                <tr>
                    <td class="tdname">评审日期：</td>
                    <td class="tdcontent1">
                      <input class="easyui-datebox mydatebox" type="text" name="k3" id="k3" editable="false" panelHeight="260" panelWidth="200" >
                    </td>
                    <td style="background-color:#F2F2F2;width:15%"colspan="2" >
                   	 <div align="center" ><a href="#" class="easyui-linkbutton button" style="width:120px;height:25px">相关附件下载</a></div></td>                    
                </tr>             
             <tr>
             	 <td  class="tdname" align="center" >专家意见</td>
            	 <td  align="center" height="500px" colspan="3">
	            	 <div class="tdcontent3">
		               <textarea id="advice" name="advice" cols="40" rows="12" style="width:90%;height:100%;"></textarea>
		             </div> 
             </td>
             </tr>
             
            <tr>
	             <td align="center" colspan="4">
	             	<div style="margin-top:20px; left:40%; margin-bottom:20px;float:left; position:relative" ><a href="javascript:void(document.Form1.submit())" style="height:35px;width:70px;font-size:16px;" class="easyui-linkbutton button" onclick="return sub();">提&nbsp;&nbsp;交</a>
	             	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <a href="javascript:void(document.Form1.submit())" style="height:35px;width:70px;font-size:16px" class="easyui-linkbutton button" onclick="return save();">保&nbsp;&nbsp;存</a></div>
		            <div style="margin-top:20px; margin-bottom:20px;float:right; position:relative; right:20px"><a href="javascript:void(document.Form1.submit())" style="height:35px;width:100px;font-size:16px" class="easyui-linkbutton button" onclick="return check();">导出为word</a></div>
		            
		        </td>
	        </tr>
	        
           </table>
          </form>
	   	</div>
	
   </div>   
 	     
 </div>
</body>
</html>