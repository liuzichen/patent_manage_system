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


<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/default1.css" />

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>


<script type="text/javascript"
	src='<%=request.getContextPath()%>/js/outlook.js'> </script>


<script type="text/javascript">
	var _menus = {
	basic : [ {
		"menuid" : "100",
		"icon" : "icon-sys",
		"menuname" : "项目管理",
		"menus" : [ {
			"menuid" : "111",
			"menuname" : "创客项目管理",
			"icon" : "icon-nav",
			"url" : "<%=request.getContextPath()%>/jsp/blackManage/projectManage/chuangkeProjectOverview.jsp"
		},	{
			"menuid" : "112",
			"menuname" : "企业一般项目管理",
			"icon" : "icon-nav",
			"url" : "<%=request.getContextPath()%>/jsp/blackManage/projectManage/qiyeyibanProjectOverview.jsp"
		},	 {
			"menuid" : "113",
			"menuname" : "企业科技项目管理",
			"icon" : "icon-nav",
			"url" : "<%=request.getContextPath()%>/jsp/blackManage/projectManage/qiyekejiProjectOverview.jsp"
		}]
	}, {
		"menuid" : "200",
		"icon" : "icon-sys",
		"menuname" : "用户信息管理",
		"menus" : [ {
			"menuid" : "211",
			"menuname" : "企业用户信息查看",
			"icon" : "icon-nav",
			"url" : "<%=request.getContextPath()%>/jsp/blackManage/userPageManage/compOverview.jsp"
		}, {
			"menuid" : "212",
			"menuname" : "创客用户信息查看",
			"icon" : "icon-nav",
			"url" : "<%=request.getContextPath()%>/jsp/blackManage/userPageManage/chuangOverview.jsp"
		} ,{
			"menuid" : "213",
			"menuname" : "专家信息管理",
			"icon" : "icon-nav",
			"url" : "<%=request.getContextPath()%>/jsp/blackManage/userPageManage/expertOverview.jsp"
		},{
			"menuid" : "214",
			"menuname" : "政府信息管理",
			"icon" : "icon-nav",
			"url" : "<%=request.getContextPath()%>/jsp/blackManage/userPageManage/goverOverview.jsp"
		},]
	}, {
		"menuid" : "300",
		"icon" : "icon-sys",
		"menuname" : "专家分配管理",
		"menus" : [ {
			"menuid" : "311",
			"menuname" : "创客项目专家分配",
			"icon" : "icon-nav",
			"url" : "<%=request.getContextPath()%>/jsp/blackManage/expertPageManage/chuangkeExpertSperateOverview.jsp"
		},{
			"menuid" : "312",
			"menuname" : "企业一般项目专家分配",
			"icon" : "icon-nav",
			"url" : "<%=request.getContextPath()%>/jsp/blackManage/expertPageManage/qiyeyibanExpertSperateOverview.jsp"
		},{
			"menuid" : "313",
			"menuname" : "企业科技项目专家分配",
			"icon" : "icon-nav",
			"url" : "<%=request.getContextPath()%>/jsp/blackManage/expertPageManage/qiyekejiExpertSperateOverview.jsp"
		},{
			"menuid" : "314",
			"menuname" : "专家评审费发放管理",
			"icon" : "icon-nav",
			"url" : "<%=request.getContextPath()%>/jsp/blackManage/expertPageManage/pingshengFreeDeliverMange.jsp"
		} ]
	}, {
		"menuid" : "400",
		"icon" : "icon-sys",
		"menuname" : "系统管理",
		"menus" : [  {
			"menuid" : "411",
			"menuname" : "系统管理用户",
			"icon" : "icon-nav",
			"url" : "<%=request.getContextPath()%>/jsp/blackManage/sysManagement/guanliyuanOverview.jsp"
		}, {
			"menuid" : "412",
			"menuname" : "数据库维护",
			"icon" : "icon-nav",
			"url" : "<%=request.getContextPath()%>/"
		}, {
			"menuid" : "413",
			"menuname" : "系统公告",
			"icon" : "icon-nav",
			"url" : "<%=request.getContextPath()%>/jsp/blackManage/sysManagement/sysgonggaoOverview.jsp"
		}]
	 }
	]
};

 </script>

</head>
<body class="easyui-layout" style="overflow-y: hidden" scroll="no">
	<noscript></noscript>
	<div region="north" split="false" border="true"
		style="width: 180px; height: 35px; background: url(image/14.jpg); position: relative;">
		<span
			style="font-size: 14px; font-weight: bold; color: #FF0; position: absolute; top: 10px; left: 55px;">导航菜单</span>
		<div id="css3menu"
			style="padding: 0px; margin: 0px; list-type: none; float: left; margin-left: 40px;">
			<span><a class="active" name="basic" href="javascript:;"
				title=" "></a></span>
		</div>
	</div>

	<div region="west" hide="true" split="false" style="width: 180px;"
		font-size:18px; id="west">
		<div id='wnav' class="easyui-accordion" fit="true" border="false"></div>
	</div>

</body>
</html>