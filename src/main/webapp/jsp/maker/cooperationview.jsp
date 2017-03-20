<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>合作详情查看</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
<div >
	<div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >合作需求&nbsp;&nbsp; &gt;&nbsp;&nbsp; 寻求合作</font></span>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">合作需求详情</span></div>
	     <div >
	     	 <form action="" name="Form1" id="Form1">
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname">标题：</td>
	     	 		<td class="tdcontent1" colspan="3">${detail.title }</td>
	     	 		
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">发布团队：</td>
	     	 		<td class="tdcontent1">${detail.team }</td>
	     	 		<td class="tdname">合作领域：</td>
	     	 		<td class="tdcontent2">${detail.field }</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">联系人：</td>
	     	 		<td class="tdcontent1">${detail.contact }</td>
	     	 		<td class="tdname">联系电话：</td>
	     	 		<td class="tdcontent2">${detail.phone }</td>
	     	 	</tr>
	     	 	<tr>             
             	 <td  class="tdname"  align="center" >团队简介</td>
            	 <td    colspan="3">
	            	 <div class="tdcontent3">
		               <div style="word-wrap:break-word;word-break:break-all;margin:0 auto;width:95%;">
	     					<pre style="width:100%;white-space:pre-wrap; font-size:16px">${detail.teamIntro }</pre>
	    				 </div>
		             </div>
             </tr>	     	 	
            	 <tr>             
             	 <td  class="tdname"  align="center" >合作内容详情</td>
            	 <td    colspan="3">
	            	 <div class="tdcontent3">
		               <div style="word-wrap:break-word;word-break:break-all;margin:0 auto;width:95%;">
	     					<pre style="width:100%;white-space:pre-wrap; font-size:16px">${detail.detail }</pre>
	    				 </div>
		             </div>
             </tr>
                
	     	 </table>
	     	 </form>
	     </div>
	  </div>
	  
</div>
</body>
</html>