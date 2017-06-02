<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目执行情况报表（中期）</title>
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
	var mydata= new Array([50]);
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
	$("#j789").datebox("setValue", j789); 
	$("#j5").textbox("setValue", j5);
	$("#j6").textbox("setValue", j6);
	document.getElementById("k5").value=k5;
	for(i=6;i<=49;i++){
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
				<span class="title">项目执行情况报表（中期）</span>
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
									<td class="tdname">计划投资</td>
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
										style="height: 35px; text-align: center; background-color: #F2F2F2;">其他：</td>
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
										style="height: 35px; text-align: center; background-color: #F2F2F2;">合计：</td>
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
							</table>
							<table class="persional" align="center" border="1"
								cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
								<tr>
									<td colspan="4" class="tdtitle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四、项目产出及成果情况</td>
								</tr>
								<tr>
									<td class="tdname">总投入：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k21"
										id="k21">万元</td>
									<td class="tdname">总产值：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k22"
										id="k22">万元</td>
								</tr>
								<tr>
									<td class="tdname">产品销售收入：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k23"
										id="k23">万元</td>
									<td class="tdname">工业增加值：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k24"
										id="k24">万元</td>
								</tr>
								<tr>
									<td class="tdname">净利润：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k25"
										id="k25">万元</td>
									<td class="tdname">缴税总额：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k26"
										id="k26">万元</td>
								</tr>
								<tr>
									<td class="tdname">创汇：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k27"
										id="k27">万美元</td>
									<td class="tdname">新增就业人数：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k28"
										id="k28">人</td>
								</tr>
								<tr>
									<td class="tdname">专利申请：</td>
									<td class="tdcontent1" colspan="3"><input
										class="easyui-textbox mydatebox" type="text" name="k29"
										id="k29">项</td>
								</tr>
								<tr>
									<td class="tdname">其中发明专利：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k30"
										id="k30">项</td>
									<td class="tdname">其中PCT专利：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k31"
										id="k31">项</td>
								</tr>
								<tr>
									<td class="tdname">专利授权：</td>
									<td class="tdcontent1" colspan="3"><input
										class="easyui-textbox mydatebox" type="text" name="k32"
										id="k32">项</td>
								</tr>
								<tr>
									<td class="tdname">其中发明专利：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k33"
										id="k33">项</td>
									<td class="tdname">其中PCT专利：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k34"
										id="k34">项</td>
								</tr>
								<tr>
									<td class="tdname">软件产品登记：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k35"
										id="k35">项</td>
									<td class="tdname">软件著作权登记：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k36"
										id="k36">项</td>
								</tr>
								<tr>
									<td class="tdname">发表科技论文：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k37"
										id="k37">篇</td>
									<td class="tdname">出版专著：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k38"
										id="k38">万字</td>
								</tr>
								<tr>
									<td class="tdname">形成新产品、新工艺等：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k39"
										id="k39">项</td>
									<td class="tdname">其中国家重点新产品：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k40"
										id="k40">项</td>
								</tr>
								<tr>
									<td class="tdname">科技奖励：</td>
									<td class="tdcontent1" colspan="3"><input
										class="easyui-textbox mydatebox" type="text" name="k41"
										id="k41">项</td>
								</tr>
								<tr>
									<td class="tdname">其中国家级：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k42"
										id="k42">项</td>
									<td class="tdname">其中省、市级：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k43"
										id="k43">项</td>
								</tr>
								<tr>
									<td class="tdname">制定标准：</td>
									<td class="tdcontent1" colspan="3"><input
										class="easyui-textbox mydatebox" type="text" name="k44"
										id="k44">项</td>
								</tr>
								<tr>
									<td class="tdname">其中国家：</td>
									<td class="tdcontent1"><input
										class="easyui-textbox mydatebox" type="text" name="k45"
										id="k45">项</td>
									<td class="tdname">其中行业：</td>
									<td class="tdcontent2"><input
										class="easyui-textbox mydatebox" type="text" name="k46"
										id="k46">项</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">建立示范基地、中试平台：</td>
									<td class="tdcontent1" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="k47"
										id="k47">个</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">建立实验室、工程技术研究中心：</td>
									<td class="tdcontent1" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="k48"
										id="k48">个</td>
								</tr>
								<tr>
									<td class="tdname" colspan="2">市级以上科技人才与创新团队：</td>
									<td class="tdcontent1" colspan="2"><input
										class="easyui-textbox mydatebox" type="text" name="k49"
										id="k49">个</td>
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
											<a href=""
												style="height: 35px; width: 100px; font-size: 16px"
												class="easyui-linkbutton button">相关附件上传</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
												href="javascript:void(document.Form1.submit())"
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