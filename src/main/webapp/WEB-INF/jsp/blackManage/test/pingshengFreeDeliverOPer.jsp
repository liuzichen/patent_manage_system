<%@ page language="java" contentType="text/html; charset=UTF-8" 
import="java.util.*,java.lang.reflect.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业科技项目待专家分配</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var project="111";
	$("#project").textbox("setValue", project); 
	document.getElementById("Fee").value=Fee;
	
});

function sub(){
	var field=document.getElementById("Fee").value;
	if(field==""){
		alert("提示：\n\n请选择发放金额！");
		return false;
	}
	
		return true;		
}

</script>
<%String b="123"; %>
</head>
<body>
<div >
	<div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >企业科技项目待专家分配&nbsp;&nbsp; &gt;&nbsp;&nbsp;分配专家</font></span>
	   </div>
      <div class="context">
         <div class="titlebox"><span class="title">分配专家</span></div>
	     <div >
	     	 <form action="###" name="Form1" id="Form1">
	     	 <input type="hidden" id="projectid" name="projectid" value="<%=b%>">
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname">企业科技项目名称:</td>
	     	 		<td class="tdcontent2"><%=request.getAttribute("title")%>
					</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">参与项目评审专家:</td>
	     	 		<td class="tdcontent2"><%=request.getAttribute("Name")%>
					</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">项目评审结果:</td>
	     	 		<td class="tdcontent2"><%=request.getAttribute("Result")%>
					</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">项目评审完成时间:</td>
	     	 		<td class="tdcontent2"><%=request.getAttribute("Time")%>
					</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">请选择评审费发放金额:</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="Fee"  name="Fee" class="mydatebox">
								<option value="">--请选择--</option> 
								
								<%-- <%List  list= (ArrayList)request.getAttribute("field");
								for(int i=0;i<list.size();i++){
									Field fd = (Field)list.get(i);%><option value="<%=fd.getFieldId()%>"><%=fd.getName()%></option><%}%>
							 --%>
							 </select>
	     	 		</td>
	     	 	</tr>
	     	 	
	     	 	<tr>
	             <td align="center" colspan="2">
	             	<div style="margin-top:5px;margin-left:auto;margin-right:auto; margin-bottom:5px" >
	             		<a href="javascript:void(document.Form1.submit())" style="height:30px;width:90px;font-size:16px;" class="easyui-linkbutton button" onclick="return sub();">提&nbsp;&nbsp;交</a>
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