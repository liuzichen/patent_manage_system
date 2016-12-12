<%@ page language="java" contentType="text/html; charset=UTF-8" 
import="java.util.*,java.lang.reflect.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创客项目专家分配</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
function sub(){
	var Expert1=document.getElementById("Expert1").value;
	var Expert2=document.getElementById("Expert2").value;
	var Expert3=document.getElementById("Expert3").value;
	var Expert4=document.getElementById("Expert4").value;
	var Expert5=document.getElementById("Expert5").value;
	if(Expert3==""&&Expert1==""&&Expert2==""&&Expert4==""&&Expert5==""){
		alert("提示：\n\n请至少选择一位专家！");
		return false;
	}
	if(confirm("是否确认分配的专家？")){
		return true;	        
	}else
	{			
		return false;
	}				
}
function getexpert(){
	var txtval=$("#field").val();
	if(txtval!=""){
	$.ajax({
		type: "POST",
		async: false,
		url: "<%=request.getContextPath()%>/channel2.do",    
		data: {field:txtval},   
		dataType : "text",
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			 alert(XMLHttpRequest.status);
			 alert(XMLHttpRequest.readyState);
			 alert(textStatus);
			   },
		success: function(msg){
			var objSelect1 = document.getElementById("Expert1");
			var objSelect2 = document.getElementById("Expert2");
			var objSelect3 = document.getElementById("Expert3");
			var objSelect4 = document.getElementById("Expert4");
			var objSelect5 = document.getElementById("Expert5");
			var result = eval("("+msg+")"); 
			while(objSelect1.options.length>0)
			{
				objSelect1.options.remove(0);  
			}
			while(objSelect2.options.length>0)
			{
				objSelect2.options.remove(0);  
			}
			while(objSelect3.options.length>0)
			{
				objSelect3.options.remove(0);  
			}
			while(objSelect4.options.length>0)
			{
				objSelect4.options.remove(0);  
			}
			while(objSelect5.options.length>0)
			{
				objSelect5.options.remove(0);  
			}
			objSelect1.options.add(new Option("--请选择--", ""));
			objSelect2.options.add(new Option("--请选择--", ""));
			objSelect3.options.add(new Option("--请选择--", ""));
			objSelect4.options.add(new Option("--请选择--", ""));
			objSelect5.options.add(new Option("--请选择--", ""));
			$(result.msg).each(function (key) {
                //第一种方法
                var opt = new Option(result.msg[key].text, result.msg[key].value);
                objSelect1.options.add(opt);
                objSelect2.options.add(opt);
                objSelect3.options.add(opt);
                objSelect4.options.add(opt);
                objSelect5.options.add(opt);
			});
		}
	}); 
}
}
</script>
<%String b="123"; %>
</head>
<body>
<div >
	<div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >创客创新项目管理&nbsp;&nbsp; &gt;&nbsp;&nbsp;创新作品评审</font></span>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">评审专家分配</span></div>
	     <div >
	     	 <form action="###" name="Form1" id="Form1">
	     	 <input type="hidden" id="projectid" name="projectid" value="<%=b%>">	     	
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname">创客作品名称:</td>
	     	 		<td class="tdcontent2"><%=request.getAttribute("project")%>
					</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">领域选择:</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="field"  name="field" class="mydatebox" onchange="getexpert()">
								<option value="">--请选择--</option> 
								<option value="1">1</option>
								<%-- <%List  list= (ArrayList)request.getAttribute("field");
								for(int i=0;i<list.size();i++){
									Field fd = (Field)list.get(i);%><option value="<%=fd.getFieldId()%>"><%=fd.getName()%></option><%}%>
							 --%>
							 </select>
	     	 		</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">领域专家1:</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="Expert1"  name="Expert1" class="mydatebox">
						
							 </select>
	     	 		</td>
	     	 	</tr>
	     	 		<tr>
	     	 		<td class="tdname">领域专家2:</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="Expert2"  name="Expert2" class="mydatebox">
								
							 </select>
	     	 		</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">领域专家3:</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="Expert3"  name="Expert3" class="mydatebox">
								
							 </select>
	     	 		</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">领域专家4:</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="Expert4"  name="Expert4" class="mydatebox">
								
							 </select>
	     	 		</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">领域专家5:</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="Expert5"  name="Expert5" class="mydatebox">
								
							 </select>
	     	 		</td>
	     	 	</tr>
	     	 	<tr>
	     	 	<tr>
	     	 		<td class="tdname">是否继续为该作品分配其他专家:</td>
	     	 		<td class="tdcontent2">
	     	 		<input type="radio" name="next" id="next" value="true">是
	     	 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	     	 		<input type="radio" name="next" id="next" value="false" checked>否
	     	 		</td>
	     	 	</tr>
	     	 	<tr>
	             <td align="center" colspan="2">
	             	<div style="margin-top:5px;margin-left:auto;margin-right:auto; margin-bottom:5px" >
	             		<a href="javascript:void(document.Form1.submit())" style="height:30px;width:90px;font-size:16px;" class="easyui-linkbutton button" onclick="return sub();">确&nbsp;&nbsp;认</a>
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