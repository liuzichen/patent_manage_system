<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息与公告</title>
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
function sub(){
	var title=document.getElementById("title").value;
	var type=document.getElementById("type").value;
	var time = $("#time").datebox("getValue");
	var description=document.getElementById("description").value;
	if(title==""){
		alert("提示：\n\n请填写信息标题！");
		return false;
	}
	if(type==""){
		alert("提示：\n\n请选择信息类别！");
		return false;
	}
	if(time==""){
		alert("提示：\n\n请填写发布时间！");
		return false;
	}
	if(description==""){
		alert("提示：\n\n请填写信息内容！");
		return false;
	}
	if(confirm("确认发布该信息？")){
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
				<span><font>当前位置:</font></span> <span><font>信息与公告&nbsp;&nbsp;
						&gt;&nbsp;&nbsp; 政策资讯与通知公告</font></span>
			</div>
		</div>
		<div class="context">
			<div class="titlebox">
				<span class="title">信息发布</span>
			</div>
			<div>
				<form action="" name="Form1" id="Form1">
					<table class="persional" align="center" border="1" cellpadding="0"
						cellspacing="0" bordercolor="#DEE5EA">
						<tr>
							<td class="tdname">信息标题：</td>
							<td class="tdcontent1"><input
								class="easyui-textbox mydatebox" type="text" name="title"
								id="title"></td>
							<td class="tdname">信息类型：</td>
							<td class="tdcontent2"><select id="type" name="type"
								style="width: 80%">
									<%-- <%List  list= (ArrayList)request.getAttribute("field");
								for(int i=0;i<list.size();i++){
									Field fd = (Field)list.get(i);%><option value="<%=fd.getFieldId()%>"><%=fd.getName()%></option><%}%>
						 --%>
							</select></td>
						</tr>
						<tr>
							<td class="tdname">发布日期：</td>
							<td class="tdcontent1"><input
								class="easyui-datebox mydatebox" type="text" name="time"
								id="time" editable="false" panelHeight="260" panelWidth="200">
							</td>
							<td class="tdname" colspan="2">
								<div align="center">
									<a href="#" class="easyui-linkbutton button"
										style="width: 120px; height: 25px">相关附件上传</a>
								</div>
							</td>

						</tr>
						<tr>
							<td class="tdname" align="center">信息内容</td>
							<td align="center" height="400px" colspan="3">
								<div class="tdcontent3">
									<textarea id="description" name="description" cols="40"
										rows="12" style="width: 90%; height: 100%;"></textarea>
								</div>
						</tr>
						<tr>
							<td align="center" colspan="4">
								<div
									style="margin-top: 15px; margin-left: auto; margin-right: auto; margin-bottom: 15px">
									<a href="javascript:void(document.Form1.submit())"
										style="height: 35px; width: 70px; font-size: 16px;"
										class="easyui-linkbutton button" onclick="return sub();">发&nbsp;&nbsp;布</a>
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