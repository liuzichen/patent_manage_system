<%@ page language="java" contentType="text/html; charset=UTF-8" 
import="java.util.*,java.lang.reflect.*"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创客项目待专家分配</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
});

function sub(){
	var field=document.getElementById("field").value;
	var ExpertID3=document.getElementById("ExpertID3").value;
	var ExpertID1=document.getElementById("ExpertID1").value;
	var ExpertID2=document.getElementById("ExpertID2").value;
	var ExpertID4=document.getElementById("ExpertID4").value;
	var ExpertID5=document.getElementById("ExpertID5").value;
	var num=0;
	if(field==""){
		alert("提示：\n\n请选择专家领域！");
		return false;
	}
	else if(ExpertID3=="0"&&ExpertID1=="0"&&ExpertID2=="0"&&ExpertID4=="0"&&ExpertID5=="0"){
		alert("提示：\n\n请请至少选择一位专家！");
		return false;
	}
	else{
		if(ExpertID1!="0"){
			
			num++;
		}
		if(ExpertID2!="0"){
			
			num++;
		}
		if(ExpertID3!="0"){
			
			num++;
		}
		if(ExpertID5!="0"){
			
			num++;
		}
		if(ExpertID4!="0"){
			
			num++;
		}
		document.getElementById("num").value=num;
		if(confirm("您已经为该项目分配了专家，您还需选择更多专家参与该项目评审吗？")){
			
			document.getElementById("flag").value=1;
			
		}else{
			
			document.getElementById("flag").value=0;
			
			}
		var SExpertID3=document.getElementById("ExpertID3");
		var SExpertID1=document.getElementById("ExpertID1");
		var SExpertID2=document.getElementById("ExpertID2");
		var SExpertID4=document.getElementById("ExpertID4");
		var SExpertID5=document.getElementById("ExpertID5");
		SExpertID1.disabled=false;
		SExpertID2.disabled=false;
		SExpertID3.disabled=false;
		SExpertID4.disabled=false;
		SExpertID5.disabled=false;
		return true;
	}
		
}

