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
	var A3="<%=ii.getA3() %>";
	var A4="<%=ii.getA4() %>";
	var A5="<%=ii.getA5() %>";
	var A6="<%=ii.getA6() %>";
	var A7="<%=ii.getA7() %>";
	var A8="<%=ii.getA8() %>";
	var A9="<%=ii.getA9() %>";
	var A111213="<%=ii.getA111213() %>";
	
	var mydata= new Array([86]);
	mydata[1]="<%=ii.getB1() %>";
	mydata[2]="<%=ii.getB2() %>";
	mydata[3]="<%=ii.getB3() %>";
	mydata[4]="<%=ii.getB4() %>";
	mydata[5]="<%=ii.getB5() %>";
	mydata[6]="<%=ii.getB6() %>";
	mydata[7]="<%=ii.getB7() %>";
	mydata[8]="<%=ii.getB8() %>";
	mydata[9]="<%=ii.getB9() %>";
	mydata[10]="<%=ii.getB10() %>";
	mydata[11]="<%=ii.getB11() %>";
	mydata[12]="<%=ii.getB12() %>";
	mydata[13]="<%=ii.getB13() %>";
	mydata[14]="<%=ii.getB14() %>";
	mydata[15]="<%=ii.getB15() %>";
	mydata[16]="<%=ii.getB16() %>";
	mydata[17]="<%=ii.getB17() %>";
	mydata[18]="<%=ii.getB18() %>";
	mydata[19]="<%=ii.getB19() %>";
	mydata[20]="<%=ii.getB20() %>";
	mydata[21]="<%=ii.getB21() %>";
	mydata[22]="<%=ii.getB22() %>";
	mydata[23]="<%=ii.getB23() %>";
	mydata[24]="<%=ii.getB24() %>";
	mydata[25]="<%=ii.getB25() %>";
	mydata[26]="<%=ii.getB26() %>";
	mydata[27]="<%=ii.getB27() %>";
	mydata[28]="<%=ii.getB28() %>";
	mydata[29]="<%=ii.getB29() %>";
	mydata[30]="<%=ii.getB30() %>";
	mydata[31]="<%=ii.getB31() %>";
	mydata[32]="<%=ii.getB32() %>";
	mydata[33]="<%=ii.getB33() %>";
	mydata[34]="<%=ii.getB34() %>";
	mydata[35]="<%=ii.getB35() %>";
	mydata[36]="<%=ii.getB36() %>";
	mydata[37]="<%=ii.getB37() %>";
	mydata[38]="<%=ii.getB38() %>";
	mydata[39]="<%=ii.getB39() %>";
	mydata[40]="<%=ii.getB40() %>";
	mydata[41]="<%=ii.getB41() %>";
	mydata[42]="<%=ii.getB42() %>";
	mydata[43]="<%=ii.getB43() %>";
	mydata[44]="<%=ii.getB44() %>";
	mydata[45]="<%=ii.getB45() %>";
	mydata[46]="<%=ii.getB46() %>";
	mydata[47]="<%=ii.getB47() %>";
	mydata[48]="<%=ii.getB48() %>";
	mydata[49]="<%=ii.getB49() %>";
	mydata[50]="<%=ii.getB50() %>";
	mydata[51]="<%=ii.getB51() %>";
	mydata[52]="<%=ii.getB52() %>";
	mydata[53]="<%=ii.getB53() %>";
	mydata[54]="<%=ii.getB54() %>";
	mydata[55]="<%=ii.getB55() %>";
	mydata[56]="<%=ii.getB56() %>";
	mydata[57]="<%=ii.getB57() %>";
	mydata[58]="<%=ii.getB58() %>";
	mydata[59]="<%=ii.getB59() %>";
	mydata[60]="<%=ii.getB60() %>";
	mydata[61]="<%=ii.getB61() %>";
	mydata[62]="<%=ii.getB62() %>";
	mydata[63]="<%=ii.getB63() %>";
	mydata[64]="<%=ii.getB64() %>";
	mydata[65]="<%=ii.getB65() %>";
	mydata[66]="<%=ii.getB66() %>";
	mydata[67]="<%=ii.getB67() %>";
	mydata[68]="<%=ii.getB68() %>";
	mydata[69]="<%=ii.getB69() %>";
	mydata[70]="<%=ii.getB70() %>";
	mydata[71]="<%=ii.getB71() %>";
	mydata[72]="<%=ii.getB72() %>";
	mydata[73]="<%=ii.getB73() %>";
	mydata[74]="<%=ii.getB74() %>";
	mydata[75]="<%=ii.getB75() %>";
	mydata[76]="<%=ii.getB76() %>";
	mydata[77]="<%=ii.getB77() %>";
	mydata[78]="<%=ii.getB78() %>";
	mydata[79]="<%=ii.getB79() %>";
	mydata[80]="<%=ii.getB80() %>";
	mydata[81]="<%=ii.getB81() %>";
	mydata[82]="<%=ii.getB82() %>";
	mydata[83]="<%=ii.getB83() %>";
	mydata[84]="<%=ii.getB84() %>";
	mydata[85]="<%=ii.getB85() %>";
	
	$("#A3").textbox("setValue", A3);
	$("#A4").textbox("setValue", A4);
	$("#A5").textbox("setValue", A5);
	$("#A6").textbox("setValue", A6);
	$("#A7").textbox("setValue", A7);
	$("#A8").textbox("setValue", A8);
	$("#A9").textbox("setValue", A9);
	$("#A10").textbox("setValue",A10);
	$("#A111213").datebox("setValue", A111213); 
	
	for(i=1;i<=85;i++){
		$("#B"+i).textbox("setValue", mydata[i]);
	}
	
	
	var mydata= new Array([62]);
	mydata[1]="<%=ii.getC1() %>";
	mydata[2]="<%=ii.getC2() %>";
	mydata[3]="<%=ii.getC3() %>";
	mydata[4]="<%=ii.getC4() %>";
	mydata[5]="<%=ii.getC5() %>";
	mydata[6]="<%=ii.getC6() %>";
	mydata[7]="<%=ii.getC7() %>";
	mydata[8]="<%=ii.getC8() %>";
	mydata[9]="<%=ii.getC9() %>";
	mydata[10]="<%=ii.getC10() %>";
	mydata[11]="<%=ii.getC11() %>";
	mydata[12]="<%=ii.getC12() %>";
	mydata[13]="<%=ii.getC13() %>";
	mydata[14]="<%=ii.getC14() %>";
	mydata[15]="<%=ii.getC15() %>";
	mydata[16]="<%=ii.getC16() %>";
	mydata[17]="<%=ii.getC17() %>";
	mydata[18]="<%=ii.getC18() %>";
	mydata[19]="<%=ii.getC19() %>";
	mydata[20]="<%=ii.getC20() %>";
	mydata[21]="<%=ii.getC21() %>";
	mydata[22]="<%=ii.getC22() %>";
	mydata[23]="<%=ii.getC23() %>";
	mydata[24]="<%=ii.getC24() %>";
	mydata[25]="<%=ii.getC25() %>";
	mydata[26]="<%=ii.getC26() %>";
	mydata[27]="<%=ii.getC27() %>";
	mydata[28]="<%=ii.getC28() %>";
	mydata[29]="<%=ii.getC29() %>";
	mydata[30]="<%=ii.getC30() %>";
	mydata[31]="<%=ii.getC31() %>";
	mydata[32]="<%=ii.getC32() %>";
	mydata[33]="<%=ii.getC33() %>";
	mydata[34]="<%=ii.getC34() %>";
	mydata[35]="<%=ii.getC35() %>";
	mydata[36]="<%=ii.getC36() %>";
	mydata[37]="<%=ii.getC37() %>";
	mydata[38]="<%=ii.getC38() %>";
	mydata[39]="<%=ii.getC39() %>";
	mydata[40]="<%=ii.getC40() %>";
	mydata[41]="<%=ii.getC41() %>";
	mydata[42]="<%=ii.getC42() %>";
	mydata[43]="<%=ii.getC43() %>";
	mydata[44]="<%=ii.getC44() %>";
	mydata[45]="<%=ii.getC45() %>";
	mydata[46]="<%=ii.getC46() %>";
	mydata[47]="<%=ii.getC47() %>";
	mydata[48]="<%=ii.getC48() %>";
	mydata[49]="<%=ii.getC49() %>";
	mydata[50]="<%=ii.getC50() %>";
	mydata[51]="<%=ii.getC51() %>";
	mydata[52]="<%=ii.getC52() %>";
	mydata[53]="<%=ii.getC53() %>";
	mydata[54]="<%=ii.getC54() %>";
	mydata[55]="<%=ii.getC55() %>";
	mydata[56]="<%=ii.getC56() %>";
	mydata[57]="<%=ii.getC57() %>";
	mydata[58]="<%=ii.getC58() %>";
	mydata[59]="<%=ii.getC59() %>";
	mydata[60]="<%=ii.getC60() %>";
	mydata[61]="<%=ii.getC61() %>";
	mydata[62]="<%=ii.getC62() %>";
	for(i=1;i<=62;i++){
		$("#C"+i).textbox("setValue", mydata[i]);
	}
	
	var C63="<%=ii.getC63() %>";
	$("#C63").datebox("setValue",C63); 
	
	var C63="<%=ii.getC64() %>";
	$("#C64").datebox("setValue",C64); 
	
	
	var mydata= new Array([17]);
	mydata[65]="<%=ii.getC65() %>";
	mydata[66]="<%=ii.getC66() %>";
	mydata[67]="<%=ii.getC67() %>";
	mydata[68]="<%=ii.getC68() %>";
	mydata[69]="<%=ii.getC69() %>";
	mydata[70]="<%=ii.getC70() %>";
	mydata[71]="<%=ii.getC71() %>";
	mydata[72]="<%=ii.getC72() %>";
	mydata[73]="<%=ii.getC73() %>";
	mydata[74]="<%=ii.getC74() %>";
	mydata[75]="<%=ii.getC75() %>";
	mydata[76]="<%=ii.getC76() %>";
	mydata[77]="<%=ii.getC77() %>";
	mydata[78]="<%=ii.getC78() %>";
	mydata[79]="<%=ii.getC79() %>";
	mydata[80]="<%=ii.getC80() %>";
	mydata[81]="<%=ii.getC81() %>";
	for(i=65;i<=81;i++){
		$("#C"+i).textbox("setValue", mydata[i]);
	}
	
	
	var mydata= new Array([76]);
	mydata[1]="<%=ii.getD1() %>";
	mydata[2]="<%=ii.getD2() %>";
	mydata[3]="<%=ii.getD3() %>";
	mydata[4]="<%=ii.getD4() %>";
	mydata[5]="<%=ii.getD5() %>";
	mydata[6]="<%=ii.getD6() %>";
	mydata[7]="<%=ii.getD7() %>";
	mydata[8]="<%=ii.getD8() %>";
	mydata[9]="<%=ii.getD9() %>";
	mydata[10]="<%=ii.getD10() %>";
	mydata[11]="<%=ii.getD11() %>";
	mydata[12]="<%=ii.getD12() %>";
	mydata[13]="<%=ii.getD13() %>";
	mydata[14]="<%=ii.getD14() %>";
	mydata[15]="<%=ii.getD15() %>";
	mydata[16]="<%=ii.getD16() %>";
	mydata[17]="<%=ii.getD17() %>";
	mydata[18]="<%=ii.getD18() %>";
	mydata[19]="<%=ii.getD19() %>";
	mydata[20]="<%=ii.getD20() %>";
	mydata[21]="<%=ii.getD21() %>";
	mydata[22]="<%=ii.getD22() %>";
	mydata[23]="<%=ii.getD23() %>";
	mydata[24]="<%=ii.getD24() %>";
	mydata[25]="<%=ii.getD25() %>";
	mydata[26]="<%=ii.getD26() %>";
	mydata[27]="<%=ii.getD27() %>";
	mydata[28]="<%=ii.getD28() %>";
	mydata[29]="<%=ii.getD29() %>";
	mydata[30]="<%=ii.getD30() %>";
	mydata[31]="<%=ii.getD31() %>";
	mydata[32]="<%=ii.getD32() %>";
	mydata[33]="<%=ii.getD33() %>";
	mydata[34]="<%=ii.getD34() %>";
	mydata[35]="<%=ii.getD35() %>";
	mydata[36]="<%=ii.getD36() %>";
	mydata[37]="<%=ii.getD37() %>";
	mydata[38]="<%=ii.getD38() %>";
	mydata[39]="<%=ii.getD39() %>";
	mydata[40]="<%=ii.getD40() %>";
	mydata[41]="<%=ii.getD41() %>";
	mydata[42]="<%=ii.getD42() %>";
	mydata[43]="<%=ii.getD43() %>";
	mydata[44]="<%=ii.getD44() %>";
	mydata[45]="<%=ii.getD45() %>";
	mydata[46]="<%=ii.getD46() %>";
	mydata[47]="<%=ii.getD47() %>";
	mydata[48]="<%=ii.getD48() %>";
	mydata[49]="<%=ii.getD49() %>";
	mydata[50]="<%=ii.getD50() %>";
	mydata[51]="<%=ii.getD51() %>";
	mydata[52]="<%=ii.getD52() %>";
	mydata[53]="<%=ii.getD53() %>";
	mydata[54]="<%=ii.getD54() %>";
	mydata[55]="<%=ii.getD55() %>";
	mydata[56]="<%=ii.getD56() %>";
	mydata[57]="<%=ii.getD57() %>";
	mydata[58]="<%=ii.getD58() %>";
	mydata[59]="<%=ii.getD59() %>";
	mydata[60]="<%=ii.getD60() %>";
	mydata[61]="<%=ii.getD61() %>";
	mydata[62]="<%=ii.getD62() %>";
	mydata[63]="<%=ii.getD63() %>";
	mydata[64]="<%=ii.getD64() %>";
	mydata[65]="<%=ii.getD65() %>";
	mydata[66]="<%=ii.getD66() %>";
	mydata[67]="<%=ii.getD67() %>";
	mydata[68]="<%=ii.getD68() %>";
	mydata[69]="<%=ii.getD69() %>";
	mydata[70]="<%=ii.getD70() %>";
	mydata[71]="<%=ii.getD71() %>";
	mydata[72]="<%=ii.getD72() %>";
	mydata[73]="<%=ii.getD73() %>";
	mydata[74]="<%=ii.getD74() %>";
	mydata[75]="<%=ii.getD75() %>";
	for(i=1;i<=75;i++){
		$("#D"+i).textbox("setValue", mydata[i]);
	}
	
	
	var mydata= new Array([78]);
	mydata[1]="<%=ii.getE1() %>";
	mydata[2]="<%=ii.getE2() %>";
	mydata[3]="<%=ii.getE3() %>";
	mydata[4]="<%=ii.getE4() %>";
	mydata[5]="<%=ii.getE5() %>";
	mydata[6]="<%=ii.getE6() %>";
	mydata[7]="<%=ii.getE7() %>";
	mydata[8]="<%=ii.getE8() %>";
	mydata[9]="<%=ii.getE9() %>";
	mydata[10]="<%=ii.getE10() %>";
	mydata[11]="<%=ii.getE11() %>";
	mydata[12]="<%=ii.getE12() %>";
	mydata[13]="<%=ii.getE13() %>";
	mydata[14]="<%=ii.getE14() %>";
	mydata[15]="<%=ii.getE15() %>";
	mydata[16]="<%=ii.getE16() %>";
	mydata[17]="<%=ii.getE17() %>";
	mydata[18]="<%=ii.getE18() %>";
	mydata[19]="<%=ii.getE19() %>";
	mydata[20]="<%=ii.getE20() %>";
	mydata[21]="<%=ii.getE21() %>";
	mydata[22]="<%=ii.getE22() %>";
	mydata[23]="<%=ii.getE23() %>";
	mydata[24]="<%=ii.getE24() %>";
	mydata[25]="<%=ii.getE25() %>";
	mydata[26]="<%=ii.getE26() %>";
	mydata[27]="<%=ii.getE27() %>";
	mydata[28]="<%=ii.getE28() %>";
	mydata[29]="<%=ii.getE29() %>";
	mydata[30]="<%=ii.getE30() %>";
	mydata[31]="<%=ii.getE31() %>";
	mydata[32]="<%=ii.getE32() %>";
	mydata[33]="<%=ii.getE33() %>";
	mydata[34]="<%=ii.getE34() %>";
	mydata[35]="<%=ii.getE35() %>";
	mydata[36]="<%=ii.getE36() %>";
	mydata[37]="<%=ii.getE37() %>";
	mydata[38]="<%=ii.getE38() %>";
	mydata[39]="<%=ii.getE39() %>";
	mydata[40]="<%=ii.getE40() %>";
	mydata[41]="<%=ii.getE41() %>";
	mydata[42]="<%=ii.getE42() %>";
	mydata[43]="<%=ii.getE43() %>";
	mydata[44]="<%=ii.getE44() %>";
	mydata[45]="<%=ii.getE45() %>";
	mydata[46]="<%=ii.getE46() %>";
	mydata[47]="<%=ii.getE47() %>";
	mydata[48]="<%=ii.getE48() %>";
	mydata[49]="<%=ii.getE49() %>";
	mydata[50]="<%=ii.getE50() %>";
	mydata[51]="<%=ii.getE51() %>";
	mydata[52]="<%=ii.getE52() %>";
	mydata[53]="<%=ii.getE53() %>";
	mydata[54]="<%=ii.getE54() %>";
	mydata[55]="<%=ii.getE55() %>";
	mydata[56]="<%=ii.getE56() %>";
	mydata[57]="<%=ii.getE57() %>";
	mydata[58]="<%=ii.getE58() %>";
	mydata[59]="<%=ii.getE59() %>";
	mydata[60]="<%=ii.getE60() %>";
	mydata[61]="<%=ii.getE61() %>";
	mydata[62]="<%=ii.getE62() %>";
	mydata[63]="<%=ii.getE63() %>";
	mydata[64]="<%=ii.getE64() %>";
	mydata[65]="<%=ii.getE65() %>";
	mydata[66]="<%=ii.getE66() %>";
	mydata[67]="<%=ii.getE67() %>";
	mydata[68]="<%=ii.getE68() %>";
	mydata[69]="<%=ii.getE69() %>";
	mydata[70]="<%=ii.getE70() %>";
	mydata[71]="<%=ii.getE71() %>";
	mydata[72]="<%=ii.getE72() %>";
	mydata[73]="<%=ii.getE73() %>";
	mydata[74]="<%=ii.getE74() %>";
	mydata[75]="<%=ii.getE75() %>";
	mydata[76]="<%=ii.getE76() %>";
	mydata[77]="<%=ii.getE77() %>";
	for(i=1;i<=77;i++){
		$("#E"+i).textbox("setValue", mydata[i]);
	}
	
	
	
	
});



