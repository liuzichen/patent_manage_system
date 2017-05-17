<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目立项报告 </title>
	
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
	
<style type="text/css">
	
	.persional{
		width:100%;
		position:relative;
		background-color:#F7F7F7;
		border-collapse:collapse;
		border-color:#DEE5EA;
		color:#5F6467;
	}
	
	.prodTab{
		width:100%;
		height:100%;
		position:relative;
		border-collapse:collapse;
	
	}
	.prodTab td{
	
	     height:25px;
	     text-align:center;
	     text-indent:10;
	     font-size:14px;
	     border-color:#DEE5EA;
	     color:#5F6467;
	}
	
		
	#tabtitle{
		height:30px;
		background-color:#CDE8F9;
		font-weight:bolder;
		border:0;
		font-size:14px;
		color:#2C3E4B;
	}
	
	#tabtitle1{
		border:1;
		width:15.1%;
		height:400px;
		background-color:#F2F2F2;
		font-size:16px;
	}		
	
	
.out {
	border-top: 5em #F2F2F2 solid; /*上边框宽度等于表格第一行行高*/
	border-left: 200px white solid; /*左边框宽度等于表格第一行第一格宽度*/
	position: relative; /*让里面的两个子容器绝对定位*/
	color:black;
}

b {
	font-style: normal;
	display: block;
	position: absolute;
	top: -3.6em;
	left: -140px;
	width: 200px;
}

em {
	font-style: normal;
	display: block;
	position: absolute;
	top: -30px;
	left: -260px;
	width: 200px;
}

.assessDetail td {
	background-color: #FFF;
}


	.mydatebox1{width:100px;}
	
	.mydatebox2{width:300px;}
	
	.mydatebox3{width:78.8%;}
	
	.mydatebox4{width:50px;top:-5px}
	
	.mydatebox5{width:200px;}

	.tdcontent2-2{
			width:30%;
			text-align:center;
		}
		
		.tdcontent1-1{
		width:25%;
		text-align:center;
	}
	
	
</style>

<script type="text/javascript">
$(document).ready(function(){
	if("${detail.state}"!="待修改"){
		var ctab = $('#mytabs').tabs('getTab', '评审结果').panel('options').tab;
		 ctab.hide();
	}
});




//********************************************************************************

	function getFilePath(input){  
		var img = document.getElementById('img');
	    var path = img.value;

       
	if(input){//input是<input type="file">Dom对象  
        if(window.navigator.userAgent.indexOf("MSIE")>=1){  //如果是IE    
            input.select();  
            alert(document.selection.createRange().text); 
          return document.selection.createRange().text;      
        }      
        else if(window.navigator.userAgent.indexOf("Firefox")>=1){  //如果是火狐  {      
            if(input.files){      
            	 alert(input.files.item(0).getAsDataURL()); 
            	return input.files.item(0).getAsDataURL();      
            }    
            alert(input.value); 
            return input.value;      
        }    
        alert(input.value); 
        return input.value;   
    }  
}  

	function save() {
		if (confirm("确认保存项目申报书？")) {
			document.getElementById("sort").value = "save";
			return true;
		} else {
			return false;
		}
	}
	function sub() {
		if (confirm("确认提交项目申报书？")) {
			document.getElementById("sort").value = "submit";
			return true;
		} else {
			return false;
		}
	}
</script>
	
</head>

<body>

 <div>
 
     <div class="topnav" >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >科技项目管理&nbsp;&nbsp; &gt;&nbsp;&nbsp; 立项管理</font></span>
	   </div>
     </div> 
		 <%String address = request.getContextPath()+"/enterprise/insertEnterpriseProject?id=1"; %>
    <div class="context">
       <div class="titlebox"><span class="title">项目立项申报</span></div>
       <form method="post"  action=<%=address%>  name="Form1" id="Form1">
       <div class="easyui-tabs" style="width:100%" id="mytabs">
       <div title="申报扉页" style="width:100%">
       	<div style="width:100%">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
               <tr >
                    <td class="tdname">受理编号：</td>                    
                    <td class="tdcontent1">
            
                    </td>
                    <td class="tdname">负责处室：</td>
                    <td class="tdcontent2">
                    	
                    </td>
                </tr>
                <tr >
                    <td class="tdname">项目名称：</td>                    
                    <td class="tdcontent1">
                    	<input class="easyui-textbox mydatebox" type="text"  name="A3" id="A3" value="${detail.title}" />
                    </td>
                    <td class="tdname">计划类别：</td>
                    <td class="tdcontent2">
                      <input class="easyui-textbox mydatebox" type="text"  name="A4"  id="A4" value="${detail.type}" />
                    </td>
                </tr>
                <tr >
                    <td class="tdname">技术领域：</td>
                    <td class="tdcontent1">
                     <input class="easyui-textbox mydatebox" type="text" name="A5" id="A5" value="${detail.type}"/>
                    </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="A6" id="A6" value="${enterpriseInfo.name}"/>
                    </td>                    
                </tr>
                <tr >
                    <td class="tdname">归口管理部门：</td>
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="A7" id="A7" value="${detail.competentDepartment}"/>
                    </td>
                    <td class="tdname">单位负责人：</td>
                    <td class="tdcontent2">
                     <input class="easyui-textbox mydatebox" type="text" name="A8" id="A8" value="${detail.contractor}"/>
                    </td>                    
                </tr>
                <tr>
                    <td class="tdname">填报人：</td>
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="A9" id="A9" value="${detail.contact}"/>
                    </td>
                     <td class="tdname">联系电话：</td>
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="A10" id="A10" value="${detail.contactPhoneNumber}"/>
                    </td>
               
                </tr>
                <tr>
                 <td class="tdname">填报日期：</td>
                    <td class="tdcontent1" >
                      <input class="easyui-datebox mydatebox" type="text" name="A111213" id="A111213" editable="false" panelHeight="260" panelWidth="200" >
                    </td>
                    <td class="tdname" colspan="2" >
                   	 <div align="center" ><input class="easyui-filebox" name="file" data-options="prompt:'Choose a file...'" style="width:60%" onChange="getFilePath(this)"></div></td>
                </tr>
                
             </table>
             </div>
             <!-- <input type="file" id="img" onChange="getFilePath(this)"> -->
       </div>
       <div title="单位基本情况" style="width:100%">
       <div style="width:100%">

