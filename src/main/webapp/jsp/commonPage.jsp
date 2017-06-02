<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/common.css">



</head>
<body>
	<div class="commonPage">

		<div class="topnav">
			<div
				style="width: 494px; position: relative; top: 10px; visibility: visible;">
				<span><font>当前位置:</font></span> <span><font color="#66583D">薪资管理<b>&nbsp;
					</b></font> &gt; <font color="#FF0000"> 薪资查询</font></span>
			</div>
		</div>

		<div class="context"></div>

	</div>
</body>
</html>