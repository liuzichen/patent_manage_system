<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>问题咨询</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
function sub(){
	var field=$("#field").val();
	var title=$("#title").val();
	var question=$("#qDescription").val();
	if(title==""){
		alert("提示：\n\n请填写问题标题！");
		return false;
	}
	if(field==""){
		alert("提示：\n\n请选择问题领域！");
		return false;
	}
	if(question==""){
		alert("提示：\n\n请填写问题内容！");
		return false;
	}
	if(confirm("确认提交咨询？")){
		return true;
	}
	else{
		return false;
	}
}
</script>
</head>
<body>
	 <div>
 
     <div class="topnav" >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >专家咨询&nbsp;&nbsp; &gt;&nbsp;&nbsp; 咨询问题提交</font></span>
	   </div>
     </div> 
		 
    <div class="context">
       <div class="titlebox"><span class="title">咨询问题</span></div>
       <form action="<%=request.getContextPath()%>/question/insertQA" name="Form1" id="Form1">
       <input type="hidden" id="userid" name="userid" value=<%=session.getAttribute("userId")%>>
       <input type="hidden" id="usertype" name="usertype" value="<%=session.getAttribute("type")%>">
       <div style="width:100%">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                <tr >
                	<td class="tdname" style="width:20%;">问题标题：</td>
                	<td class="tdcontent1" >
                		<input class="easyui-textbox mydatebox" type="text" name="title" id="title" >
                	</td>  
                    <td class="tdname" style="width:20%;">技术领域：</td>                    
                    <td class="tdcontent2" >
                      <select id="field"  name="field" style="width:80%">
                      			<option value="">--请选择--</option>               
								<c:forEach items="${fieldList}" var="map">
								<option value=${map.name }>${map.name}</option>
								</c:forEach>
								
							</select>
                    </td>
                </tr>
                <tr >
                    <td class="tdname">咨询内容：</td>                    
                    <td class="tdcontent1" colspan="3">
                     <div class="tdcontent3">
		               <textarea id="qDescription" name="qDescription" cols="40" rows="12" style="width:90%;height:100%;"></textarea>
		             </div> 
                    </td>
                </tr>
                <tr>
	             <td align="center" colspan="4">
	             	<div style="margin-top:20px; left:45%; margin-bottom:20px;float:left; position:relative" ><a href="javascript:void(document.Form1.submit())" style="height:35px;width:70px;font-size:16px;" class="easyui-linkbutton button" onclick="return sub();">提&nbsp;&nbsp;交</a></div>
		        </td>
	        </tr>
              </table>
           </div>
	 </form>
   </div>   
 	</div>     
</body>
</html>