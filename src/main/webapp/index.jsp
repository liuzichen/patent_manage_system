<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring 4 MVC - HelloWorld Index Page</title>
</head>
<body>
 
    <center>
     ${basepath}
        <h2>Hello World</h2>
        ${path}
        <h3>
            <a href="test/hello?name=Liuzichen">点击跳转</a>
        </h3>               
        		<div class="header_left"><img src="./image/26.png" ></div>        
       <a href="./jsp/login.jsp">qw</a>
        <img alt="" src="./jsp/47.jpg" ><a  >退出系统</a></li>			
    </center>
</body>
</html>