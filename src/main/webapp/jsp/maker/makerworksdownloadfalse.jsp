<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>附件下载失败</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(function(){
	$("#jump").attr("href","<%=request.getContextPath()%>"+"${path}"+"${id}");
	setTimeout("jumpurl()",3000);
});
function jumpurl(){  
  location="<%=request.getContextPath()%>"+"${path}"+"${id}";  
}  


</script>
</head>
<body>
<div align="center">
<h1>附件下载失败，成果无可下载附件</h1>    
<a href="#" id="jump">3秒后系统会自动跳转回上一页，也可点击本处直接跳</a> 
</div>
</body>
</html>