<!-- 一、项目基本情况	 -->
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	   			<tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、单位基本情况</td>
	   			</tr>
                <tr >
                    <td class="tdname">单位名称：</td>                    
                    <td class="tdcontent1">
                     <input class="easyui-textbox mydatebox" type="text" name="B1" id="B1" value="${enterpriseInfo.name}"/>
                    </td>
                    <td class="tdname">组织机构代码：</td>
                    <td class="tdcontent2">
                         <input class="easyui-textbox mydatebox" type="text" name="B2" id="B2" value="${enterpriseInfo.companyCode}"/>
                    </td>
                </tr>
                <tr >
                    <td class="tdname">申报渠道：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="B3" id="B3" value="${enterpriseInfo.applyType}" />
                    </td>
                    <td class="tdname">所在地区：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="B4" id="B4" value="${enterpriseInfo.registeredCapital}" />
                    </td>                    
                </tr>
                 <tr >
                    <td class="tdname">通信地址：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="B5" id="B5" value="${enterpriseInfo.address}" />
                    </td>
                    <td class="tdname">邮政编码：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="B6" id="B6" value="${enterpriseInfo.postcode}" />
                    </td>                    
                </tr>
                 <tr >
                    <td class="tdname">联 系 人：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="B7" id="B7" value="${enterpriseInfo.contact}" />
                    </td>
                    <td class="tdname">电   话：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="B8" id="B8" value="${enterpriseInfo.cellPhone}" />
                    </td>                    
                </tr>
                <tr >
                    <td class="tdname">手    机：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="B9" id="B9" value="${enterpriseInfo.mobilePhone}" />
                    </td>
                    <td class="tdname">传   真：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="B10" id="B10" value="${enterpriseInfo.fax}" />
                    </td>                    
                </tr>
                <tr >
                    <td class="tdname">电子邮箱：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="B11" id="B11" value="${enterpriseInfo.email}" />
                    </td>
                    <td class="tdname">开户银行：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="B12" id="B12" value="${enterpriseInfo.bank}" />
                    </td>                    
                </tr>
                <tr >
                    <td class="tdname">信用等级：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="B13" id="B13" value="${enterpriseInfo.creditRating}" />
                    </td>
                    <td class="tdname">账户：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="B14" id="B14" value="${enterpriseInfo.account}" />
                    </td>                    
                </tr>
                 <tr >
                    <td class="tdname">单位性质：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="B15" id="B15" value="${enterpriseInfo.property}" />
                    </td>
                    <td class="tdname">企业规模：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="B16" id="B16" value=" ${enterpriseInfo.size}" />
                    </td>                    
                </tr>
                </table>
                
<!-- 企业主要股东  -->              
                <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA" >
                <tr >
          
	   			<td  class="tdname" rowspan="5" style="width:45%" >企业主要股东</td>
	   			</tr>
	   			 <tr >
	   			 	<th class="tdname">投资类型</th>
                    <th class="tdname">企业主要股东</th>                    
                    <th class="tdname">投资比例</th>
                </tr>
                <tr >
                	<td class="tdname">
                		 <input class="easyui-textbox mydatebox" type="text" name="B17" id="B17" value="${shareHolers[0].investType}" />
                	</td>
                    <td class="tdname">
                     	<input class="easyui-textbox mydatebox" type="text" name="B18" id="B18" value="${shareHolers[0].name}"/>
                    </td>                    
                    <td class="tdcontent2" >
                 		<input class="easyui-textbox mydatebox" type="text" name="B19" id="B19" value="${shareHolers[0].percentage}"/>
                    </td>
                    
                </tr>
                <tr >
                	<td class="tdname">
                		 <input class="easyui-textbox mydatebox" type="text" name="B20" id="B20" value="${shareHolers[1].investType}" />
                	</td>
                    <td class="tdname">
                     	<input class="easyui-textbox mydatebox" type="text" name="B21" id="B21" value="${shareHolers[1].name}" />
                    </td>                    
                    <td class="tdcontent2" >
                 		<input class="easyui-textbox mydatebox" type="text" name="B22" id="B22" value="${shareHolers[1].percentage}" />
                    </td>
                    
                </tr>
                <tr >
                	<td class="tdname">
                		 <input class="easyui-textbox mydatebox" type="text" name="B23" id="B23" value="${shareHolers[2].investType}" />
                	</td>
                    <td class="tdname">
                     	<input class="easyui-textbox mydatebox" type="text" name="B24" id="B24" value="${shareHolers[2].name}" />
                    </td>                    
                    <td class="tdcontent2" >
                 		<input class="easyui-textbox mydatebox" type="text" name="B25" id="B25" value="${shareHolers[2].percentage}" />
                    </td>
                    
                </tr>
                </table>
                
                
<!-- 注册时间     -->
             <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA" >
	   			<tr >
	   			 	<td class="tdname" >注册时间</td>
                    <td class="tdname" colspan="3">
                    	<input class="easyui-datebox mydatebox" type="text" name="B26" id="B26" editable="false"  panelHeight="260" panelWidth="200" value="${enterpriseInfo.registrationTime}">
                    </td>                     
                    <td class="tdname">注册资金</td>                    
                    <td class="tdname" colspan="3">
                    	<input class="easyui-textbox mydatebox" type="text" name="B27" id="B27" value="${enterpriseInfo.registrationMoney}" />
                    </td>
               
                </tr>
                <tr >
                	<td class="tdname" rowspan="2">单位负责人情况</td>
                    <td class="tdname" >姓名</td>                    
                    <td class="tdname">性别</td>
                    <td class="tdname">出生日期</td>
                    <td class="tdname">最高学历</td>                    
                    <td class="tdname">身份证号码</td>
                    <td class="tdname">固定电话</td>                    
                    <td class="tdname">移话动电话</td>
                    
                </tr>
                
                 <tr >
                    <td class="tdname1" >
                    	<input class="easyui-textbox mydatebox1" type="text" name="B28" id="B28" value="${peopleInCharge.name}"/>
                    </td>                    
                    <td class="tdname1">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B29" id="B29" value="${peopleInCharge.gender}"/>
                    </td>
                    <td class="tdname1">
                    	<input class="easyui-datebox mydatebox1" type="text" name="B30" id="B30" editable="false" value="${peopleInCharge.birthday}"/>
					</td>
                    <td class="tdname1">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B31" id="B31" value="${peopleInCharge.education}" />
                    </td>                    
                    <td class="tdname1">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B32" id="B32" value="${peopleInCharge.idCard}"/>
                    </td>
                    <td class="tdname1">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B33" id="B33" value="${peopleInCharge.cellPhone}"/>
                    </td>                    
                    <td class="tdname1">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B34" id="B34" value="${peopleInCharge.mobilePhone}" />
                    </td>
                    
 				</tr>
 				
                <tr >
                	<td class="tdname1" rowspan="2">单位人员</td>
                    <td class="tdname1" rowspan="2">
                   		<input class="easyui-textbox mydatebox1" type="text" name="B35" id="B35" value="${enterpriseInfo.peoleNumber}"/>
                    </td>                    
                    <td class="tdname1">大专以上技术人员</td>
                    <td class="tdname1">
						<input class="easyui-textbox mydatebox1" type="text" name="B36" id="B36" value="${enterpriseInfo.juniorCollege}"/>
					</td>
                    <td class="tdname1">博士</td>                    
                    <td class="tdname1">
                   	 	<input class="easyui-textbox mydatebox1" type="text" name="B37" id="B37" value="${enterpriseInfo.doctor}"/>
                    </td>
                    <td class="tdname1">硕士</td>                    
                    <td class="tdname1">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B38" id="B38" value="${enterpriseInfo.master}"/>
                    </td>
                    
                </tr>
                <tr >
                	
                    <td class="tdname1" >高级职称</td>                    
                    <td class="tdname1">
						<input class="easyui-textbox mydatebox1" type="text" name="B39" id="B39" value="${enterpriseInfo.highPosition}"/>
					</td>
                    <td class="tdname1">中级职称</td>
                    <td class="tdname1">
						<input class="easyui-textbox mydatebox1" type="text" name="B40" id="B40" value="${enterpriseInfo.midPostion}"/>
					</td>                    
                    <td class="tdname1">留学人员</td>
                    <td class="tdname1">
						<input class="easyui-textbox mydatebox1" type="text" name="B41" id="B41" value="${enterpriseInfo.overseas}" />
					</td>                    
 
                </tr>
              
             </table>
                
           
           
                