//********************************************************************************




function save(){
	if(confirm("确认保存项目申报书？")){
		document.getElementById("sort").value="save";
		return true;
	}
	else{
		return false;
	}
}
function sub(){
	if(confirm("确认提交项目申报书？")){
		document.getElementById("sort").value="submit";
		return true;
	}
	else{
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
		 
    <div class="context">
       <div class="titlebox"><span class="title">项目立项申报</span></div>
       <form action="" name="Form1" id="Form1">
       <div class="easyui-tabs" style="width:100%">
       <div title="申报扉页" style="width:100%">
       	<div style="width:100%">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
               <tr >
                    <td class="tdname">受理编号：</td>                    
                    <td class="tdcontent1">
                    	<%=ii.getA1()%>
                    </td>
                    <td class="tdname">负责处室：</td>
                    <td class="tdcontent2">
                    	<%=ii.getA2()%>
                    </td>
                </tr>
                <tr >
                    <td class="tdname">项目名称：</td>                    
                    <td class="tdcontent1">
                    	<input class="easyui-textbox mydatebox" type="text" name="A3" id="A3" />
                    </td>
                    <td class="tdname">计划类别：</td>
                    <td class="tdcontent2">
                      <input class="easyui-textbox mydatebox" type="text" name="A4" id="A4" />
                    </td>
                </tr>
                <tr >
                    <td class="tdname">技术领域：</td>
                    <td class="tdcontent1">
                     <input class="easyui-textbox mydatebox" type="text" name="A5" id="A5" />
                    </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="A6" id="A6" />
                    </td>                    
                </tr>
                <tr >
                    <td class="tdname">归口管理部门：</td>
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="A7" id="A7" />
                    </td>
                    <td class="tdname">单位负责人：</td>
                    <td class="tdcontent2">
                     <input class="easyui-textbox mydatebox" type="text" name="A8" id="A8" />
                    </td>                    
                </tr>
                <tr>
                    <td class="tdname">填报人：</td>
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="A9" id="A9" >
                    </td>
                     <td class="tdname">联系电话：</td>
                    <td class="tdcontent1">
                      <input class="easyui-textbox mydatebox" type="text" name="A10" id="A10" >
                    </td>
               
                </tr>
                <tr>
                 <td class="tdname">填报日期：</td>
                    <td class="tdcontent1" >
                      <input class="easyui-datebox mydatebox" type="text" name="A111213" id="A111213" editable="false" panelHeight="260" panelWidth="200" >
                    </td>
                    <td class="tdname" colspan="2" >
                   	 <div align="center" ><a href="#" class="easyui-linkbutton button" style="width:120px;height:25px">相关附件上传</a></div></td>
                </tr>
             </table>
             </div>
       </div>
       <div title="单位基本情况" style="width:100%">
       <div style="width:100%">

<!-- 一、项目基本情况	 -->
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	   			<tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、项目基本情况</td>
	   			</tr>
                <tr >
                    <td class="tdname">单位名称：</td>                    
                    <td class="tdcontent1">
                     <input class="easyui-textbox mydatebox" type="text" name="B1" id="B1" />
                    </td>
                    <td class="tdname">组织机构代码：</td>
                    <td class="tdcontent2">
                         <input class="easyui-textbox mydatebox" type="text" name="B2" id="B2" />
                    </td>
                </tr>
                <tr >
                    <td class="tdname">申报渠道：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="B3" id="B3" />
                    </td>
                    <td class="tdname">所在地区：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="B4" id="B4" />
                    </td>                    
                </tr>
                 <tr >
                    <td class="tdname">通信地址：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="B5" id="B5" />
                    </td>
                    <td class="tdname">邮政编码：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="B6" id="B6" />
                    </td>                    
                </tr>
                 <tr >
                    <td class="tdname">联 系 人：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="B7" id="B7" />
                    </td>
                    <td class="tdname">电   话：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="B8" id="B8" />
                    </td>                    
                </tr>
                <tr >
                    <td class="tdname">手    机：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="B9" id="B9" />
                    </td>
                    <td class="tdname">传   真：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="B10" id="B10" />
                    </td>                    
                </tr>
                <tr >
                    <td class="tdname">电子邮箱：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="B11" id="B11" />
                    </td>
                    <td class="tdname">开户银行：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="B12" id="B12" />
                    </td>                    
                </tr>
                <tr >
                    <td class="tdname">信用等级：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="B13" id="B13" />
                    </td>
                    <td class="tdname">账户：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="B14" id="B14" />
                    </td>                    
                </tr>
                 <tr >
                    <td class="tdname">单位性质：</td>
                    <td class="tdcontent1">
                        <input class="easyui-textbox mydatebox" type="text" name="B15" id="B15" />
                    </td>
                    <td class="tdname">企业规模：</td>
                    <td class="tdcontent2">
                       <input class="easyui-textbox mydatebox" type="text" name="B16" id="B16" />
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
                		 <input class="easyui-textbox mydatebox" type="text" name="B17" id="B17" />
                	</td>
                    <td class="tdname">
                     	<input class="easyui-textbox mydatebox" type="text" name="B18" id="B18" />
                    </td>                    
                    <td class="tdcontent2" >
                 		<input class="easyui-textbox mydatebox" type="text" name="B19" id="B19" />
                    </td>
                    
                </tr>
                <tr >
                	<td class="tdname">
                		 <input class="easyui-textbox mydatebox" type="text" name="B20" id="B20" />
                	</td>
                    <td class="tdname">
                     	<input class="easyui-textbox mydatebox" type="text" name="B21" id="B21" />
                    </td>                    
                    <td class="tdcontent2" >
                 		<input class="easyui-textbox mydatebox" type="text" name="B22" id="B22" />
                    </td>
                    
                </tr>
                <tr >
                	<td class="tdname">
                		 <input class="easyui-textbox mydatebox" type="text" name="B23" id="B23" />
                	</td>
                    <td class="tdname">
                     	<input class="easyui-textbox mydatebox" type="text" name="B24" id="B24" />
                    </td>                    
                    <td class="tdcontent2" >
                 		<input class="easyui-textbox mydatebox" type="text" name="B25" id="B25" />
                    </td>
                    
                </tr>
                </table>
                
                
<!-- 注册时间     -->
             <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA" >
	   			<tr >
	   			 	<td class="tdname" >注册时间</td>
                    <td class="tdname" colspan="3">
                    	<input class="easyui-textbox mydatebox" type="text" name="B26" id="B26" />
                    </td>                     
                    <td class="tdname">注册资金</td>                    
                    <td class="tdname" colspan="3">
                    	<input class="easyui-textbox mydatebox" type="text" name="B27" id="B27" />
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
                    	<input class="easyui-textbox mydatebox1" type="text" name="B28" id="B28" />
                    </td>                    
                    <td class="tdname1">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B29" id="B29" />
                    </td>
                    <td class="tdname1">
						<input class="easyui-textbox mydatebox1" type="text" name="B30" id="B30" />
					</td>
                    <td class="tdname1">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B31" id="B31" />
                    </td>                    
                    <td class="tdname1">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B32" id="B32" />
                    </td>
                    <td class="tdname1">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B33" id="B33" />
                    </td>                    
                    <td class="tdname1">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B34" id="B34" />
                    </td>
                    
 				</tr>
 				
                <tr >
                	<td class="tdname1" rowspan="2">单位人员</td>
                    <td class="tdname1" rowspan="2">
                   		<input class="easyui-textbox mydatebox1" type="text" name="B35" id="B35" />
                    </td>                    
                    <td class="tdname1">大专以上技术人员</td>
                    <td class="tdname1">
						<input class="easyui-textbox mydatebox1" type="text" name="B36" id="B36" />
					</td>
                    <td class="tdname1">博士</td>                    
                    <td class="tdname1">
                   	 	<input class="easyui-textbox mydatebox1" type="text" name="B37" id="B37" />
                    </td>
                    <td class="tdname1">硕士</td>                    
                    <td class="tdname1">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B38" id="B38" />
                    </td>
                    
                </tr>
                <tr >
                	
                    <td class="tdname1" >高级职称</td>                    
                    <td class="tdname1">
						<input class="easyui-textbox mydatebox1" type="text" name="B39" id="B39" />
					</td>
                    <td class="tdname1">中级职称</td>
                    <td class="tdname1">
						<input class="easyui-textbox mydatebox1" type="text" name="B40" id="B40" />
					</td>                    
                    <td class="tdname1">留学人员</td>
                    <td class="tdname1">
						<input class="easyui-textbox mydatebox1" type="text" name="B41" id="B41" />
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
                    <th class="tdname2"> 前 年:&nbsp;&nbsp;<input class="easyui-textbox mydatebox2" type="text" name="B42" id="B42" />
                    </th>
                    <th class="tdname2">上 一 年度:&nbsp;&nbsp;<input class="easyui-textbox mydatebox2" type="text" name="B43" id="B43" /></th>                   
                </tr>
                
                
				<tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">总 产 值（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B44" id="B44" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B45" id="B45" />
                	</td>
                	
                </tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">总 销 售 额（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B46" id="B46" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B47" id="B47" />
                	</td>
                	
                </tr>
                
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">净 利 润（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B48" id="B48" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B49" id="B49" />
                	</td>
                
                </tr>
                
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">纳 税 总 额（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B50" id="B50" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B51" id="B51" />
                	</td>
                	
                </tr>
                
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">&nbsp;&nbsp;企 业 所 得 税（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B52" id="B52" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B53" id="B53" />
                	</td>
                	
                </tr>
                <tr> 
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">&nbsp;&nbsp;增 值 税（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B54" id="B54" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B55" id="B55" />
                	</td>
                	
                </tr>
                
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">&nbsp;&nbsp;营 业 税（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B56" id="B56" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B57" id="B57" />
                	</td>
                	
                
                </tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">&nbsp;&nbsp;个 人 所 得 税（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B58" id="B58" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B59" id="B59" />
                	</td>
                	
                
                </tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">&nbsp;&nbsp;个 人 所 得 税（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B60" id="B60" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B61" id="B61" />
                	</td>
                	
                
                </tr>
                
                 <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">研 发 支 出 费 用（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B62" id="B62" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B63" id="B63" />
                	</td>
                	
                </tr>
                
          		<tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">支出费用总额（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B64" id="B64" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B65" id="B65" />
                	</td>
                	
                </tr>
                
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">创 汇 总 额 （ 万 美 元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B66" id="B66" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B67" id="B67" />
                	</td>
                	
                </tr>
                 <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">固 定 资 产 原 值（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B68" id="B68" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B69" id="B69" />
                	</td>
                	
                </tr>
                
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">总 资 产（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B70" id="B70" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B71" id="B71" />
                	</td>
                	
                </tr>
                
                 <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">总 负 债（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B72" id="B72" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B73" id="B73" />
                	</td>
                	
                </tr>
                
                 <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">净 资 产（万元）</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B74" id="B74" />
                	</td>
                	<td style="text-align:center;">
                		<input class="easyui-textbox mydatebox" type="text" name="B75" id="B75" />
                	</td>
                </tr>
                
                
             </table>           
                
                
<!-- 主营业务、主要产品与服务                 -->

              <table class="persional" align="center" border="1"  cellpadding="0"  cellspacing="0"  bordercolor="#DEE5EA">
	   			 <tr>
	   			 <td class="tdname3" >主营业务、主要产品与服务</td>                    
                    <td class="tdname" colspan="5">
                    	<input class="easyui-textbox mydatebox3" type="text" name="B76" id="B76" />
                    </td> 
                 </tr> 
                 
                <tr>
                    <td class="tdname">单位性质</td>                    
                    <td class="tdname" colspan="5">
                    	<span><input class="easyui-checktbox mydatebox4" type="checkbox" name="B77" id="B77" />高新技术企业  </span>
                    	<span><input class="easyui-checktbox mydatebox4" type="checkbox" name="B77" id="B77" />技术先进型服务企业     </span>
                    	<span><input class="easyui-checktbox mydatebox4" type="checkbox" name="B77" id="B77" />上市公司   </span>
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
                    	<input class="easyui-textbox mydatebox1" type="text" name="B78" id="B78" />
                    </td>   
                    <td class="tdname">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B79" id="B79" />
                    </td>
                    <td class="tdname">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B80" id="B80" />
                    </td>              
                   <td class="tdname">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B81" id="B81" />
                    </td>
                   <td class="tdname">
                    	<input class="easyui-textbox mydatebox1" type="text" name="B82" id="B82" />
                    </td>
                </tr>
               
                 
                <tr >
                    <td class="tdname">创新基地建设情况</td>                    
                    <td class="tdname" colspan="5">
						<textarea id="B83" name="B83" cols="12" rows="4" style="width:90%;height:90%;"></textarea>
					</td>   
                  
                </tr>
                
                  <tr >
                    <td class="tdname">获科技计划支持情况</td>                    
                    <td class="tdname" colspan="5">
                     <textarea id="B84" name="B84" cols="12" rows="4" style="width:90%;height:90%;"></textarea>
						
					</td>   
                            
                </tr>
                
                  <tr >
                    <td class="tdname">获科技奖励及认定情况</td>                    
                    <td class="tdname" colspan="5">
                     <textarea id="B85" name="B85" cols="12" rows="4" style="width:90%;height:90%;"></textarea>
						
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
                      <input class="easyui-textbox mydatebox" type="text" id="C1" id="C1" />
                    </td>
                    <td class="tdname">计划类别</td>
                    <td class="tdcontent2" colspan="2">
                        <input class="easyui-textbox mydatebox5" type="text" id="C2" id="C2" />
                    </td>
                    
                    
                </tr>
        
          		<tr >
                    <td rowspan="5" class="tdname">项目负责人情况</td>
                    <td class="tdname">姓名</td>
                    <td class="tdname"> <input class="easyui-textbox mydatebox1" type="text" id="C3" id="C3" /> </td>
                    <td class="tdname">性别</td>
                    <td class="tdname"> <input class="easyui-textbox mydatebox1" type="text" id="C4" id="4" /></td>
                    <td class="tdname">出生日期</td>
                    <td class="tdname"> <input class="easyui-textbox mydatebox1" type="text" id="C5" id="C5" /></td>
                </tr>
                
                
                <tr>
                    <td  class="tdname">职称</td>
                    <td  class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C6" id="C6" /></td>
                    <td  class="tdname">证件类型</td>
                    <td  class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C7" id="C7" /></td>
                    <td  class="tdname">证件号码</td>
                    <td  class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C8" id="C8" /></td>
                </tr>
                
                
                 
                 <tr>
                	<td class="tdname">职务</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C9" id="C9" /></td>
                    <td class="tdname">学历</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C10" id="C10" /></td>
                    <td class="tdname">学位</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C11" id="C11" /></td>
                          
                </tr>      
                 <tr>
                	<td class="tdname">专业</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C12" id="C12" /></td>
                    <td class="tdname">固定电话</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C13" id="C13" /></td>
                    <td class="tdname">传真</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C114" id="C14" /></td>
                          
                </tr>      
                
                    
             <tr>             
             	 	<td class="tdname">移动电话</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C15" id="C15" /></td>
                    <td class="tdname">电子邮箱</td>
                    <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C16" id="C16" /></td>
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
	             	<input class="easyui-textbox mydatebox1" type="text" id="C17" id="17c" />
	             </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C18" id="C18" />
                 </td>
         
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C19" id="C19" />
                 </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C20" id="C20" />
				 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C21" id="C21" />
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C22" id="C22" />
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C23" id="C23" />
                 </td>
                 
	        </tr>
	          
	        <tr>
	             <td class="tdname">
	             	<input class="easyui-textbox mydatebox1" type="text" id="C24" id="C24" />
	             </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C25" id="C25" />
                 </td>
         
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C26" id="C26" />
                 </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C27" id="C27" />
				 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C28" id="C28" />
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C29" id="C29" />
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C30" id="C30" />
                 </td>
                 
	        </tr>
	        
	        <tr>
	             <td class="tdname">
	             	<input class="easyui-textbox mydatebox1" type="text" id="C31" id="C31" />
	             </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C32" id="C32" />
                 </td>
         
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C33" id="C33" />
                 </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C34" id="C34" />
				 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C35" id="C35" />
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C36" id="C36" />
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C37" id="C37" />
                 </td>
                 
	        </tr>
	        
	        <tr>
	             <td class="tdname">
	             	<input class="easyui-textbox mydatebox1" type="text" id="C38" id="C38" />
	             </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C39" id="C39" />
                 </td>
         
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C40" id="C40" />
                 </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C41" id="C41" />
				 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C42" id="C42" />
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C43" id="C43" />
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C44" id="C44" />
                 </td>
                 
	        </tr>
	        
	        <tr>
	             <td class="tdname">
	             	<input class="easyui-textbox mydatebox1" type="text" id="C45" id="C45" />
	             </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C46" id="C46" />
                 </td>
         
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C47" id="C47" />
                 </td>
                 
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C48" id="C48" />
				 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C49" id="C49" />
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C50" id="C50" />
                 </td>
                 <td class="tdname">
                 	<input class="easyui-textbox mydatebox1" type="text" id="C51" id="C51" />
                 </td>
	        
                 
	        </tr>          
	        
           </table>
           
           
<!-- 项目现处阶段    -->        
           <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
             <tr>
             <td >项目现处阶段</td>
             <td colspan="5" ><input class="easyui-textbox mydatebox" type="text" id="C52" id="C52" /></td>
             </tr>
             
             <tr>
              <td class="tdname">技术领域</td>
              <td class="tdname"><input class="easyui-textbox mydatebox" type="text" id="C53" id="C53" /></td>
              <td class="tdname">行业领域</td>
              <td class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C54" id="C54" /></td>
              <td class="tdname">项目对应学科代码</td>
              <td class="tdname"><input class="easyui-textbox mydatebox5" type="text" id="C55" id="C55" /></td>
             </tr>
               <tr>
               <td class="tdname">项目来源</td>
               <td class="tdname" colspan="2"><input class="easyui-textbox mydatebox" type="text" id="C56" id="C56" />
               </td>
               <td class="tdname">技术来源</td>
               <td class="tdname" colspan="2"><input class="easyui-textbox mydatebox" type="text" id="C57" id="C57" />
             </td>
           
             </tr>
              <tr>
               <td class="tdname" >开发形式</td>
          	 <td class="tdname"  colspan="2"><input class="easyui-textbox mydatebox" type="text" id="C58" id="C58" />
             </td>
             
               <td class="tdname">产品采标形式</td>
 				<td class="tdname" colspan="2"><input class="easyui-textbox mydatebox" type="text" id="C59" id="C59" />
                </td>           
             </tr>
            
              <tr>
               <td class="tdname">项目知识产权情况</td>
              <td colspan="5" class="tdname">
               <textarea id="C60" id="C60" cols="12" rows="4" style="width:90%;height:90%;"></textarea>
              </td>
             </tr>
             
             <tr>
               <td class="tdname">科技奖励获奖情况</td>
              <td colspan="5" class="tdname">
               <textarea id="C61" id="C61" cols="12" rows="4" style="width:90%;height:90%;"></textarea>
              </td>
             </tr>
             
             <tr>
               <td class="tdname" class="tdname">技术权益及使用方式说明</td>
              <td colspan="5" class="tdname">
               <textarea id="C62" id="C62" cols="12" rows="4" style="width:90%;height:90%;"></textarea>
              </td>
             </tr>
            
            
            <tr>
             
               <td class="tdname">项目执行期</td>
          		<td class="tdcontent2" colspan="2">
                  <input class="easyui-datebox mydatebox" type="text" name="C63" id="C63" editable="false" panelHeight="260" panelWidth="200" >
               </td>
               <td class="tdname"> 至</td>
          	   <td class="tdcontent2" colspan="2">
                  <input class="easyui-datebox mydatebox" type="text" name="C64" id="C64" editable="false" panelHeight="260" panelWidth="200" >
               </td>
            
             </tr>
             
              <tr>
               <td class="tdname">合作单位1</td>
           	   <td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" id="C65" id="C65" /></td>
             
               <td class="tdname">组织机构代码</td>
               <td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" id="C66" id="C66" /></td>
            </tr>
            
             <tr>
               <td class="tdname">负责人</td>
           		<td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" id="C67" id="C67" /></td>
             
               <td class="tdname">联系电话</td>
           		<td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" id="C68" id="C68" /></td>
             </tr>
             
             
             <tr>
               <td class="tdname">合作单位2</td>
           		<td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" id="C69" id="C69" /></td>
             
               <td class="tdname">组织机构代码</td>
          		 <td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" id="C70" id="C70" /></td>
	           </tr>
             <tr>
               <td class="tdname">负责人</td>
          		 <td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" id="C71" id="C71" /></td>
             
               <td class="tdname">联系电话</td>
           		<td colspan="2" class="tdname"><input class="easyui-textbox mydatebox" type="text" id="C72" id="C72" /></td>
             </tr>
            
             <tr>
              <td rowspan="4" class="tdname">国际科技合作信 息</td>
              <td colspan="1" class="tdname">合作协议类别及名称</td>   
              
              <td colspan="5" class="tdname"><input class="easyui-textbox mydatebox" type="text" id="C73" id="C73" /></td>
             </tr>

              <tr>
              <td colspan="1" class="tdname">合作目标及外方投入</td>   
              <td colspan="5" class="tdname"><input class="easyui-textbox mydatebox" type="text" id="C74" id="C74" /></td>
             </tr>
             
             	 <tr>
              <td colspan="1" class="tdname">合作外方机构及负责人</td>   
              <td colspan="5" class="tdname"><input class="easyui-textbox mydatebox" type="text" id="C75" id="C75" /></td>
             </tr>
            
                 
           	 <tr>
              <td colspan="1" class="tdname">电子邮箱与通信地址</td>   
              <td colspan="5" class="tdname"><input class="easyui-textbox mydatebox" type="text" id="C76" id="C76" /></td>
             </tr>
             
             
              <tr>
              <td rowspan="3" class="tdname">科技服务机构信息</td>
              <td colspan="1" class="tdname">服务方式</td>   
              
              <td colspan="5" class="tdname"><input class="easyui-textbox mydatebox" type="text" id="C77" id="C77" /></td>
             </tr>
             
             <tr>
              <td colspan="1" class="tdname">已经服务企业数量</td>   
           		<td colspan="1" class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C78" id="C78" /></td>
              <td colspan="2" class="tdname">项目完成预计服务企业数量</td>
          		 <td colspan="2" class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C79" id="C79" /></td>
             </tr>
               <tr>
              <td colspan="1"class="tdname">已经提供服务种类或 平 台</td>   
           		<td colspan="1" class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C80" id="C80" /></td>
              <td colspan="2"class="tdname">项目完成预计提供服务种类或平台</td>
          		 <td colspan="2" class="tdname"><input class="easyui-textbox mydatebox1" type="text" id="C81" id="C81" /></td>
             </tr>
              
                
            <tr>
             <td class="tdname">项 目 简介 及 总体 目 标</td>
             <td colspan="6" class="tdname">
             <textarea id="C82" id="C82" cols="12" rows="4" style="width:90%;height:90%;"> <%=ii.getC82()%></textarea></td>
            </tr>
            
            <tr>
              <td class="tdname">主要研究内容及技术指 标</td>
             <td colspan="6" class="tdname">
             <textarea id="C83" id="C83" cols="12" rows="4" style="width:90%;height:90%;"><%=ii.getC83()%></textarea></td>
            </tr>
            
            
            <tr>
             <td class="tdname">主要创新点</td>
             <td colspan="6" class="tdname">
             <textarea id="C84" id="C84" cols="12" rows="4" style="width:90%;height:90%;"><%=ii.getC84()%></textarea></td>
            </tr>
            
            
             <tr>
             <td class="tdname">工作基础</td>
             <td colspan="6" class="tdname">
             <textarea id="C85" id="C85" cols="12" rows="4" style="width:90%;height:90%;"><%=ii.getC85()%></textarea></td>
            </tr>
            
            <tr>
             <td class="tdname">计划进度及阶段性目标</td>
             <td colspan="6" class="tdname">
             <textarea id="C86" id="C86" cols="12" rows="4" style="width:90%;height:90%;"><%=ii.getC86()%></textarea></td>
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
                      <input class="easyui-textbox mydatebox5" type="text" name="D1" id="D1" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D2" id="D2" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D3" id="D3" />
                    </td>            
                </tr>
               
                     
           <tr>
                    <td class="tdname">1、研发设备费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D4" id="D4" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D5" id="D5" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D6" id="D6" />
                    </td>            
                </tr>
                <tr>
                    <td class="tdname">（1）购置研发设备费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D7" id="D7" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D8" id="D8" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D9" id="D9" />
                    </td>            
                </tr>
                
              	 <tr>
                    <td class="tdname">（2）试制研发设备费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D10" id="D10" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D11" id="D11" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D12" id="D12" />
                    </td>            
                </tr>
             	 <tr>
                    <td class="tdname">（3）软件系统开发费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D13" id="D13" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D14" id="D14" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D15" id="D15" />
                    </td>            
                </tr>
             
               <tr>
                    <td class="tdname">2、合作研发费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D16" id="D16" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D17" id="D17" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D18" id="D18" />
                    </td>            
                </tr>
             
              
               <tr>
                    <td class="tdname">（1）引进人才、团队费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D19" id="D19" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D20" id="D20" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D21" id="D21" />
                    </td>            
                </tr>
               
               <tr>
                    <td class="tdname">（2）购置技术、专利及成果费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D22" id="D22" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D23" id="D23" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D24" id="D24" />
                    </td>            
                </tr>
	        
	          
               <tr>
                    <td class="tdname">（3）产学研合作经费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D25" id="25" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D26" id="D26" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D27" id="D27" />
                    </td>            
                </tr>
	        
	         <tr>
                    <td class="tdname">3、材料费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D28" id="D28" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D29" id="D29" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D30" id="D30" />
                    </td>            
                </tr>
                
                 <tr>
                    <td class="tdname">4、测试化验加工费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D31" id="D31" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D32" id="D32" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D33" id="D33" />
                    </td>            
                </tr>
                
                <tr>
                    <td class="tdname">5、燃料动力费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D34" id="D34" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D35" id="D35" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D36" id="D36" />
                    </td>            
                </tr>
                
                <tr>
                    <td class="tdname">6、差旅费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D37" id="D37" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D38" id="D38" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D39" id="D39" />
                    </td>            
                </tr>
                 <tr>
                    <td class="tdname">7、会议费 </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D40" id="D40" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D41" id="D41" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D42" id="D42" />
                    </td>            
                </tr>
                
                <tr>
                    <td class="tdname">8、国际合作与交流费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D43" id="D43" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D44" id="D44" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D45" id="D45" />
                    </td>            
                </tr>
                
                 <tr>
                    <td class="tdname">9、出版/文献/信息传播/知识产权事务费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D46" id="D46" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D47" id="D47" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D48" id="D48" />
                    </td>            
                </tr>
                 <tr>
                    <td class="tdname">10、劳务费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D49" id="D49" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D50" id="D50" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D51" id="D51" />
                    </td>            
                </tr>
                
                <tr>
                    <td class="tdname">11、专家咨询费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D52" id="D52" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D53" id="D53" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D54" id="D54" />
                    </td>            
                </tr>
                
                 <tr>
                    <td class="tdname">12、管理费</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D55" id="D55" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D56" id="D56" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D57" id="D57" />
                    </td>            
                </tr>
                
                
                <tr>
                    <td class="tdname">二、经费来源合计</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D58" id="D58" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D59" id="D59" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D60" id="D60" />
                    </td>            
                </tr>
                
                 <tr>
                    <td class="tdname">1、申请从市财政经费获得的资助</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D61" id="D61" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D62" id="D62" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D63" id="D63" />
                    </td>            
                </tr>
                 <tr>
                    <td class="tdname">2、自筹经费来源</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D64" id="D64" />
                    </td>
                    <td class="tdname">				
                      <input class="easyui-textbox mydatebox5" type="text" name="D65" id="D65" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D66" id="D66" />
                    </td>            
                </tr>
                
                <tr>
                    <td class="tdname">（1）其他财政拨款</td>
                    <td class="tdname">
                       <input class="easyui-textbox mydatebox5" type="text" name="D67" id="D67" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D68" id="D68" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D69" id="D69" />
                    </td>            
                </tr>
                
                
                 <tr>
                    <td class="tdname">（2）单位自有货币资金</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D70" id="D70" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D71" id="D71" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D72" id="D72" />
                    </td>            
                </tr>
                 <tr>
                    <td class="tdname">（3）其他资金</td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D73" id="D73" />
                    </td>
                    <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D74" id="D74" />
                    </td>
                   <td class="tdname">
                      <input class="easyui-textbox mydatebox5" type="text" name="D75" id="D75" />
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
                      <input class="easyui-textbox mydatebox1" type="text" name="E1" id="E1" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E2" id="E2" />
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E3" id="E3" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E4" id="E4" />
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E5" id="E6" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E6" id="E6" />
                </td>   
                </tr>
                
                <tr>
                
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E7" id="E7" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E8" id="E8" />
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E9" id="E9" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E10" id="E10" />
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E11" id="E11" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E12" id="E12" />
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E13" id="E13" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E14" id="E14" />
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E15" id="E15" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E16" id="E16" />
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E17" id="E17" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E18" id="E18" />
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E19" id="E19" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E20" id="E20" />
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E21" id="E21" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E22" id="E22" />
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E23" id="E23" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E24" id="E24" />
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E25" id="E25" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E26" id="E26" />
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E27" id="E27" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E28" id="E28" />
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E29" id="E29" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E30" id="E30" />
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E31" id="E31" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E32" id="E32" />
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E33" id="E33" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E34" id="E34" />
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E35" id="E35" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E36" id="E36" />
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E37" id="E37" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E38" id="E38" />
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E39" id="E39" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E40" id="E40" />
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E41" id="E41" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E42" id="E42" />
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E43" id="E43" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E44" id="E44" />
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E45" id="E45" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E46" id="E46" />
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E47" id="E47" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E48" id="E48" />
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E49" id="E49" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E50" id="E50" />
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E51" id="E51" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E52" id="E52" />
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E53" id="E53" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E54" id="E54" />
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E55" id="E55" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E56" id="E56" />
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E57" id="E57" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E58" id="E58" />
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E59" id="E59" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E60" id="E60" />
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E61" id="E61" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E62" id="E62" />
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E63" id="E63" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E64" id="E64" />
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E65" id="E65" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E66" id="E66" />
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E67" id="E67" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E68" id="E68" />
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E69" id="E69" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E70" id="E70" />
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E71" id="E71" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E72" id="E72" />
                </td>   
                </tr>
                
                <tr>
                 <td class="tdname">累计：</td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E73" id="E73" />
                </td>
                  <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E74" id="E74" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E75" id="E75" />
                </td>
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E76" id="E76" />
                    </td>    
                 <td class="tdname">
                      <input class="easyui-textbox mydatebox1" type="text" name="E77" id="E77" />
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
		               <textarea id="F1" name="F1" cols="12" rows="6" style="width:90%;height:90%;"><%=ii.getF1() %></textarea>
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
	   	
	   	
	   	
	</div>
	 </form>
   </div>   
 	     
 </div>
</body>
</html>
               
               