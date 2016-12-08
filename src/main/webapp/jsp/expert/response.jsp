<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>咨询回复</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/response.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<style type="text/css">
	.box{margin:0px auto;width:100%;height:500px;position:relative;}
	.tdname{height:30px;text-align:center;background-color:#F2F2F2;}
	.tdcontent{width:35%;height:30px;text-align:center;}
	.td{ width:100%; padding-top:10px}
</style>
<script type="text/javascript">
function checkform(){
	var res=document.getElementById("achievement").value;
	if(res==""){
		alert("提示：\n\n请填写回复内容！");
		return false;
	}
	if(confirm("确认提交回复？")){
		return true;
	}
	else{
		return false;
	}
}
</script>
</head>
<body>
<div >
	   
	    <div class="topnav"  >
		  <div class="path">
		      <span ><font>当前位置:</font></span>
		      <span ><font >问题咨询&nbsp;&nbsp; &gt;&nbsp;&nbsp; 咨询问题回复</font></span>
		    </div>
		 </div> 
	     <div  class="context">
	     <% String address=" confirmResponse?id="+request.getParameter("questionId"); %>
	     	<form  method="post" action=<%=address %> id="reform" name="reform">
	     	<div class="box">
	     		<div class="titlebox">
	     			<div class="title">咨询问题回复</div>
	     		</div>
	     		<div class="tablebox" >
	     			<table style="border:solid #B8B8B8; border-width:0px 1px 1px 1px; width:100%">
	     				<tr>
	     					<td class="td" style="border:solid #B8B8B8; border-width:0px 0px 1px 0px; ">
	     						<div style="font-weight:bold; position:relative; left:30px;width:20%;">
	     							       问题标题:    ${questionDetail.title}
	     						</div>
	     						<div style="word-wrap:break-word;word-break:break-all;margin:0 auto;width:80%;">
	     							<pre style="width:100%;white-space:pre-wrap;"></pre>
	     						</div>	     						
	     					</td>   					
	     				</tr>
	     				<tr>
	     					<td class="td" style="border:solid #B8B8B8; border-width:0px 0px 1px 0px; ">
	     						<div style=" position:relative; left:30px;width:20%;">
	     							<b>问题描述:</b>    ${questionDetail.content}
	     						</div>
	     						<div style="word-wrap:break-word;word-break:break-all;margin:0 auto;width:80%;">
	     							<pre style="width:100%;white-space:pre-wrap;"></pre>
	     						</div>
	     						
	     					</td>
	     				</tr>
	     				<tr>
	     					<td class="td">
	     						<div style="font-weight:bold; position:relative; left:30px;width:20%;">
	     							问题回复:
	     						</div>
	     						<div style="margin:0 auto;position:relative; top:15px;width:80%;height:300px">
	     							<textarea id="achievement" cols="40" rows="12"  name="achievement" style="width:100%;height:90%;"></textarea>
	     						</div>
	     					</td>
	     				</tr>
	     				<tr>
	     					<td style="text-align:center;height:45px">
	     						<a href="javascript:void(document.reform.submit())" class="easyui-linkbutton button" onclick="return checkform();">提&nbsp;&nbsp;交</a>
	     					</td>
	     				</tr>
		
	     			</table>
	     		</div>
	     	</div>
	     	</form>
	     </div>
</div>
</body>

</html>