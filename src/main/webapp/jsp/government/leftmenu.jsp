<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

 <head id="Head1">
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	


	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    
 	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/default1.css" />
    
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
	
	
	<script type="text/javascript" src='<%=request.getContextPath()%>/js/outlook.js'> </script>
	


    <script type="text/javascript">
	var _menus = {
	basic : [ {
		"menuid" : "20",
		"icon" : "icon-sys",
		"menuname" : "基本信息管理",
		"menus" : [ {
			"menuid" : "211",
			"menuname" : "基本信息维护",
			"icon" : "icon-nav",
			"url" : "#"
		}, {
			"menuid" : "213",
			"menuname" : "登录密码修改",
			"icon" : "icon-nav",
			"url" : "#"
		} ]
	}, {
		"menuid" : "20",
		"icon" : "icon-sys",
		"menuname" : "科技项目管理",
		"menus" : [ {
			"menuid" : "213",
			"menuname" : "科技项目总览",
			"icon" : "icon-nav",
			"url" : "#"
		}, {
			"menuid" : "213",
			"menuname" : "立项评审",
			"icon" : "icon-nav",
			"url" : "#"
		},{
			"menuid" : "213",
			"menuname" : "中期评审",
			"icon" : "icon-nav",
			"url" : "#"
		}, {
			"menuid" : "213",
			"menuname" : "结题评审",
			"icon" : "icon-nav",
			"url" : "#"
		} ]
	}, {
		"menuid" : "20",
		"icon" : "icon-sys",
		"menuname" : "创客创新项目管理",
		"menus" : [ {
			"menuid" : "211",
			"menuname" : "已评审作品总览",
			"icon" : "icon-nav",
			"url" : "#"
		},{
			"menuid" : "211",
			"menuname" : "创新作品评审",
			"icon" : "icon-nav",
			"url" : "#"
		}]
	}, {
		"menuid" : "20",
		"icon" : "icon-sys",
		"menuname" : "信息与公告",
		"menus" : [ {
			"menuid" : "213",
			"menuname" : "政策资讯与通知公告",
			"icon" : "icon-nav",
			"url" : "#"
		}, {
			"menuid" : "213",
			"menuname" : "创客创新项目",
			"icon" : "icon-nav",
			"url" : "#"
		} ]
	}]
};

 </script>
 

</head>
<body class="easyui-layout" style="overflow-y: hidden"  scroll="no" >
<noscript>
</noscript>
    <div region="north" split="false" border="true"  style="width:180px; height:35px;background:url(image/14.jpg);position:relative;">
		<span  style="font-size:14px; font-weight:bold;color:#FF0;position:absolute;top:10px;left:55px;" >导航菜单</span>
		<div id="css3menu" style="padding:0px; margin:0px;list-type:none; float:left; margin-left:40px;">
		  <span><a class="active" name="basic" href="javascript:;" title=" "></a></span>
		</div>
    </div>
    
    <div region="west" hide="true" split="false" style="width:180px;" font-size:18px; id="west">
		<div id='wnav' class="easyui-accordion" fit="true" border="false"></div>
    </div>
    
</body>
</html>