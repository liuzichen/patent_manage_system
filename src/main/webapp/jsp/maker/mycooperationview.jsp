<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>合作需求申报</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
function sub(){
	var contact=document.getElementById("contact").value;
	var phone=document.getElementById("phone").value;
	var teamIntro=document.getElementById("teamIntro").value;
	var description=document.getElementById("description").value;
	if(contact==""){
		alert("提示：\n\n请填写联系人！");
		return false;
	}
	if(phone==""){
		alert("提示：\n\n请填写联系电话！");
		return false;
	}
	if(teamIntro==""){
		alert("提示：\n\n请填写团队情况介绍！");
		return false;
	}
	if(description==""){
		alert("提示：\n\n请填写合作需求！");
		return false;
	}
	if(confirm("确认更改合作需求？")){
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
	      <span ><font >合作需求&nbsp;&nbsp; &gt;&nbsp;&nbsp; 我的合作意向</font></span>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">合作意向详情</span></div>
	     <div >
	     	 <form action="<%=request.getContextPath()%>/maker/updateMyCooperation" name="Form1" id="Form1">
	     	 <input type="hidden" name="cid" id="cid" value=${detail.id}>
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname">标题：</td>
	     	 		<td class="tdcontent1" >${detail.title }</td>	     	 		
	     	 		<td class="tdname">合作领域：</td>
	     	 		<td class="tdcontent2">${detail.field }</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">联系人：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox"  type="text" name="contact" id="contact" value=${detail.contact}></td>
	     	 		<td class="tdname">联系电话：</td>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox"  type="text" name="phone" id="phone" value=${detail.phone}></td>
	     	 	</tr>
	     	 	<tr>             
             	 <td  class="tdname"  align="center" >团队简介</td>
            	 <td  align="center" height="400px"  colspan="3">
	            	<div class="tdcontent3">
		               <textarea id="teamIntro" name="teamIntro" cols="40" rows="12" style="width:90%;height:100%;">${detail.teamIntro }</textarea>
		             </div> 
             </tr>	     	 	
            	 <tr>             
             	 <td  class="tdname"  align="center" >合作内容详情</td>
            	 <td  align="center" height="400px"  colspan="3">
	            	 <div class="tdcontent3">
		               <textarea id="description" name="description" cols="40" rows="12" style="width:90%;height:100%;">${detail.detail }</textarea>
		             </div> 
             </tr>
             <tr>
	             <td align="center" colspan="4">
	             	<div style="margin-top:20px;margin-left:auto;margin-right:auto; margin-bottom:20px" >
	             		<a href="javascript:void(document.Form1.submit())" style="height:35px;width:70px;font-size:16px;" class="easyui-linkbutton button" onclick="return sub();">提&nbsp;交&nbsp;更&nbsp;改</a>
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