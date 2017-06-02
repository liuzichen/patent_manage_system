<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>原创成果查看</title>
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
	var hid;
	if("${detail.fujian}"==""){
		hid=1;
	}
	if(hid==1){
		$('#download').hide();
	}
	$("#download").attr("href","<%=request.getContextPath()%>/maker/makerCommonWorksDownload?id="+"${detail.id }"); 
});
</script>
</head>
<body>
	<div>
		<div class="topnav">
			<div class="path">
				<span><font>当前位置:</font></span> <span><font>成果发布&nbsp;&nbsp;
						&gt;&nbsp;&nbsp; 原创成果管理</font></span>
			</div>
		</div>
		<div class="context">
			<div class="titlebox">
				<span class="title">原创成果查看</span>
			</div>
			<div>
				<form action="" name="Form1" id="Form1">
					<table class="persional" align="center" border="1" cellpadding="0"
						cellspacing="0" bordercolor="#DEE5EA">
						<tr>
							<td class="tdname">成果名称：</td>
							<td class="tdcontent1" colspan="3">${detail.title }</td>
						</tr>
						<tr>
							<td class="tdname">团队名称：</td>
							<td class="tdcontent1">${detail.team }</td>
							<td class="tdname">技术领域：</td>
							<td class="tdcontent2">${detail.field }</td>
						</tr>
						<tr>
							<td class="tdname">联系人：</td>
							<td class="tdcontent1">${detail.contack }</td>
							<td class="tdname">联系电话：</td>
							<td class="tdcontent2">${detail.phone }</td>
						</tr>
						<tr>
							<td class="tdname">电子邮箱：</td>
							<td class="tdcontent1">${detail.email }</td>
							<td class="tdname" colspan="2">
								<div align="center">
									<a href="#" id="download" class="easyui-linkbutton button"
										style="width: 120px; height: 25px">相关附件下载</a>
								</div>
							</td>

						</tr>

						<tr>
							<td class="tdname" align="center">作品简介</td>
							<td align="center" colspan="3">
								<div class="tdcontent3">
									<div
										style="word-wrap: break-word; word-break: break-all; margin: 0 auto; width: 95%;">
										<pre
											style="width: 100%; white-space: pre-wrap; font-size: 16px">${detail.description }</pre>
									</div>
								</div>
						</tr>
						<%boolean flag=(Boolean)request.getAttribute("flag");%>
						<%if(flag==true){%>
						<tr>
							<td class="tdname" align="center">评审结果</td>
							<td align="center" colspan="3">
								<div class="tdcontent3">
									<div
										style="word-wrap: break-word; word-break: break-all; margin: 0 auto; width: 95%;">
										<pre
											style="width: 100%; white-space: pre-wrap; font-size: 16px">${detail.evaluation}</pre>
									</div>
								</div>
						</tr>
						<%}%>
					</table>
				</form>
			</div>
		</div>

	</div>
</body>
</html>