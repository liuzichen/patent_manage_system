<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创客项目详情查看</title>
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
$(function(){
	document.getElementById("evaluation").form="Form1";
	var hid;
	if("${detail.fujian}"==""){
		hid=1;
	}
	if(hid==1){
		$('#download').hide();
	}
	$("#download").attr("href","<%=request.getContextPath()%>/manageEnterprise/enterCommonWorksDownload?id="+"${detail.id }"); 
});
function sub(){
	var evaluation=document.getElementById("evaluation").value;
	if(evaluation==""){
		alert("提示：\n\n请填写回复！");
		return false;
	}
	if(confirm("确认提交回执？")){
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
				<span><font>当前位置:</font></span> <span><font>企业一般项目管理&nbsp;&nbsp;
						&gt;&nbsp;&nbsp;企业一般项目详情查看</font></span>
			</div>
		</div>


		<div class="context">
			<div class="titlebox">
				<span class="title">企业一般项目详情查看</span>
			</div>


			<div>
				<form
					action="<%=request.getContextPath()%>"
					name="Form1" id="Form1">
					<input type="hidden" id="workid" name="workid" value=${detail.id}>
					<div class="easyui-tabs" style="width: 100%">

						<div title="创客项目详情查看" style="width: 100%">
							<div style="width: 100%">

								<table class="persional" align="center" border="1"
									cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
									<tr>
										<td class="tdname">作品名称：</td>
										<td class="tdcontent1" colspan="3">${detail.title}</td>
									</tr>
									<tr>
										<td class="tdname">类型：</td>
										<td class="tdcontent1">${detail.type}</td>
										<td class="tdname">技术领域：</td>
										<td class="tdcontent2">${detail.field}</td>
									</tr>
									<tr>
										<td class="tdname" colspan="4">
											<div align="center">
												<a id="download" class="easyui-linkbutton button"
													style="width: 120px; height: 25px">下载附件查看</a>
											</div>
										</td>

									</tr>
									<tr>
										<td class="tdname" align="center">项目简介</td>
										<td align="center" colspan="3">
											<div class="tdcontent3">
												<div
													style="word-wrap: break-word; word-break: break-all; margin: 0 auto; width: 95%;">
													<pre
														style="width: 100%; white-space: pre-wrap; font-size: 16px">${detail.description}</pre>
												</div>
											</div>
									</tr>
								</table>
							</div>
						</div>


						<div title="专家评审结果" style="width: 100%">
							<div style="width: 100%">
								<table class="persional" align="center" border="1"
									cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
									<c:forEach items="${comments}" var="item">
										<tr>
											<td class="tdname" align="center" colspan="2">专家姓名</td>
											<td align="center" colspan="2">${item.expertName}</td>
										</tr>
										<tr>
											<td class="tdname" align="center" colspan="1">专家意见</td>
											<td align="center" colspan="3">
												<div class="tdcontent3">
													<div
														style="word-wrap: break-word; word-break: break-all; margin: 0 auto; width: 95%;">
														<pre
															style="width: 100%; white-space: pre-wrap; font-size: 16px">${item.comment}</pre>
													</div>
												</div>
											</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
					
				
					</div>

				</form>
			</div>
		</div>

	</div>
</body>
</html>