<!-- 近两年企业财务状况   -->     

       
            <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                <tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;近两年企业财务状况</td>
	   		    </tr>
	   			 <tr >
	   			 
                 <th style="width:200px;" class="tdname3">
					<div class="out" style="font-size:14px">
						<b>时&nbsp;&nbsp;间</b> <em>指&nbsp;&nbsp;标</em>
					</div>
				</th>
                    <th class="tdname2"> 前 年:&nbsp;&nbsp;<input class="easyui-textbox mydatebox2" type="text" name="B42" id="B42" value="${yearBeforeLastYear.year}"/>
                    </th>
                    <th class="tdname2">上 一 年度:&nbsp;&nbsp;<input class="easyui-textbox mydatebox2" type="text" name="B43" id="B43" value="${lastyear.year}" /></th>                   
                </tr>
                
                
				<tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">总 产 值（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B44" id="B44" value="${yearBeforeLastYear.totalProduction}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B45" id="B45" value="${lastyear.totalProduction}"/>
                	</td>
                	
                </tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">总 销 售 额（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B46" id="B46" value="${yearBeforeLastYear.totalSales}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B47" id="B47" value="${lastyear.totalSales}"/>
                	</td>
                	
                </tr>
                
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">净 利 润（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B48" id="B48" value="${yearBeforeLastYear.profit}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B49" id="B49" value="${lastyear.profit}"/>
                	</td>
                
                </tr>
                
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">纳 税 总 额（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B50" id="B50" value="${yearBeforeLastYear.totalTaxPayment}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B51" id="B51" value="${lastyear.totalTaxPayment}"/>
                	</td>
                	
                </tr>
                
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">&nbsp;&nbsp;企 业 所 得 税（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B52" id="B52" value="${yearBeforeLastYear.corporateTax}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B53" id="B53" value="${lastyear.corporateTax}"/>
                	</td>
                	
                </tr>
                <tr> 
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">&nbsp;&nbsp;增 值 税（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B54" id="B54" value="${yearBeforeLastYear.valueAddedTax}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B55" id="B55" value="${lastyear.valueAddedTax}"/>
                	</td>
                	
                </tr>
                
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">&nbsp;&nbsp;营 业 税（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B56" id="B56" value="${yearBeforeLastYear.salesTax}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B57" id="B57" value="${lastyear.salesTax}"/>
                	</td>
                	
                
                </tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">&nbsp;&nbsp;个 人 所 得 税（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B58" id="B58" value="${yearBeforeLastYear.personalIncomeTax}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B59" id="B59" value="${lastyear.personalIncomeTax}"/>
                	</td>
                	
                
                </tr>
               <!--  <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">&nbsp;&nbsp;个 人 所 得 税（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B60" id="B60" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B61" id="B61" />
                	</td>
                	
                
                </tr> -->
                
                 <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">研 发 支 出 费 用（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B62" id="B62" value="${yearBeforeLastYear.RDexpense}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B63" id="B63" value="${lastyear.RDexpense}"/>
                	</td>
                	
                </tr>
                
          		<tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">支出费用总额（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B64" id="B64" value="${yearBeforeLastYear.totalExpenditure}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B65" id="B65" value="${lastyear.totalExpenditure}"/>
                	</td>
                	
                </tr>
                
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">创 汇 总 额 （ 万 美 元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B66" id="B66" value="${yearBeforeLastYear.foreignExchangeEarnings}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B67" id="B67" value="${lastyear.foreignExchangeEarnings}"/>
                	</td>
                	
                </tr>
                 <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">固 定 资 产 原 值（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B68" id="B68" value="${yearBeforeLastYear.fixedAssert}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B69" id="B69" value="${lastyear.fixedAssert}"/>
                	</td>
                	
                </tr>
                
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">总 资 产（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B70" id="B70" value="${yearBeforeLastYear.totalAssert}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B71" id="B71" value="${lastyear.totalAssert}"/>
                	</td>
                	
                </tr>
                
                 <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">总 负 债（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B72" id="B72" value="${yearBeforeLastYear.totalLiabilities}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B73" id="B73" value="${lastyear.totalLiabilities}"/>
                	</td>
                	
                </tr>
                
                 <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">净 资 产（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B74" id="B74" value="${yearBeforeLastYear.netAssert}"/>
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B75" id="B75" value="${lastyear.netAssert}"/>
                	</td>
                </tr>
                
                
             </table>           
                
                
