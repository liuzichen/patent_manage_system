<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'topmenu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="<%=request.getContextPath()%>/css/header.css" rel="stylesheet" type="text/css" />

  </head>
  <body language="javascript" background="image/14.jpg" bottommargin="0" 
		leftmargin="0" topmargin="0" scroll="no" rightmargin="0" height="37px">
		
    <form method="post" action="#" id="Form1">
    <div class="navbg">
        <div align="center" class="navleft">
            <font size="2" color="#fff100">欢迎您登录:&nbsp;<%=session.getAttribute("userName") %>！</font>
        </div>
        <div class="navx">
        	 <font size="2" color="#fff100">当前用户组:&nbsp;<%=session.getAttribute("usertype") %></font>
        </div>
        <div class="nav">
            <ul>
            <li></li>
            </ul>
        </div>
    </div>
  
    </form>
</body>

