<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统公告发布</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css" />
<script
	src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var Title="1";
	var Time="1";
	var Type="123";
	var Description="123456";
	var FujianName="23";
	
	$("#Title").textbox("setValue", Title); 
	$("#Time").textbox("setValue", Time); 
	$("#Description").textarea("setValue", Description);  
	$("#FujianName").textbox("setValue", FujianName);
	
	document.getElementById("field").value=field; 	
});
function sub(){
	var Title=document.getElementById("Title").value;
	var Time=document.getElementById("Time").value;
	var Type=document.getElementById("Type").value;
	var description=document.getElementById("description").value;
	var FujianType=document.getElementById("FujianType").value;
	var FujianName=document.getElementById("FujianName").value;
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
	<div>
		<div class="topnav">
			<div class="path">
				<span><font>当前位置:</font></span> <span><font>系统管理&nbsp;&nbsp;
						&gt;&nbsp;&nbsp; 系统公告发布</font></span>
			</div>
		</div>
		<div class="context">
			<div class="titlebox">
				<span class="title">系统公告发布</span>
			</div>
			<div>
				<form action="" name="Form1" id="Form1">
					<table class="persional" align="center" border="1" cellpadding="0"
						cellspacing="0" bordercolor="#DEE5EA">
						<tr>
							<td class="tdname">公告标题：</td>
							<td class="tdcontent1" colspan="3"><input
								class="easyui-textbox mydatebox" style="width: 800px"
								type="text" name="Title" id="Title"></td>
						</tr>
						<tr>
							<td class="tdname">发布时间选择：</td>
							<td class="tdcontent1"><input
								class="easyui-datebox mydatebox" type="text" name="Time"
								id="Time" editable="false" panelHeight="260" panelWidth="200"></td>
							<td class="tdname">公告类型选择：</td>
							<td class="tdcontent2"><select id="Type" name="Type"
								class="mydatebox">
									<option value="">--请选择--</option>
									<%-- <%List  list= (ArrayList)request.getAttribute("Type");
								for(int i=0;i<list.size();i++){
									Field fd = (Field)list.get(i);%><option value="<%=fd.getFieldId()%>"><%=fd.getName()%></option><%}%> --%>
							</select></td>
						</tr>


						<tr>
							<td class="tdname" align="center">作品简介</td>
							<td align="center" height="400px" colspan="3">
								<div class="tdcontent3">
									<textarea id="Description" name="Description" cols="40"
										rows="10" style="width: 90%; height: 92%; margin-top: 10px;"></textarea>
								</div>
						</tr>
						<tr>
							<td class="tdname">附件型选择：</td>
							<td class="tdcontent2"><select id="FujianType"
								name="FujianType" class="mydatebox">
									<option value="">--请选择--</option>
									<%-- <%List  list= (ArrayList)request.getAttribute("Type");
								for(int i=0;i<list.size();i++){
									Field fd = (Field)list.get(i);%><option value="<%=fd.getFieldId()%>"><%=fd.getName()%></option><%}%> --%>
							</select></td>
							<td class="tdname">附件标题：</td>
							<td class="tdcontent1"><input
								class="easyui-textbox mydatebox" type="text" name="FujianName"
								id="FujianName"></td>
						</tr>
						<tr>

							<td class="tdname" colspan="4">
								<div align="left">
									<a href="#" class="easyui-linkbutton button" name="Fujian"
										style="width: 180px; height: 30px">相关附件上传</a>
								</div>
							</td>

						</tr>

						<tr>
							<td align="center" colspan="4">
								<div
									style="margin-top: 10px; margin-left: auto; margin-right: auto; margin-bottom: 10px">
									<a href="javascript:void(document.Form1.submit())"
										style="height: 35px; width: 70px; font-size: 16px;"
										class="easyui-linkbutton button" onclick="return sub();">保&nbsp;&nbsp;存</a>
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