<!-- 主营业务、主要产品与服务                 -->

              <table class="persional" align="center" border="1"  cellpadding="0"  cellspacing="0"  bordercolor="#DEE5EA">
	   			 <tr>
	   			 <td class="tdname3" >主营业务、主要产品与服务</td>                    
                    <td class="tdname" colspan="5">
                    	<input class="easyui-textbox mydatebox3" type="text" name="B76" id="B76" value="${enterpriseInfo.productAndService}"/>
                    </td> 
                 </tr> 
                 
                <tr>
                    <td class="tdname">单位性质</td>                    
                    <td class="tdname" colspan="5">
                    	<span><input class="easyui-checktbox mydatebox4" type="radio" name="B77" id="B77" />高新技术企业  </span>
                    	<span><input class="easyui-checktbox mydatebox4" type="radio" name="B77" id="B77" />技术先进型服务企业     </span>
                    	<span><input class="easyui-checktbox mydatebox4" type="radio" name="B77" id="B77"/>上市公司   </span>
                    </td>   
                 
                </tr>
                
                 <tr >
                    <td class="tdname" rowspan="2">拥有知识产权（项）</td>                    
                    <td class="tdname">发明专利</td>   
                    <td class="tdname">实用新型</td>
                    <td class="tdname">软件著作权</td>                    
                    <td class="tdname">PCT专利</td>   
                    <td class="tdname">其它</td>
                    
                </tr>
                
                  <tr >
                                  
                    <td class="tdname">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B78" id="B78" value="${enterpriseInfo.patents}"/>
                    </td>   
                    <td class="tdname">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B79" id="B79" value="${enterpriseInfo.utilityModel}"/>
                    </td>
                    <td class="tdname">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B80" id="B80" value="${enterpriseInfo.utilityModel}"/>
                    </td>              
                   <td class="tdname">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B81" id="B81" value="${enterpriseInfo.utilityModel}"/>
                    </td>
                   <td class="tdname">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B82" id="B82" value="${enterpriseInfo.others}"/>
                    </td>
                </tr>
               
                 
                <tr >
                    <td class="tdname">创新基地建设情况</td>                    
                    <td class="tdname" colspan="5">
						<textarea id="B83" name="B83" cols="12" rows="4" style="width:90%;height:90%;" >${enterpriseInfo.innovationBaseConstruction}</textarea>
					</td>   
                  
                </tr>
                
                  <tr >
                    <td class="tdname">获科技计划支持情况</td>                    
                    <td class="tdname" colspan="5">
                     <textarea id="B84" name="B84" cols="12" rows="4" style="width:90%;height:90%;" >${enterpriseInfo.supportedByST}</textarea>
						
					</td>   
                            
                </tr>
                
                  <tr >
                    <td class="tdname">获科技奖励及认定情况</td>                    
                    <td class="tdname" colspan="5">
                     <textarea id="B85" name="B85" cols="12" rows="4" style="width:90%;height:90%;">${enterpriseInfo.techAward}</textarea>
						
					</td>   
                            
                </tr>

              </table>
        
          </div>
      
       </div>
       
       
       
<!-- 项目基本情况      -->  
       <div title="项目基本情况" style="width:100%">
	   <div style="width:100%">
	   	
	   	<input type="hidden" name="sort" id="sort">
	   	
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                <tr >
                    <td class="tdname">项目名称</td>                    
                    <td class="tdcontent1" colspan="3">
                      <input class="easyui-textbox mydatebox" type="text" name="C1" id="C1" value="${detail.title}"/>
                    </td>
                    <td class="tdname">计划类别</td>
                    <td class="tdcontent2" colspan="2">
                        <input class="easyui-textbox mydatebox5" type="text" name="C2" id="C2" value="${detail.type}"/>
                    </td>
                    
                    
                </tr>
        
          		<tr >
                    <td rowspan="5" class="tdname">项目负责人情况</td>
                    <td class="tdname">姓名</td>
                    <td class="tdname"> <input class="easyui-textbox mydatebox1" type="text" name="C3" id="C3" value="${leader.name}"/> </td>
                    <td class="tdname">性别</td>
                    <td class="tdname"> <input class="easyui-textbox mydatebox1" type="text" name="C4" id="C4" value="${leader.gender}"/></td>
                    <td class="tdname">出生日期</td>
                    <td class="tdname"> <input class="easyui-datebox mydatebox1" type="text" name="C5" id="C5" editable="false" value="${leader.birthday}"/></td>
                </tr>
                
                
                <tr>
                    <td  class="tdname">职称</td>
                    <td  class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C6" id="C6" value="${leader.title}"/></td>
                    <td  class="tdname">证件类型</td>
                    <td  class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C7" id="C7" value="${leader.cardType}"/></td>
                    <td  class="tdname">证件号码</td>
                    <td  class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C8" id="C8" value="${leader.cardnumber}"/></td>
                </tr>
                
                
                 
                 <tr>
                	<td class="tdname">职务</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C9" id="C9" value="${leader.position}"/></td>
                    <td class="tdname">学历</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C10" id="C10" value="${leader.degree}"/></td>
                    <td class="tdname">学位</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C11" id="C11" value="${leader.qualifications}"/></td>
                          
                </tr>      
                 <tr>
                	<td class="tdname">专业</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C12" id="C12" value="${leader.major}"/></td>
                    <td class="tdname">固定电话</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C13" id="C13" value="${leader.cellPhone}"/></td>
                    <td class="tdname">传真</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C14" id="C14" value="${leader.fax}"/></td>
                          
                </tr>      
                
                    
             <tr>             
             	 	<td class="tdname">移动电话</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C15" id="C15" value="${leader.mobilePhone}"/></td>
                    <td class="tdname">电子邮箱</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C16" id="C16" value="${leader.email}"/></td>
                    <td class="tdname"></td>
                    <td class="tdname"></td>
             </tr>
             
             
                
             <tr>
             	 <td  class="tdname" colspan="7">项目主要参加人员</td>
             </tr>
             
             
             <tr>
	             <td class="tdname">姓名</td>
                 <td class="tdname">性别</td>
                 <td class="tdname">年龄</td>
                 <td class="tdname">职务、职称</td>
                 <td class="tdname">业务专业</td>
                 <td class="tdname">承担任务</td>
                 <td class="tdname">所在单位</td>
	        </tr>
	        <tr>
	             <td class="tdname">
	             	<input class="easyui-textbox mydatebox1" type="text" name="C17" id="17c" value="${members[0].name}"/>
	             </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C18" id="C18" value="${members[0].gender}"/>
                 </td>
         
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C19" id="C19" value="${members[0].age}"/>
                 </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C20" id="C20" value="${members[0].position}"/>
				 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C21" id="C21" value="${members[0].major}"/>
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C22" id="C22" value="${members[0].task}"/>
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C23" id="C23" value="${members[0].company}"/>
                 </td>
                 
	        </tr>
	          
	        <tr>
	             <td class="tdname">
	             	<input class="easyui-textbox mydatebox1" type="text" name="C24" id="C24" value="${members[1].name}"/>
	             </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C25" id="C25" value="${members[1].gender}"/>
                 </td>
         
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C26" id="C26" value="${members[1].age}"/>
                 </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C27" id="C27" value="${members[1].position}"/>
				 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C28" id="C28" value="${members[1].major}"/>
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C29" id="C29" value="${members[1].task}"/>
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C30" id="C30" value="${members[1].company}"/>
                 </td>
                 
	        </tr>
	        
	        <tr>
	             <td class="tdname">
	             	<input class="easyui-textbox mydatebox1" type="text" name="C31" id="C31" value="${members[2].name}"/>
	             </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C32" id="C32" value="${members[2].gender}"/>
                 </td>
         
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C33" id="C33" value="${members[2].age}"/>
                 </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C34" id="C34" value="${members[2].position}"/>
				 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C35" id="C35" value="${members[2].major}"/>
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C36" id="C36" value="${members[2].task}"/>
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C37" id="C37" value="${members[2].company}"/>
                 </td>
                 
	        </tr>
	        
	        <tr>
	             <td class="tdname">
	             	<input class="easyui-textbox mydatebox1" type="text" name="C38" id="C38" value="${members[3].name}"/>
	             </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C39" id="C39" value="${members[3].gender}"/>
                 </td>
         
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C40" id="C40" value="${members[3].age}"/>
                 </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C41" id="C41" value="${members[3].position}"/>
				 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C42" id="C42" value="${members[3].major}"/>
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C43" id="C43" value="${members[3].task}"/>
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C44" id="C44" value="${members[3].company}"/>
                 </td>
                 
	        </tr>
	        
	        <tr>
	             <td class="tdname">
	             	<input class="easyui-textbox mydatebox1" type="text" name="C45" id="C45" value="${members[4].name}"/>
	             </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C46" id="C46" value="${members[4].gender}"/>
                 </td>
         
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C47" id="C47" value="${members[4].age}"/>
                 </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C48" id="C48" value="${members[4].position}"/>
				 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C49" id="C49" value="${members[4].major}"/>
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C50" id="C50" value="${members[4].task}"/>
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" name="C51" id="C51" value="${members[4].company}"/>
                 </td>
	        
                 
	        </tr>          
	        
           </table>
           
           
