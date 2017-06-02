<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统公告发布</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$("#Title").textbox("setValue", Title); 
	$("#Time").textbox("setValue", Time); 
	$("#Description").textarea("setValue", Description);  
	$("#FujianName").textbox("setValue", FujianName);
	
	document.getElementById("field").value=field; 	
});
function sub(){
	var Title=document.getElementById("title").value;
	var Time=document.getElementById("time").value;
	var Type=document.getElementById("type").value;
	var description=document.getElementById("content").value;
	var FujianType=document.getElementById("fujianType").value;
	var FujianName=document.getElementById("fujianName").value;
	if(Title==""){
		alert("提示：\n\n请填写公告标题！");
		return false;
	}
	if(Time==""){
		alert("提示：\n\n请选择发布时间！");
		return false;
	}
	if(Type==""){
		alert("提示：\n\n请选择公告类型！");
		return false;
	}
	if(description==""){
		alert("提示：\n\n请填写公告简介！");
		return false;
	}
	if(FujianType==""){
		alert("提示：\n\n请选择附件类型！");
		return false;
	}
	if(FujianName==""){
		alert("提示：\n\n请填写附件标题！");
		return false;
	}
	if(confirm("确认提交公告信息？")){
		return true;
	}
	else{
		return false;
	}
}
</script>

<script language="javascript">
$(function(){
	   var curr_time = new Date();
	   var strDate = curr_time.getFullYear()+"-";
	   strDate += curr_time.getMonth()+1+"-";
	   strDate += curr_time.getDate()+"-";
	   strDate += curr_time.getHours()+":";
	   strDate += curr_time.getMinutes()+":";
	   strDate += curr_time.getSeconds();
	   $("#dd").datebox("setValue", strDate); 
	  });
</script>

</head>
<body>
<div >
	<div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >系统管理&nbsp;&nbsp; &gt;&nbsp;&nbsp; 系统公告发布</font></span>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">系统公告发布</span></div>
	     <div >
	     	 <form action="<%=request.getContextPath()%>/ManageNews/insertNewsInfo" name="Form1" id="Form1">
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname">公告标题：</td>
	     	 		<td class="tdcontent1" colspan="3"><input class="easyui-textbox mydatebox" style="width:800px" type="text" name="title" id="title" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">发布时间选择：</td>
	     	 		<td class="tdcontent1"> <input class="easyui-datebox mydatebox" type="text" name="time" id="time" value=${dd} editable="false" panelHeight="260" panelWidth="200" > ></td>	     	 		
	     	 		<td class="tdname">公告类型选择：</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="type"  name="type" class="mydatebox">
								<option value="">--请选择--</option> 
								<option value="国家科技政策">国家科技政策</option>
								<option value="政府培训通知">政府培训通知</option>
								<option value="系统公告">系统公告</option>
								<option value="专项与基金">专项与基金</option>
								<option value="银行资金援助项目">银行资金援助项目</option>
							</select>
	     	 		</td>
	     	 	</tr>
	     	 	
	     	 	     	 	
            	 <tr>             
             	 <td  class="tdname"  align="center" >作品简介</td>
            	 <td  align="center" height="400px"  colspan="3">
	            	 <div class="tdcontent3">
		               <textarea id="content" name="content" cols="40" rows="10" style="width:90%;height:92%;margin-top:10px;"></textarea>
		             </div> 
             </tr>
             <tr>
	     	 		<td class="tdname">附件型选择：</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="fujianType"  name="fujianType" class="mydatebox">
								<option value="">--请选择--</option> 
								<option value="doc">doc</option>
								<option value="rar">rar</option>
								<option value="zip">zip</option>
								<option value="jpg">jpg</option>
							</select>
	     	 		</td>
	     	 		<td class="tdname">附件标题：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox"  type="text" name="fujianName" id="fujianName" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		
	     	 		<td class="tdname" colspan="4" >
                   	 <div align="left" ><a href="#" class="easyui-linkbutton button" name="fujian" style="width:180px;height:30px">相关附件上传</a></div></td>
	     	 		
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