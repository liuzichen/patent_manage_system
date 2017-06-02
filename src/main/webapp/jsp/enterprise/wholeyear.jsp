<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目执行情况报表（全年）</title>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css" />
<script
	src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>


<script type="text/javascript">
$(document).ready(function(){
	var j5="<%=ii.getJ5() %>";
	var j6="<%=ii.getJ6() %>";
	var j789="<%=ii.getJ789() %>";
	var k5="<%=ii.getK5() %>";
	var mydata= new Array([95]);
	mydata[6]="<%=ii.getK6() %>";
	mydata[7]="<%=ii.getK7() %>";
	mydata[8]="<%=ii.getK8() %>";
	mydata[9]="<%=ii.getK9() %>";
	mydata[10]="<%=ii.getK10() %>";
	mydata[11]="<%=ii.getK11() %>";
	mydata[12]="<%=ii.getK12() %>";
	mydata[13]="<%=ii.getK13() %>";
	mydata[14]="<%=ii.getK14() %>";
	mydata[15]="<%=ii.getK15() %>";
	mydata[16]="<%=ii.getK16() %>";
	mydata[17]="<%=ii.getK17() %>";
	mydata[18]="<%=ii.getK18() %>";
	mydata[19]="<%=ii.getK19() %>";
	mydata[20]="<%=ii.getK20() %>";
	mydata[21]="<%=ii.getK21() %>";
	mydata[22]="<%=ii.getK22() %>";
	mydata[23]="<%=ii.getK23() %>";
	mydata[24]="<%=ii.getK24() %>";
	mydata[25]="<%=ii.getK25() %>";
	mydata[26]="<%=ii.getK26() %>";
	mydata[27]="<%=ii.getK27() %>";
	mydata[28]="<%=ii.getK28() %>";
	mydata[29]="<%=ii.getK29() %>";
	mydata[30]="<%=ii.getK30() %>";
	mydata[31]="<%=ii.getK31() %>";
	mydata[32]="<%=ii.getK32() %>";
	mydata[33]="<%=ii.getK33() %>";
	mydata[34]="<%=ii.getK34() %>";
	mydata[35]="<%=ii.getK35() %>";
	mydata[36]="<%=ii.getK36() %>";
	mydata[37]="<%=ii.getK37() %>";
	mydata[38]="<%=ii.getK38() %>";
	mydata[39]="<%=ii.getK39() %>";
	mydata[40]="<%=ii.getK40() %>";
	mydata[41]="<%=ii.getK41() %>";
	mydata[42]="<%=ii.getK42() %>";
	mydata[43]="<%=ii.getK43() %>";
	mydata[44]="<%=ii.getK44() %>";
	mydata[45]="<%=ii.getK45() %>";
	mydata[46]="<%=ii.getK46() %>";
	mydata[47]="<%=ii.getK47() %>";
	mydata[48]="<%=ii.getK48() %>";
	mydata[49]="<%=ii.getK49() %>";
	mydata[50]="<%=ii.getK50() %>";
	mydata[51]="<%=ii.getK51() %>";
	mydata[52]="<%=ii.getK52() %>";
	mydata[53]="<%=ii.getK53() %>";
	mydata[54]="<%=ii.getK54() %>";
	mydata[55]="<%=ii.getK55() %>";
	mydata[56]="<%=ii.getK56() %>";
	mydata[57]="<%=ii.getK57() %>";
	mydata[58]="<%=ii.getK58() %>";
	mydata[59]="<%=ii.getK59() %>";
	mydata[60]="<%=ii.getK60() %>";
	mydata[61]="<%=ii.getK61() %>";
	mydata[62]="<%=ii.getK62() %>";
	mydata[63]="<%=ii.getK63() %>";
	mydata[64]="<%=ii.getK64() %>";
	mydata[65]="<%=ii.getK65() %>";
	mydata[66]="<%=ii.getK66() %>";
	mydata[67]="<%=ii.getK67() %>";
	mydata[68]="<%=ii.getK68() %>";
	mydata[69]="<%=ii.getK69() %>";
	mydata[70]="<%=ii.getK70() %>";
	mydata[71]="<%=ii.getK71() %>";
	mydata[72]="<%=ii.getK72() %>";
	mydata[73]="<%=ii.getK73() %>";
	mydata[74]="<%=ii.getK74() %>";
	mydata[75]="<%=ii.getK75() %>";
	mydata[76]="<%=ii.getK76() %>";
	mydata[77]="<%=ii.getK77() %>";
	mydata[78]="<%=ii.getK78() %>";
	mydata[79]="<%=ii.getK79() %>";
	mydata[80]="<%=ii.getK80() %>";
	mydata[81]="<%=ii.getK81() %>";
	mydata[82]="<%=ii.getK82() %>";
	mydata[83]="<%=ii.getK83() %>";
	mydata[84]="<%=ii.getK84() %>";
	mydata[85]="<%=ii.getK85() %>";
	mydata[86]="<%=ii.getK86() %>";
	mydata[87]="<%=ii.getK87() %>";
	mydata[88]="<%=ii.getK88() %>";
	mydata[89]="<%=ii.getK89() %>";
	mydata[90]="<%=ii.getK90() %>";
	mydata[91]="<%=ii.getK91() %>";
	mydata[92]="<%=ii.getK92() %>";
	mydata[93]="<%=ii.getK93() %>";
	mydata[94]="<%=ii.getK94() %>";
	$("#j789").datebox("setValue", j789); 
	$("#j5").textbox("setValue", j5);
	$("#j6").textbox("setValue", j6);
	document.getElementById("k5").value=k5;
	for(i=6;i<=94;i++){
		$("#k"+i).textbox("setValue", mydata[i]);
	}
});
function save(){
	if(confirm("确认保存执行情况报表？")){
		document.getElementById("sort").value="save";
		return true;
	}
	else{
		return false;
	}
}
function check(){
	if(confirm("导出前须保存表单内容\n\n是否现在导出？")){
		return true;
	}
	else{
		return false;
	}
}
function sub(){
	var j5=$("#j5").val();
	var j6=$("#j6").val();
	var j789=$("#j789").datebox("getValue");
	if(j5==""){
		alert("提示：\n\n请填写填报人！");
		return false;
	}
	if(j789==""){
		alert("提示：\n\n请填写填报日期！");
		return false;
	}
	if(j6==""){
		alert("提示：\n\n请填写联系方式！");
		return false;
	}
	if(confirm("确认提交回复？")){
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

		<div class="topnav">
			<div class="path">
				<span><font>当前位置:</font></span> <span><font>项目管理&nbsp;&nbsp;
						&gt;&nbsp;&nbsp; 阶段管理</font></span>
			</div>
		</div>

		<div class="context">
			<div class="titlebox">
				<span class="title">项目执行情况报表（全年）</span>
			</div>
			<form action="" name="Form1" id="Form1">
				<input type="hidden" name="sort" id="sort">
				<div class="easyui-tabs" style="width: 100%">
					<div title="报告扉页" style="width: 100%">
						<div style="width: 100%">
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td class="tdname">项目名称：</td>
									<td class="tdcontent1"><%=ii.getJ1()%></td>
									<td class="tdname">承担单位：</td>
									<td class="tdcontent2"><%=ii.getJ3()%></td>
								</tr>
								<tr>
									<td class="tdname">计划类别：</td>
									<td class="tdcontent1"><%=ii.getJ2()%></td>
									<td class="tdname">单位负责人：</td>
									<td class="tdcontent2"><%=ii.getJ4()%></td>
								</tr>
								<tr>
									<td class="tdname">填报人：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="j5" id="j5">
									</td>
									<td class="tdname">填报日期：</td>
									<td class="tdcontent2"><input
										class="easyui-datebox mydatebox" type="text" name="j789"
										id="j789" editable="false" panelHeight="260" panelWidth="200">
									</td>
								</tr>
								<tr>
									<td class="tdname">联系电话：</td>
									<td class="tdcontent2" colspan="3"><input
										class="easyui-textbox mydatebox" type="text" name="j6" id="j6">
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div title="项目执行情况信息表" style="width: 100%">
						<div style="width: 100%">
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td colspan="4" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、项目基本情况</td>
								</tr>
								<tr>
									<td class="tdname">项目名称：</td>
									<td class="tdcontent1"><%=ii.getK1()%></td>
									<td class="tdname">承担单位：</td>
									<td class="tdcontent2"><%=ii.getK2()%></td>
								</tr>
								<tr>
									<td class="tdname">计划文号：</td>
									<td class="tdcontent1"><%=ii.getK3()%></td>
									<td class="tdname">项目编号：</td>
									<td class="tdcontent2"><%=ii.getK4()%></td>
								</tr>
							</table>
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>

									<td colspan="2" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二、项目进展情况</td>
								</tr>
								<tr>
									<td class="tdname">进展情况：</td>
									<td class="tdcontent2"><select class="mydatebox" id="k5"
										name="k5">
											<option value="按计划进行">按计划进行</option>
											<option value="进度超前">进度超前</option>
											<option value="拖延">拖延</option>
											<option value="停滞">停滞</option>
									</select></td>

								</tr>
							</table>
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td colspan="4" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三、项目资金情况（单位：万元）</td>
								</tr>
								<tr>
									<td class="tdname" style="font-weight: bold;">投资情况</td>
									<td class="tdname">当期计划投资</td>
									<td class="tdname">当期实际投资</td>
									<td class="tdname">执行期内累计投资</td>
								</tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">单位自筹：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k6" id="k6"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k7" id="k7"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k8" id="k8"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">市财政拨款：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k9" id="k9"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k10" id="k10"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k11" id="k11"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">国家、省财政拨款：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k12" id="k12"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k13" id="k13"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k14" id="k14"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">科技贷款：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k15" id="k15"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k16" id="k16"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k17" id="k17"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">创业投资：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k18" id="k18"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k19" id="k19"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k20" id="k20"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">横向创收：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k21" id="k21"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k22" id="k22"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k23" id="k23"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">合计：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k24" id="k24"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k25" id="k25"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k26" id="k26"></td>
								<tr>
								<tr>
									<td class="tdname" style="font-weight: bold;">市财政拨款使用情况</td>
									<td class="tdname">当期支出</td>
									<td class="tdname">执行期内累计支出</td>
									<td class="tdname">备注</td>
								</tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">1、研发设备费：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k27" id="k27"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k28" id="k28"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k29" id="k29"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">2、合作研发费：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k30" id="k30"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k31" id="k31"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k32" id="k32"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">3、材料费：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k33" id="k33"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k34" id="k34"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k35" id="k35"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">4、测试化验加工费：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k36" id="k36"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k37" id="k37"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k38" id="k38"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">5、燃料动力费：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k39" id="k39"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k40" id="k40"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k41" id="k41"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">6、差旅费：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k42" id="k42"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k43" id="k43"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k44" id="k44"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">7、会议费：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k45" id="k45"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k46" id="k46"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k47" id="k47"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">8、国际合作与交流费：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k48" id="k48"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k49" id="k49"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k50" id="k50"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">9、出版/文献/信息传播/知识产权事务费：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k51" id="k51"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k52" id="k52"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k53" id="k53"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">10、劳务费：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k54" id="k54"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k55" id="k55"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k56" id="k56"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">11、专家咨询费：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k57" id="k57"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k58" id="k58"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k59" id="k59"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">12、管理费：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k60" id="k60"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k61" id="k61"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k62" id="k62"></td>
								<tr>
								<tr>
									<td
										style="height: 35px; text-align: center; background-color: #F2F2F2;">合计：</td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k63" id="k63"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k64" id="k64"></td>
									<td style="text-align: center;"><input
										class="easyui-textbox" style="width: 200px" type="text"
										name="k65" id="k65"></td>
								<tr>
							</table>
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td colspan="4" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四、项目产出及成果情况</td>
								</tr>
								<tr>
									<td class="tdname">总投入：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k66"
										id="k66">万元</td>
									<td class="tdname">总产值：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k67"
										id="k67">万元</td>
								</tr>
								<tr>
									<td class="tdname">产品销售收入：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k68"
										id="k68">万元</td>
									<td class="tdname">工业增加值：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k69"
										id="k69">万元</td>
								</tr>
								<tr>
									<td class="tdname">净利润：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k70"
										id="k70">万元</td>
									<td class="tdname">缴税总额：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k71"
										id="k71">万元</td>
								</tr>
								<tr>
									<td class="tdname">创汇：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k72"
										id="k72">万美元</td>
									<td class="tdname">新增就业人数：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k73"
										id="k73">人</td>
								</tr>
								<tr>
									<td class="tdname">专利申请：</td>
									<td class="tdcontent1" colspan="3"><input
										class="easyui-textbox mydatebox" type="text" name="k74"
										id="k74">项</td>
								</tr>
								<tr>
									<td class="tdname">其中发明专利：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k75"
										id="k75">项</td>
									<td class="tdname">其中PCT专利：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k76"
										id="k76">项</td>
								</tr>
								<tr>
									<td class="tdname">专利授权：</td>
									<td class="tdcontent1" colspan="3"><input
										class="easyui-textbox mydatebox" type="text" name="k77"
										id="k77">项</td>
								</tr>
								<tr>
									<td class="tdname">其中发明专利：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k78"
										id="k78">项</td>
									<td class="tdname">其中PCT专利：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k79"
										id="k79">项</td>
								</tr>
								<tr>
									<td class="tdname">软件产品登记：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k80"
										id="k80">项</td>
									<td class="tdname">软件著作权登记：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k81"
										id="k81">项</td>
								</tr>
								<tr>
									<td class="tdname">发表科技论文：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k82"
										id="k82">篇</td>
									<td class="tdname">出版专著：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k83"
										id="k83">万字</td>
								</tr>
								<tr>
									<td class="tdname">形成新产品、新工艺等：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k84"
										id="k84">项</td>
									<td class="tdname">其中国家重点新产品：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k85"
										id="k85">项</td>
								</tr>
								<tr>
									<td class="tdname">科技奖励：</td>
									<td class="tdcontent1" colspan="3"><input
										class="easyui-textbox mydatebox" type="text" name="k86"
										id="k86">项</td>
								</tr>
								<tr>
									<td class="tdname">其中国家级：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k87"
										id="k87">项</td>
									<td class="tdname">其中省、市级：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k88"
										id="k88">项</td>
								</tr>
								<tr>
									<td class="tdname">制定标准：</td>
									<td class="tdcontent1" colspan="3"><input
										class="easyui-textbox mydatebox" type="text" name="k89"
										id="k89">项</td>
								</tr>
								<tr>
									<td class="tdname">其中国家：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k90"
										id="k90">项</td>
									<td class="tdname">其中行业：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k91"
										id="k91">项</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">建立示范基地、中试平台：</td>
									<td class="tdcontent1" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="k92"
										id="k92">个</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">建立实验室、工程技术研究中心：</td>
									<td class="tdcontent1" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="k93"
										id="k93">个</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">市级以上科技人才与创新团队：</td>
									<td class="tdcontent1" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="k94"
										id="k94">个</td>
								</tr>

							</table>
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>

									<td class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;五、项目执行情况总结（项目技术、经济指标完成情况；取得的重大突破，专利、成果等情况；市级以上科技人才与创新团队培育情况；资金使用情况；社会效益）</td>
								</tr>
								<tr>
									<td align="center" height="400px">
										<div class="tdcontent3">
											<textarea id="k95" name="k95" cols="40" rows="12"
												style="width: 90%; height: 100%;"><%=ii.getK95() %></textarea>
										</div>
									</td>

								</tr>
								<tr>
									<td align="center" colspan="4">
										<div
											style="margin-top: 20px; left: 40%; margin-bottom: 20px; float: left; position: relative">
											<a href="javascript:void(document.Form1.submit())"
												style="height: 35px; width: 70px; font-size: 16px;"
												class="easyui-linkbutton button" onclick="return sub();">提&nbsp;&nbsp;交</a>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="javascript:void(document.Form1.submit())"
												style="height: 35px; width: 70px; font-size: 16px"
												class="easyui-linkbutton button" onclick="return save();">保&nbsp;&nbsp;存</a>
										</div>
										<div
											style="margin-top: 20px; margin-bottom: 20px; float: right; position: relative; right: 20px">
											<a href="javascript:void(document.Form1.submit())"
												style="height: 35px; width: 100px; font-size: 16px"
												class="easyui-linkbutton button" onclick="return check();">导出为word</a>
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