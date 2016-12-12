<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>原创成果提交</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var title="1";
	var team="1";
	var contact="123";
	var phone="123456";
	var email="2";
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

</head>
<body>
<div >
	<div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >成果发布&nbsp;&nbsp; &gt;&nbsp;&nbsp; 原创成果管理</font></span>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">原创成果提交</span></div>
	     <div >
	     	 <form action="" name="Form1" id="Form1">
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname">成果名称：</td>
	     	 		<td class="tdcontent1" colspan="3"><input class="easyui-textbox mydatebox" style="width:800px" type="text" name="title" id="title" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">团队名称：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="team" id="team" ></td>	     	 		
	     	 		<td class="tdname">技术领域：</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="field"  name="field" class="mydatebox">
								<option value="">--请选择--</option> 
								<%List  list= (ArrayList)request.getAttribute("field");
								for(int i=0;i<list.size();i++){
									Field fd = (Field)list.get(i);%><option value="<%=fd.getFieldId()%>"><%=fd.getName()%></option><%}%>
							</select>
	     	 		</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">联系人：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox"  type="text" name="contact" id="contact" ></td>
	     	 		<td class="tdname">联系电话：</td>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox"  type="text" name="phone" id="phone" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">电子邮箱：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox"  type="text" name="email" id="email" ></td>
	     	 		<td class="tdname" colspan="2" >
                   	 <div align="center" ><a href="#" class="easyui-linkbutton button" style="width:120px;height:25px">相关附件上传</a></div></td>
	     	 		
	     	 	</tr>
	     	 	     	 	
            	 <tr>             
             	 <td  class="tdname"  align="center" >作品简介</td>
            	 <td  align="center" height="400px"  colspan="3">
	            	 <div class="tdcontent3">
		               <textarea id="description" name="description" cols="40" rows="12" style="width:90%;height:100%;"></textarea>
		             </div> 
             </tr>
             <tr>
	             <td align="center" colspan="4">
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