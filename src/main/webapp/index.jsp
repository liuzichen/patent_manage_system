<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring 4 MVC - HelloWorld Index Page</title>
</head>
<body>

	<center>
		<h2>Hello World</h2>
		<h3>
			<a href="test/hello?name=Liuzichen">请点这里</a>
		</h3>
		<%=request.getContextPath()%>
		<img alt=""
			src="<%=request.getContextPath() %>/src/main/webapp/image/05.jpg"
			style="float: left; margin-left: 20px; margin-top: -1px"
			height="20px" width="20px"><a>退出系统</a>
		</li>
	</center>
</body>
</html>
