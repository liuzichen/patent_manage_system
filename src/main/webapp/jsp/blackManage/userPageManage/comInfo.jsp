<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业信息维护</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
function sub(){
	window.history.back(-1); 
}
</script>
</head>
<body>
<div >
	<div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >企业信息查看&nbsp;&nbsp; &gt;&nbsp;&nbsp;企业用户详情</font></span>
	   </div>
     </div>
      <div class="context">
         <div class="titlebox"><span class="title">企业基本信息</span></div>
	     <div >
	     	 <form action="" name="Form1" id="Form1">
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname">企业名称：</td>
	     	 		<td class="tdcontent1">${detail.name}</td>
	     	 		<td class="tdname">法人代表：</td>
	     	 		<td class="tdcontent2">${detail.legalPerson}</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">注册时间：</td>
	     	 		<td class="tdcontent1">${detail.registrationTime}</td>
	     	 		<td class="tdname">注册资金：</td>
	     	 		<td class="tdcontent2">${detail.registrationMoney}</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">单位性质：</td>
	     	 		<td class="tdcontent1" colspan="3" >${detail.applyType}</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">申报渠道：</td>
	     	 		<td class="tdcontent1" colspan="3">${detail.channel1}
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${detail.channel2}
					</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">联系人：</td>
	     	 		<td class="tdcontent1">${detail.legalPerson}</td>
	     	 		<td class="tdname">电子邮箱：</td>
	     	 		<td class="tdcontent2">${detail.email}
	     	 		</td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">联系电话：</td>
	     	 		<td class="tdcontent1">${detail.cellPhone}
	     	 		</td>
	     	 		<td class="tdname">邮政编码：</td>
	     	 		<td class="tdcontent2">${detail.postcode}</td>
	     	 	</tr>
                <tr>
	             <td align="center" colspan="4">
	             	<div style="margin-top:15px;margin-left:auto;margin-right:auto; margin-bottom:15px" >
	             		<a href="<%=request.getContextPath()%>/manageEnterprise/toManageEnterpriseList" style="height:35px;width:70px;font-size:16px;" class="easyui-linkbutton button" onclick="sub();">返&nbsp;&nbsp;回</a>
	             	</div>
		        </td>
	        </tr>
	     	 </table>
	     	 </form>
	     </div>
	  </div>
	  
</div>
</body>
</html>