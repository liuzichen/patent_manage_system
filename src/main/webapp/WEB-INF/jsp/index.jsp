<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>大连市智慧科技云服务平台</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<frameset id="upFrame" name="upFrame" rows="100px,35px,*" cols="*"
	frameborder="NO" border="0" framespacing="0">
	<frame name="topFrame"
		src="<%=request.getContextPath()%>/jsp/topbanner.jsp" scrolling="no"
		noresize target="contents">
	<frame name="topFrame1"
		src="<%=request.getContextPath()%>/jsp/topmenu.jsp" scrolling="no"
		noresize>
	<frameset id="centerFrame" name="centerFrame" cols="180,10,*"
		framespacing="0">
		<frame name="MenuFrame"
			src="<%=request.getContextPath()%>/jsp/maker/leftmenu.jsp"
			scrolling="no" noresize>
		<frame name="pushRLFrame"
			src="<%=request.getContextPath()%>/jsp/pushRL.htm" scrolling="no"
			noresize>
		<frame name="PageFrame"
			src="<%=request.getContextPath()%>/jsp/maker/loging.jsp">
	</frameset>
</frameset>
<noframes></noframes>
<body>

</body>
</html>
