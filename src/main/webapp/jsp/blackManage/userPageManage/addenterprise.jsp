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
	var name=document.getElementById("name").value;
	var legalPerson=document.getElementById("legalPerson").value;
	var registrationTime=document.getElementById("registrationTime").value;
	var registrationMoney=document.getElementById("registrationMoney").value;
	var applyType=document.getElementById("applyType").value;
	var channel1=document.getElementById("channel1").value;
	var channel2=document.getElementById("channel2").value;
	var loginName=document.getElementById("loginName").value
	var email=document.getElementById("email").value;
	var cellPhone=document.getElementById("cellPhone").value;
	var postcode=document.getElementById("postcode").value
	if(name==""){
		alert("提示：\n\n请填写创客姓名！");
		return false;
	}
	if(cellPhone==""){
		alert("提示：\n\n请填写联系电话！");
		return false;
	}
	if(email==""){
		alert("提示：\n\n请填写电子邮件！");
		return false;
	}
	if(channel1==""){
		alert("提示：\n\n请填写申请渠道！");
		return false;
	}
	if(confirm("确认保存更改？")){
		return true;
    }
  else
    {
	    return false;
	}
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
	     	 <form action="<%=request.getContextPath()%>/manageEnterprise/insertEnterpriseInfo" name="Form1" id="Form1">
	     	 <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	     	 	<tr>
	     	 		<td class="tdname">企业名称：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="name" id="name" ></td>
	     	 		<td class="tdname">法人代表：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="legalPerson" id="legalPerson" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">注册时间：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="registrationTime" id="registrationTime" ></td>
	     	 		<td class="tdname">注册资金：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="registrationMoney" id="registrationMoney" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">单位性质：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="applyType" id="applyType" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">申报渠道1：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="channel1" id="channel1" ></td>
					<td class="tdname">申报渠道2：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="channel2" id="channel2" ></td>

	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">联系人：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="loginName" id="loginName" ></td>
	     	 		<td class="tdname">电子邮箱：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="email" id="email" ></td>
	     	 	</tr>
	     	 	<tr>
	     	 		<td class="tdname">联系电话：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="cellPhone" id="cellPhone" ></td>
	     	 		<td class="tdname">邮政编码：</td>
	     	 		<td class="tdcontent1"><input class="easyui-textbox mydatebox" type="text" name="postcode" id="postcode" ></td>
	     	 	</tr>
                <tr>
	             <td align="center" colspan="4">
	             	<div style="margin-top:15px;margin-left:auto;margin-right:auto; margin-bottom:15px" >
	             		<a href="javascript:void(document.Form1.submit())" style="height:35px;width:70px;font-size:16px;" class="easyui-linkbutton button" onclick="return sub();">保&nbsp;&nbsp;存</a>
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