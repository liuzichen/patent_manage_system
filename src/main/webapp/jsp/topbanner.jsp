<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title> </title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/header.css">
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
	<body bottomMargin="0" leftMargin="0" topMargin="0"  rightMargin="0"  scroll="no">
		<div id="mainbanner">
		    <img alt="" src="<%=request.getContextPath()%>/image/07.jpg" style="float:left; margin-left:30px; margin-top:20px" height="60px" width="60px">
			<div class="biaoti" align="right" style="font-size:36px;font-weight:bold;color:#0033FF;">
			大连市智慧科技云服务平台</div>
			<ul id="navmenu">
			<li><img alt="" src="/image/05.jpg" style="float:left; margin-left:20px; margin-top:-1px" height="20px" width="20px"><a onclick="logout()" href="javascript:window.opener=null;%20window.close();">退出系统</a></li>
			<li><img alt="" src="/image/03.jpg" style="float:left; margin-left:20px; margin-top:-1px" height="20px" width="20px"><a href="<%=request.getContextPath()%>/jsp/login.jsp"  id="editpass" target="PageFrame">修改密码</a></li>
			<li><img alt="" src="/image/01.jpg" style="float:left; margin-left:35px; margin-top:-1px" height="20px" width="20px"><a href="<%=request.getContextPath()%>/general/loging.jsp"  target="PageFrame">主页</a></li>
			</ul>
			</div>
		<div class="navbg">
		</div>
	
</body>
</html>