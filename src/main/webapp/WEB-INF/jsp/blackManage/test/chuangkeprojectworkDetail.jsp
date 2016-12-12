<%@ page language="java" contentType="text/html; charset=UTF-8" 
import="java.util.*,java.lang.reflect.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目成果提交</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var project="111";
	var title="1";
	var team="1";
	var contact="123";
	var phone="123456";
	var email="2";
	$("#project").textbox("setValue", project); 
	$("#contact").textbox("setValue", contact); 
	$("#phone").textbox("setValue", phone); 
	$("#title").textbox("setValue", title);
	$("#team").textbox("setValue", team);  
	$("#email").textbox("setValue", email);  
	document.getElementById("field").value=field; 	
});

</script>
<%String b="123"; %>
</head>
<body>
<div >
	<div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >专家分配管理&nbsp;&nbsp; &gt;&nbsp;&nbsp; 创客项目详情查看</font></span>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">创客项目详情查看</span></div>
	     <div >
	     	 <form action="" name="Form1" id="Form1">
	     	 <input type="hidden" id="projectid" name="projectid" value="<%=b%>">
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname">作品名称：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox"  type="text" name="title" id="title" ></td>
	     	 		<td class="tdname">创客项目：</td>
	     	 		<td class="tdcontent2"><input class="easyui-textbox mydatebox"  type="text" name="project" id="project" readonly="true"></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">团队名称：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="team" id="team" ></td>	     	 		
	     	 		<td class="tdname">技术领域：</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="field"  name="field" class="mydatebox">
								<option value="">--请选择--</option> 
								
								<%-- <%List  list= (ArrayList)request.getAttribute("field");
								for(int i=0;i<list.size();i++){
									Field fd = (Field)list.get(i);%><option value="<%=fd.getFieldId()%>"><%=fd.getName()%></option><%}%>
							 --%>
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
		               <textarea id="description" name="description" cols="40" rows="12" style="width:90%;height:90%;top-margin:15px;"></textarea>
		             </div> 
             </tr>
             
	     	 </table>
	     	 </form>
	     </div>
	  </div>
	  
</div>
</body>
</html>