<!-- 项目现处阶段    -->        
           <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
             <tr>
             <td >项目现处阶段</td>
             <td colspan="5" ><input class="easyui-textbox mydatebox" type="text" name="C52" id="C52" value="${detail.state}"/></td>
             </tr>
             
             <tr>
              <td class="tdname">技术领域</td>
              <td class="tdname"><input class="easyui-textbox mydatebox" type="text" name="C53" id="C53" value="${detail.field}"/></td>
              <td class="tdname">行业领域</td>
              <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C54" id="C54" value="${detail.industryField}"/></td>
              <td class="tdname">项目对应学科代码</td>
              <td class="tdname"><input class="easyui-textbox mydatebox5" type="text" name="C55" id="C55" value="${detail.subjectCode}"/></td>
             </tr>
               <tr>
               <td class="tdname">项目来源</td>
               <td class="tdname" colspan="2"><input class="easyui-textbox mydatebox" type="text" name="C56" id="C56" value="${detail.projectOrigin}"/>
               </td>
               <td class="tdname">技术来源</td>
               <td class="tdname" colspan="2"><input class="easyui-textbox mydatebox" type="text" name="C57" id="C57" value="${detail.techOrigin}"/>
             </td>
           
             </tr>
              <tr>
               <td class="tdname" >开发形式</td>
          	 <td class="tdname"  colspan="2"><input class="easyui-textbox mydatebox" type="text" name="C58" id="C58" value="${detail.developType}"/>
             </td>
             
               <td class="tdname">产品采标形式</td>
 				<td class="tdname" colspan="2"><input class="easyui-textbox mydatebox" type="text" name="C59" id="C59" value="${detail.productAdoption}"/>
                </td>           
             </tr>
            
              <tr>
               <td class="tdname">项目知识产权情况</td>
              <td colspan="5" class="tdname">
               <textarea name="C60" id="C60" cols="12" rows="4" style="width:90%;height:90%;" >${detail.IPRstatement}</textarea>
              </td>
             </tr>
             
             <tr>
               <td class="tdname">科技奖励获奖情况</td>
              <td colspan="5" class="tdname">
               <textarea name="C61" id="C61" cols="12" rows="4" style="width:90%;height:90%;">${detail.award}</textarea>
              </td>
             </tr>
             
             <tr>
               <td class="tdname" class="tdname">技术权益及使用方式说明</td>
              <td colspan="5" class="tdname">
               <textarea name="C62" id="C62" cols="12" rows="4" style="width:90%;height:90%;" >${detail.techRightsandUsage}</textarea>
              </td>
             </tr>
            
            
            <tr>
             
               <td class="tdname">项目执行期</td>
          		<td class="tdcontent2" colspan="2">
                  <input class="easyui-datebox mydatebox" type="text" name="C63" id="C63" editable="false" panelHeight="260" panelWidth="200" value="${detail.startTime}">
               </td>
               <td class="tdname"> 至</td>
          	   <td class="tdcontent2" colspan="2">
                  <input class="easyui-datebox mydatebox" type="text" name="C64" id="C64" editable="false" panelHeight="260" panelWidth="200"value="${detail.endtime}" >
               </td>
            
             </tr>
             
              <tr>
               <td class="tdname">合作单位1</td>
           	   <td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" name="C65" id="C65" value="${corporators[0].name}"/></td>
             
               <td class="tdname">组织机构代码</td>
               <td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" name="C66" id="C66" value="${corporators[0].companyCode}"/></td>
            </tr>
            
             <tr>
               <td class="tdname">负责人</td>
           		<td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" name="C67" id="C67" value="${corporators[0].peopleInCharge}"/></td>
             
               <td class="tdname">联系电话</td>
           		<td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" name="C68" id="C68" value="${corporators[0].phone}"/></td>
             </tr>
             
             
             <tr>
               <td class="tdname">合作单位2</td>
           		<td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" name="C69" id="C69" value="${corporators[1].name}"/></td>
             
               <td class="tdname">组织机构代码</td>
          		 <td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" name="C70" id="C70" value="${corporators[1].companyCode}"/></td>
	           </tr>
             <tr>
               <td class="tdname">负责人</td>
          		 <td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" name="C71" id="C71" value="${corporators[1].peopleInCharge}"/></td>
             
               <td class="tdname">联系电话</td>
           		<td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" name="C72" id="C72" value="${corporators[1].phone}"/></td>
             </tr>
            
             <tr>
              <td rowspan="4" class="tdname">国际科技合作信 息</td>
              <td colspan="1" class="tdname">合作协议类别及名称</td>   
              
              <td colspan="5" class="tdname"><input class="easyui-textbox mydatebox" type="text" name="C73" id="C73" value="${detail.corTypeAndName}"/></td>
             </tr>

              <tr>
              <td colspan="1" class="tdname">合作目标及外方投入</td>   
              <td colspan="5" class="tdname"><input class="easyui-textbox mydatebox" type="text" name="C74" id="C74" value="${detail.corGoalsandInvest}"/></td>
             </tr>
             
             	 <tr>
              <td colspan="1" class="tdname">合作外方机构及负责人</td>   
              <td colspan="5" class="tdname"><input class="easyui-textbox mydatebox" type="text" name="C75" id="C75" value="${detail.corDepartmentandPerson}"/></td>
             </tr>
            
                 
           	 <tr>
              <td colspan="1" class="tdname">电子邮箱与通信地址</td>   
              <td colspan="5" class="tdname"><input class="easyui-textbox mydatebox" type="text" name="C76" id="C76" value="${detail.corEmailandAddress}"/></td>
             </tr>
             
             
              <tr>
              <td rowspan="3" class="tdname">科技服务机构信息</td>
              <td colspan="1" class="tdname">服务方式</td>   
              
              <td colspan="5" class="tdname"><input class="easyui-textbox mydatebox" type="text" name="C77" id="C77" value="${detail.serviceType}"/></td>
             </tr>
             
             <tr>
              <td colspan="1" class="tdname">已经服务企业数量</td>   
           		<td colspan="1" class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C78" id="C78" value="${detail.serviceNumber}"/></td>
              <td colspan="2" class="tdname">项目完成预计服务企业数量</td>
          		 <td colspan="2" class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C79" id="C79" value="${detail.numberToserve}"/></td>
             </tr>
               <tr>
              <td colspan="1"class="tdname">已经提供服务种类或 平 台</td>   
           		<td colspan="1" class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C80" id="C80" value="${detail.servicetypeorplatform}"/></td>
              <td colspan="2"class="tdname">项目完成预计提供服务种类或平台</td>
          		 <td colspan="2" class="tdname"><input class="easyui-textbox mydatebox1" type="text" name="C81" id="C81" value="${detail.planServicetypeorplatform}"/></td>
             </tr>
              
                
            <tr>
             <td class="tdname">项 目 简介 及 总体 目 标</td>
             <td colspan="6" class="tdname">
             <textarea name="C82" id="C82" cols="12" rows="4" style="width:90%;height:90%;" >${detail.descriptionAndGoals}</textarea></td>
            </tr>
            
            <tr>
              <td class="tdname">主要研究内容及技术指 标</td>
             <td colspan="6" class="tdname">
             <textarea name="C83" id="C83" cols="12" rows="4" style="width:90%;height:90%;" >${detail.contentAndIndication}</textarea></td>
            </tr>
            
            
            <tr>
             <td class="tdname">主要创新点</td>
             <td colspan="6" class="tdname">
             <textarea name="C84" id="C84" cols="12" rows="4" style="width:90%;height:90%;" >${detail.createPoints}</textarea></td>
            </tr>
            
            
             <tr>
             <td class="tdname">工作基础</td>
             <td colspan="6" class="tdname">
             <textarea name="C85" id="C85" cols="12" rows="4" style="width:90%;height:90%;" >${detail.workBasis}</textarea></td>
            </tr>
            
            <tr>
             <td class="tdname">计划进度及阶段性目标</td>
             <td colspan="6" class="tdname">
             <textarea name="C86" id="C86" cols="12" rows="4" style="width:90%;height:90%;"  >${detail.schedule}</textarea></td>
            </tr>
             
           
           </table>
         
	   	</div>
	   	</div>
	   	
	   	
