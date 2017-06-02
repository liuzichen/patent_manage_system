<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创客项目</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/news.css">
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
	if("${detail.attachment}"==""){
		hid=1;
	}
	if(hid==1){
		$('#attach').hide();
	}
	$("#attend").attr("href","<%=request.getContextPath()%>/maker/toInsertMakerProjectWork?userId="+"<%=session.getAttribute("userId")%>"+"&"+"projectId="+"<%=request.getParameter("projectId")%>");
	$("#attach").attr("href","<%=request.getContextPath()%>/maker/makerProjectDownload?id="+"<%=request.getParameter("projectId")%>");
});
</script>
</head>
<body>
	<div>
		<div class="topnav">
			<div class="path">
				<span><font>当前位置:</font></span> <span><font>成果发布&nbsp;&nbsp;
						&gt;&nbsp;&nbsp;创客项目报名</font></span>
			</div>
		</div>
		<div class="context" style="width: 90%">
			<div style="margin: 0px auto; width: 100%">
				<h2 style="margin: 0px auto; text-align: center; font-size: 30px">${detail.title}</h2>
				<div style="margin: 0px auto; text-align: center; color: #C1C1C1;">${detail.startTime}至${detail.endTime }</div>
			</div>
			<div style="height: 30px">&nbsp;</div>
			<div
				style="word-wrap: break-word; word-break: break-all; margin: 0 auto; width: 100%;">
				<pre style="width: 100%; white-space: pre-wrap; font-size: 16px">${detail.description}</pre>
			</div>
			<div style="height: 30px">&nbsp;</div>
			<div>
				<input type="file" name="download" id="download"
					style="display: none"><a id="attach" name="attach"
					style="height: 25px; width: 150px; font-size: 14px;">相&nbsp;关&nbsp;附&nbsp;件&nbsp;下&nbsp;载</a>
			</div>
			<div style="height: 30px">&nbsp;</div>
			<div align="center">
				<a id="attend" name="attend"
					style="height: 30px; width: 150px; font-size: 20px; font-weight: bold;"
					class="easyui-linkbutton">报&nbsp;名&nbsp;参&nbsp;加</a>
			</div>
		</div>
	</div>
</body>
</html>