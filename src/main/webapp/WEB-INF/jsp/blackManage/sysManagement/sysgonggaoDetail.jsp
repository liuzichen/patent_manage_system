<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统公告查看</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>


</head>
<body>
<div >
	<div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >系统管理&nbsp;&nbsp; &gt;&nbsp;&nbsp; 系统公告查看</font></span>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">系统公告查看</span></div>
	     <div >
	     	 <form action="" name="Form1" id="Form1">
	     	 <table style="width:100%;" class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname">公告标题：</td>
	     	 		<td class="tdcontent1" colspan="3"><%=request.getAttribute("Title")%></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">发布时间：</td>
	     	 		<td class="tdcontent1"><%=request.getAttribute("Time")%></td>	     	 		
	     	 		<td class="tdname">公告类型：</td>
	     	 		<td class="tdcontent2">
	     	 		<%=request.getAttribute("Type")%>
	     	 		</td>
	     	 	</tr>
	     	 	
	     	 	     	 	
            	 <tr>             
             	 <td  class="tdname"  align="center" >作品简介</td>
            	 <td  align="center" height="400px"  colspan="3">
	            	 <div class="tdcontent3"><%=request.getAttribute("Description")%>
		             </div> 
             </tr>
             <tr>
	     	 		<td class="tdname">附件类型：</td>
	     	 		<td class="tdcontent2">
	     	 		<%=request.getAttribute("FujianType")%>
	     	 		</td>
	     	 		<td class="tdname">附件标题：</td>
	     	 		<td class="tdcontent1"><%=request.getAttribute("FujianName")%>
	     	 		</td>
	     	 	</tr>
	     	 	<tr>
	     	 		
	     	 		<td class="tdname" colspan="4" >
                   	 <div align="left" ><a href="#" class="easyui-linkbutton button" name="Fujian" style="width:180px;height:30px">相关附件下载查看</a></div></td>
	     	 		
	     	 	</tr>
          
	           
	     	 </table>
	     	 </form>
	     </div>
	  </div>
	  
</div>
</body>
</html>