<!-- 项目投入资金预算（万元） -->	
   	
	  <div title="项目投入资金预算（万元）" style="width:100%">
	   <div style="width:100%">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                <tr>
                    <td class="tdname">预算科目名称</td>                    
                    <td class="tdcontent1-1">合计</td>
                    <td class="tdname">市财政经费</td>
                    <td class="tdcontent2-2">自筹经费</td>
                </tr>
               
                <tr>
                    <td class="tdname">一、经费支出合计</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D1" id="D1" value="${fromGov.total+fromSelf.total}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D2" id="D2" value="${fromGov.total}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D3" id="D3" value="${fromSelf.total}"/>
                    </td>            
                </tr>
               
                     
           <tr>
                    <td class="tdname">1、研发设备费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D4" id="D4" value="${fromGov.totalRDequimentFee+fromSelf.totalRDequimentFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D5" id="D5" value="${fromGov.totalRDequimentFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D6" id="D6" value="${fromSelf.totalRDequimentFee}"/>
                    </td>            
                </tr>
                <tr>
                    <td class="tdname">（1）购置研发设备费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D7" id="D7" value="${fromGov.equimentBuyFee+fromSelf.equimentBuyFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D8" id="D8" value="${fromGov.equimentBuyFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D9" id="D9" value="${fromSelf.equimentBuyFee}"/>
                    </td>            
                </tr>
                
              	 <tr>
                    <td class="tdname">（2）试制研发设备费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D10" id="D10" value="${fromGov.equimentMakeFee+fromSelf.equimentMakeFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D11" id="D11" value="${fromGov.equimentMakeFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D12" id="D12" value="${fromSelf.equimentMakeFee}"/>
                    </td>            
                </tr>
             	 <tr>
                    <td class="tdname">（3）软件系统开发费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D13" id="D13" value="${fromGov.softwareMakeFee+fromSelf.softwareMakeFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D14" id="D14" value="${fromGov.softwareMakeFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D15" id="D15" value="${fromSelf.softwareMakeFee}"/>
                    </td>            
                </tr>
             
               <tr>
                    <td class="tdname">2、合作研发费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D16" id="D16" value="${fromGov.corRDFee+fromSelf.corRDFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D17" id="D17" value="${fromGov.corRDFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D18" id="D18" value="${fromSelf.corRDFee}"/>
                    </td>            
                </tr>
             
              
               <tr>
                    <td class="tdname">（1）引进人才、团队费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D19" id="D19" value="${fromGov.peopleTeamFee+fromSelf.peopleTeamFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D20" id="D20" value="${fromGov.peopleTeamFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D21" id="D21" value="${fromSelf.peopleTeamFee}"/>
                    </td>            
                </tr>
               
               <tr>
                    <td class="tdname">（2）购置技术、专利及成果费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D22" id="D22" value="${fromGov.techPatentResBuyFee+fromSelf.techPatentResBuyFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D23" id="D23" value="${fromGov.techPatentResBuyFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D24" id="D24" value="${fromSelf.techPatentResBuyFee}"/>
                    </td>            
                </tr>
	        
	          
               <tr>
                    <td class="tdname">（3）产学研合作经费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D25" id="25" value="${fromGov.researchCooperationFee+fromSelf.researchCooperationFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D26" id="D26" value="${fromGov.researchCooperationFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D27" id="D27" value="${fromSelf.researchCooperationFee}"/>
                    </td>            
                </tr>
	        
	         <tr>
                    <td class="tdname">3、材料费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D28" id="D28" value="${fromGov.materialFee+fromSelf.materialFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D29" id="D29" value="${fromGov.materialFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D30" id="D30" value="${fromSelf.materialFee}"/>
                    </td>            
                </tr>
                
                 <tr>
                    <td class="tdname">4、测试化验加工费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D31" id="D31" value="${fromGov.testLabProcessingFee+fromSelf.testLabProcessingFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D32" id="D32" value="${fromGov.testLabProcessingFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D33" id="D33" value="${fromSelf.testLabProcessingFee}"/>
                    </td>            
                </tr>
                
                <tr>
                    <td class="tdname">5、燃料动力费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D34" id="D34" value="${fromGov.fuelPowerCost+fromSelf.fuelPowerCost}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D35" id="D35" value="${fromGov.fuelPowerCost}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D36" id="D36" value="${fromSelf.fuelPowerCost}"/>
                    </td>            
                </tr>
                
                <tr>
                    <td class="tdname">6、差旅费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D37" id="D37" value="${fromGov.travelFee+fromSelf.travelFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D38" id="D38" value="${fromGov.travelFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D39" id="D39" value="${fromSelf.travelFee}"/>
                    </td>            
                </tr>
                 <tr>
                    <td class="tdname">7、会议费 </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D40" id="D40" value="${fromGov.conferenceFee+fromSelf.conferenceFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D41" id="D41" value="${fromGov.conferenceFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D42" id="D42" value="${fromSelf.conferenceFee}"/>
                    </td>            
                </tr>
                
                <tr>
                    <td class="tdname">8、国际合作与交流费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D43" id="D43" value="${fromGov.cooperationAndExchangeFee+fromSelf.cooperationAndExchangeFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D44" id="D44" value="${fromGov.cooperationAndExchangeFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D45" id="D45" value="${fromSelf.cooperationAndExchangeFee}"/>
                    </td>            
                </tr>
                 <tr>
                    <td class="tdname">9、出版/文献/信息传播/知识产权事务费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D46" id="D46" value="${fromGov.publicationFee+fromSelf.publicationFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D47" id="D47" value="${fromGov.publicationFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D48" id="D48" value="${fromSelf.publicationFee}"/>
                    </td>            
                </tr>
                 <tr>
                    <td class="tdname">10、劳务费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D49" id="D49" value="${fromGov.serviceFee+fromSelf.serviceFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D50" id="D50" value="${fromGov.serviceFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D51" id="D51" value="${fromSelf.serviceFee}"/>
                    </td>            
                </tr>
                
                <tr>
                    <td class="tdname">11、专家咨询费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D52" id="D52" value="${fromGov.expertConsultationFee+fromSelf.expertConsultationFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D53" id="D53" value="${fromGov.expertConsultationFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D54" id="D54" value="${fromSelf.expertConsultationFee}"/>
                    </td>            
                </tr>
                
                 <tr>
                    <td class="tdname">12、管理费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D55" id="D55" value="${fromGov.managementFee+fromSelf.managementFee}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D56" id="D56" value="${fromGov.managementFee}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D57" id="D57" value="${fromSelf.managementFee}"/>
                    </td>            
                </tr>
                
                
                <tr>
                    <td class="tdname">二、经费来源合计</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D58" id="D58" value="${fromGov.totalSourcesFunds+fromSelf.totalSourcesFunds}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D59" id="D59" value="${fromGov.totalSourcesFunds}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D60" id="D60" value="${fromSelf.totalSourcesFunds}"/>
                    </td>            
                </tr>
                
                 <tr>
                    <td class="tdname">1、申请从市财政经费获得的资助</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D61" id="D61" value="${fromGov.applyFromGov+fromSelf.applyFromGov}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D62" id="D62" value="${fromGov.applyFromGov}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D63" id="D63" value="${fromSelf.applyFromGov}"/>
                    </td>            
                </tr>
                 <tr>
                    <td class="tdname">2、自筹经费来源</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D64" id="D64" value="${fromGov.selfFounding+fromSelf.selfFounding}"/>
                    </td>
                    <td class="tdname">				
                      <input class="easyui-textbox mydatebox5" type="text" name="D65" id="D65" value="${fromGov.selfFounding}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D66" id="D66" value="${fromSelf.selfFounding}"/>
                    </td>            
                </tr>
                
                <tr>
                    <td class="tdname">（1）其他财政拨款</td>
                    <td class="tdname">
                       <input class="easyui-textbox mydatebox5" type="text" name="D67" id="D67" value="${fromGov.otherFinancialAllocations+fromSelf.otherFinancialAllocations}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D68" id="D68" value="${fromGov.otherFinancialAllocations}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D69" id="D69" value="${fromSelf.otherFinancialAllocations}"/>
                    </td>            
                </tr>
                
                
                 <tr>
                    <td class="tdname">（2）单位自有货币资金</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D70" id="D70" value="${fromGov.ownFound+fromSelf.ownFound}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D71" id="D71" value="${fromGov.ownFound}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D72" id="D72" value="${fromSelf.ownFound}"/>
                    </td>            
                </tr>
                 <tr>
                    <td class="tdname">（3）其他资金</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D73" id="D73" value="${fromGov.otherFound+fromSelf.otherFound}"/>
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D74" id="D74" value="${fromGov.otherFound}"/>
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D75" id="D75" value="${fromSelf.otherFound}"/>
                    </td>            
                </tr>  
           

           </table>
 
 
<!--  其中：研发设备费预算明细表       -->    

           	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                <tr >
                <td class="tdname" colspan="6">其中：研发设备费预算明细表</td>
                </tr>
                
                <tr >
	                <td class="tdname">设备名称</td>
	                <td class="tdname">单价 (万元/台件)</td>
	                <td class="tdname">数量（台件）</td>
	                <td class="tdname">金额（单位：万元）</td>
	                <td class="tdname">购置设备生产国别与地区</td>
	                <td class="tdname">与项目关系</td>
                </tr>
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E1" id="E1" value="${equipments[0].name}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E2" id="E2" value="${equipments[0].singlePrice}"/>
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E3" id="E3" value="${equipments[0].number}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E4" id="E4" value="${equipments[0].totalPrice}"/>
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E5" id="E6" value="${equipments[0].location}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E6" id="E6" value="${equipments[0].relationship}"/>
                </td>   
                </tr>
                
                <tr>
                
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E7" id="E7" value=" ${equipments[1].name}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E8" id="E8" value="${equipments[1].singlePrice}"/>
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E9" id="E9" value="${equipments[1].number}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E10" id="E10" value="${equipments[1].totalPrice}"/>
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E11" id="E11" value="${equipments[1].location}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E12" id="E12" value="${equipments[1].relationship}"/>
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E13" id="E13" value="${equipments[2].name}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E14" id="E14" value="${equipments[2].singlePrice}"/>
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E15" id="E15" value="${equipments[2].number}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E16" id="E16" value="${equipments[2].totalPrice}"/>
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E17" id="E17" value="${equipments[2].location}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E18" id="E18" value="${equipments[2].relationship}"/>
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E19" id="E19" value=" ${equipments[3].name}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E20" id="E20" value="${equipments[3].singlePrice}"/>
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E21" id="E21" value="${equipments[3].number}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E22" id="E22" value="${equipments[3].totalPrice}"/>
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E23" id="E23" value="${equipments[3].location}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E24" id="E24" value="${equipments[3].relationship}"/>
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E25" id="E25" value="${equipments[4].name}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E26" id="E26" value="${equipments[4].singlePrice}"/>
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E27" id="E27" value="${equipments[4].number}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E28" id="E28" value="${equipments[4].totalPrice}"/>
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E29" id="E29" value="${equipments[4].location}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E30" id="E30" value="${equipments[4].relationship}"/>
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E31" id="E31" value="${equipments[5].name}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E32" id="E32" value="${equipments[5].singlePrice}"/>
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E33" id="E33" value="${equipments[5].number}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E34" id="E34" value="${equipments[5].totalPrice}"/>
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E35" id="E35" value="${equipments[5].location}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E36" id="E36" value="${equipments[5].relationship}"/>
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E37" id="E37" value="${equipments[6].name}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E38" id="E38" value="${equipments[6].singlePrice}"/>
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E39" id="E39" value="${equipments[6].number}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E40" id="E40" value="${equipments[6].totalPrice}"/>
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E41" id="E41" value="${equipments[6].location}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E42" id="E42" value="${equipments[6].relationship}"/>
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E43" id="E43" value="${equipments[7].name}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E44" id="E44" value="${equipments[7].singlePrice}"/>
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E45" id="E45" value="${equipments[7].number}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E46" id="E46" value="${equipments[7].totalPrice}"/>
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E47" id="E47" value="${equipments[7].location}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E48" id="E48" value="${equipments[7].relationship}"/>
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E49" id="E49" value="${equipments[8].name}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E50" id="E50" value="${equipments[8].singlePrice}"/>
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E51" id="E51" value="${equipments[8].number}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E52" id="E52" value="${equipments[8].totalPrice}"/>
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E53" id="E53" value="${equipments[8].location}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E54" id="E54" value="${equipments[8].relationship}"/>
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E55" id="E55" value="${equipments[9].name}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E56" id="E56" value="${equipments[9].singlePrice}"/>
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E57" id="E57" value="${equipments[9].number}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E58" id="E58" value="${equipments[9].totalPrice}"/>
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E59" id="E59" value="${equipments[9].location}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E60" id="E60" value="${equipments[9].relationship}"/>
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E61" id="E61" value="${equipments[10].name}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E62" id="E62" value="${equipments[10].singlePrice}"/>
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E63" id="E63" value="${equipments[10].number}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E64" id="E64" value="${equipments[10].totalPrice}"/>
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E65" id="E65" value="${equipments[10].location}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E66" id="E66" value="${equipments[10].relationship}"/>
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E67" id="E67" value="${equipments[11].name}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E68" id="E68" value="${equipments[11].singlePrice}"/>
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E69" id="E69" value="${equipments[11].number}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E70" id="E70" value="${equipments[11].totalPrice}"/>
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E71" id="E71" value="${equipments[11].location}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E72" id="E72" value="${equipments[11].relationship}"/>
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">累计：</td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E73" id="E73" value="${equipments[12].name}"/>
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E74" id="E74" value="${equipments[12].singlePrice}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E75" id="E75" value="${equipments[12].number}"/>
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E76" id="E76" value="${equipments[12].totalPrice}"/>
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E77" id="E77" value="${equipments[12].location}"/>
                </td>   
                </tr>
           </table>
         
	   	</div>
	   	</div>
	   	
	   	
	  <div title="附件清单" style="width:100%">
	   <div style="width:100%">	   
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">                 
             <tr>             
            	 <td  align="center" height="400px" >
	            	 <div class="tdcontent4">
		               <textarea id="F1" name="F1" cols="12" rows="6" style="width:90%;height:90%;" >${detail.fujianDescription}</textarea>
		             </div>
		         </td>
             </tr>
           
             <tr>
	             <td align="center" >
	             	<div style="margin-top:20px; left:40%; margin-bottom:20px;float:left; position:relative" ><a href="javascript:void(document.Form1.submit())" style="height:35px;width:70px;font-size:16px;" class="easyui-linkbutton button" onclick="return sub();">提&nbsp;&nbsp;交</a>
	             	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <a href="javascript:void(document.Form1.submit())" style="height:35px;width:70px;font-size:16px" class="easyui-linkbutton button" onclick="return save();">保&nbsp;&nbsp;存</a></div>
		            <div style="margin-top:20px; margin-bottom:20px;float:right; position:relative; right:20px"><a href="javascript:void(document.Form1.submit())" style="height:35px;width:100px;font-size:16px" class="easyui-linkbutton button" >导出为word</a></div>
		            
		        </td>
	        </tr>
         
         
           </table>
         
	   	</div>
	   	</div>
	   	
	   	
	   	   	<div title="评审结果" style="width:100%" id="reviewresult">
       			<div style="width:100%">
       			<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA"> 
       			<tr>
             	 <td  class="tdname" align="center" >评审结果</td>
            	 <td  align="center" height="100px" colspan="3">
	            	 <div style="word-wrap:break-word;word-break:break-all;margin:0 auto;width:95%;">
	     					<pre style="width:100%;white-space:pre-wrap; font-size:16px"></pre>
	    				 </div>
		              
             </td>
             </tr>           
       			 <tr>
             	 <td  class="tdname" align="center" >主要问题评述</td>
            	 <td  align="center" height="400px" colspan="3">
	            	 <div style="word-wrap:break-word;word-break:break-all;margin:0 auto;width:95%;">
	     					<pre style="width:100%;white-space:pre-wrap; font-size:16px"></pre>
	    				 </div>
		             
             </td>
             </tr>
               
             </table>
       			</div>
       	</div>
	</div>
	 </form>
   </div>   
 	     
 </div>
</body>
</html>
               
               