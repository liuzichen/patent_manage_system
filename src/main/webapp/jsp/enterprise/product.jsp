<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成果申请</title>
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
<%int id=1; %>
<script type="text/javascript">
$(document).ready(function(){
	document.getElementById("id").value=<%=id%>;
});
function sub(){
	var title=document.getElementById("title").value;
	var sort=document.getElementById("sort").value;
	var description=document.getElementById("description").value;
	if(title==""){
		alert("提示：\n\n请填写成果名称！");
		return false;
	}
	if(sort==""){
		alert("提示：\n\n请选择成果类型！");
		return false;
	}
	if(description==""){
		alert("提示：\n\n请填写成果详细信息！");
		return false;
	}
	if(confirm("确认提交科技成果？")){
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
				<span><font>当前位置:</font></span> <span><font>科技项目管理&nbsp;&nbsp;
						&gt;&nbsp;&nbsp; 成果管理</font></span>
			</div>
		</div>
		<div class="context">
			<div class="titlebox">
				<span class="title">科技项目成果提交</span>
			</div>
			<div>
				<form action="" name="Form1" id="Form1">
					<input type="hidden" name="id" id="id">
					<table class="persional" align="center" border="1" cellpadding="0"
						cellspacing="0" bordercolor="#DEE5EA">
						<tr>
							<td class="tdname">成果名称：</td>
							<td class="tdcontent1" colspan="3"><input
								class="easyui-textbox mydatebox" type="text" name="title"
								id="title" style="width: 90%"></td>
						</tr>
						<tr>
							<td class="tdname">成果类别：</td>
							<td class="tdcontent1"><select id="sort" name="sort"
								class="mydatebox">
									<option value="">--请选择--</option>

							</select></td>
							<td class="tdname">授权或发表时间：</td>
							<td class="tdcontent2"><input
								class="easyui-datebox mydatebox" type="text" name="time"
								id="time" editable="false" panelHeight="260" panelWidth="200"></td>
						</tr>
						<tr>
							<td class="tdname">证书号<font
								style="color: red; margin-left: 0px;">(非论文类成果)：</font></td>
							<td class="tdcontent1"><input
								class="easyui-textbox mydatebox" type="text" name="code"
								id="code"></td>
							<td class="tdname" colspan="2">
								<div align="center">
									<a href="#" class="easyui-linkbutton button"
										style="width: 120px; height: 25px">相关附件上传</a>
								</div>
							</td>
						</tr>
						<tr>
							<td class="tdname" align="center">成果详细信息</td>
							<td align="center" colspan="3">
								<div class="tdcontent3">
									<textarea id="description" name="description" cols="40"
										rows="12" style="width: 90%; height: 100%;"></textarea>
								</div>
						</tr>
						<tr>
							<td align="center" colspan="4">
								<div
									style="margin-top: 20px; margin-left: auto; margin-right: auto; margin-bottom: 20px">
									<a href="javascript:void(document.Form1.submit())"
										style="height: 35px; width: 70px; font-size: 16px;"
										class="easyui-linkbutton button" onclick="return sub();">提&nbsp;&nbsp;交</a>
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