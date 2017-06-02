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
	href="<%=request.getContextPath()%>/css/header.css">
<script>
	//退出登录
	
		function logout(){
        if (confirm("您确定要退出吗？"))
            top.location="<%=request.getContextPath()%>/jsp/login.jsp";
         return false;
    }
    
	   //修改密码
	   function editpass(){
	       window.parent.frames["PageFrame"].location.href="<%=request.getContextPath()%>/jsp/login.jsp";
	   }
	</script>

</head>
<body bottomMargin="0" leftMargin="0" topMargin="0" rightMargin="0"
	scroll="no">
	<div class="topnav"
		style="border-color: #000; border: 1px; background-color: #E9F1F5; height: 40px; width: 100% position:absolute;">
		<div
			style="width: 494px; position: relative; top: 10px; visibility: visible;">
			<span style="font-size: 14px; margin-left: 20px; margin-top: 50px">当前位置:</span><span><font
				color="#66583D">薪资管理<b>&nbsp; </b></font> &gt; <font color="#FF0000">
					薪资查询</font></span>
		</div>

		<div class="page"
			style="height: 100%; width: 80%; background-color: #66CCFF; width: 80%; position: absolute; top: 150px; left: 80px; height: 100%; visibility: visible; overflow: auto;">

		</div>
	</div>
</body>
</html>