function getExpert(){
	var txtval=$("#field").val();
	if(txtval!=""){
	$.ajax({
		type: "POST",
		async: false,
		url: "<%=request.getContextPath()%>/expert/getExpertByField",    
		data: {field:txtval},   
		dataType : "text",
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			 alert(XMLHttpRequest.status);
			 alert(XMLHttpRequest.readyState);
			 alert(textStatus);
			   },
		success: function(msg){		
			var objSelect1 = document.getElementById("ExpertID1");
			var objSelect2 = document.getElementById("ExpertID2");
			var objSelect3 = document.getElementById("ExpertID3");
			var objSelect4 = document.getElementById("ExpertID4");
			var objSelect5 = document.getElementById("ExpertID5");
			var result = eval("("+msg+")"); 
			updateExpert(result,objSelect1);
			updateExpert(result,objSelect2);
			updateExpert(result,objSelect3);
			updateExpert(result,objSelect4);
			updateExpert(result,objSelect5);
		}
	}); 
}
}
function updateExpert(result,objSelect){
	while(objSelect.options.length>0)
	{
		objSelect.options.remove(0);  
	}
	objSelect.options.add(new Option("--请选择--", "0"));
	$(result.msg).each(function (key) {
        //第一种方法
        var opt = new Option(result.msg[key].name, result.msg[key].id);
        objSelect.options.add(opt);
	});		
} 
function checkSelect(){
	var ExpertID3=document.getElementById("ExpertID3");
	var ExpertID1=document.getElementById("ExpertID1");
	var ExpertID2=document.getElementById("ExpertID2");
	var ExpertID4=document.getElementById("ExpertID4");
	var ExpertID5=document.getElementById("ExpertID5");
	if(ExpertID1.value=="0"){
		ExpertID2.options[0].selected = true;
		ExpertID2.disabled=true;
	}else{
		ExpertID2.disabled=false;
	}
	if(ExpertID2.value=="0"){
		ExpertID3.options[0].selected = true;
		ExpertID3.disabled=true;
	}else{
		ExpertID3.disabled=false;
	}
	if(ExpertID3.value=="0"){
		ExpertID4.options[0].selected = true;
		ExpertID4.disabled=true;
	}else{
		ExpertID4.disabled=false;
	}
	if(ExpertID4.value=="0"){
		ExpertID5.options[0].selected = true;
		ExpertID5.disabled=true;
	}else{
		ExpertID5.disabled = false;
	}
}
</script>
</head>
<body>
<div >
	<div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >创客项目专家分配&nbsp;&nbsp; &gt;&nbsp;&nbsp;分配专家</font></span>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">分配专家</span></div>
	     <div >
	     	 <form action="<%=request.getContextPath()%>/maker/AssignExpertForMakerCommonWork" name="Form1" id="Form1">
	     	 <input type="hidden" id="projectid" name="projectid" value=${detail.id}>
	     	 <input type="hidden" id="commentType" name="commentType" value="comment_makercommonworks">
	     	 <input type="hidden" id="flag" name="flag">
	     	 <input type="hidden" id="num" name="num">
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname">创客项目名称:</td>
	     	 		<td class="tdcontent2" colspan="2">${detail.title }
					</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">领域选择:</td>
	     	 		<td class="tdcontent2" colspan="2">
	     	 		<select id="field"  name="field" class="mydatebox" onchange="getExpert()">
								<option value="">--请选择--</option> 								
								<c:forEach items="${fieldList}" var="map">
									<option value=${map.name}>${map.name}</option>
								</c:forEach>
							 </select>
	     	 		</td>
	     	 		
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">领域专家1:</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="ExpertID1"  name="ExpertID1" class="mydatebox" onchange="checkSelect()">
								<option value="0">--请选择--</option> 
								
								
							 </select>
	     	 		</td>
	     	 		<td class="tdcontent1">
	     	 		<input class="easyui-textbox mydatebox"  type="text" name="fee1" id="fee1" value="0">元
	     	 		</td>
	     	 	</tr>
	     	 		<tr>
	     	 		<td class="tdname">领域专家2:</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="ExpertID2"  name="ExpertID2" class="mydatebox" onchange="checkSelect()" disabled>
								<option value="0">--请选择--</option> 
								
								
							 </select>
	     	 		</td>
	     	 		<td class="tdcontent1">
	     	 		<input class="easyui-textbox mydatebox"  type="text" name="fee2" id="fee2" value="0">元
	     	 		</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">领域专家3:</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="ExpertID3"  name="ExpertID3" class="mydatebox" onchange="checkSelect()" disabled>
								<option value="0">--请选择--</option> 
								
								
							 </select>
	     	 		</td>
	     	 		<td class="tdcontent1">
	     	 		<input class="easyui-textbox mydatebox"  type="text" name="fee3" id="fee3" value="0">元
	     	 		</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">领域专家4:</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="ExpertID4"  name="ExpertID4" class="mydatebox" onchange="checkSelect()" disabled>
								<option value="0">--请选择--</option> 
								
								
							 </select>
	     	 		</td>
	     	 		<td class="tdcontent1">
	     	 		<input class="easyui-textbox mydatebox"  type="text" name="fee4" id="fee4" value="0">元
	     	 		</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">领域专家5:</td>
	     	 		<td class="tdcontent2">
	     	 		<select id="ExpertID5"  name="ExpertID5" class="mydatebox" onchange="checkSelect()" disabled>
								<option value="0">--请选择--</option> 
								
								
							 </select>
	     	 		</td>
	     	 		<td class="tdcontent1">
	     	 		<input class="easyui-textbox mydatebox"  type="text" name="fee5" id="fee5" value="0">元
	     	 		</td>
	     	 	</tr>
	     	 	<tr>
	             <td align="center" colspan="3">
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