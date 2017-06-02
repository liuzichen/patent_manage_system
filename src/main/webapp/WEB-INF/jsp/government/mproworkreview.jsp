<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创客项目作品评审</title>
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
function sub(){
	var result=document.getElementById("result").value;
	if(result==""){
		alert("提示：\n\n请填写评审结果！");
		return false;
	}
	if(confirm("确认提交评审成果？")){
		return true;
	}
	else{
		return false;
	}
}
</script>
<%String a="      111111111111111111111111111111111111111111111111\n\n\n\n\n11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"; 
int b=3;%>
</head>
<body>
	<div>
		<div class="topnav">
			<div class="path">
				<span><font>当前位置:</font></span> <span><font>创客创新项目管理&nbsp;&nbsp;
						&gt;&nbsp;&nbsp; 创新作品评审</font></span>
			</div>
		</div>
		<div class="context">
			<div class="titlebox">
				<span class="title">创新作品评审</span>
			</div>
			<div>
				<form action="" name="Form1" id="Form1">
					<div class="easyui-tabs" style="width: 100%">
						<div title="作品信息" style="width: 100%">
							<div style="width: 100%">
								<table class="persional" align="center" border="1"
									cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
									<tr>
										<td class="tdname">作品名称：</td>
										<td class="tdcontent1"></td>
										<td class="tdname">创客项目：</td>
										<td class="tdcontent2"></td>
									</tr>
									<tr>
										<td class="tdname">团队名称：</td>
										<td class="tdcontent1"></td>
										<td class="tdname">技术领域：</td>
										<td class="tdcontent2"></td>
									</tr>
									<tr>
										<td class="tdname">联系人：</td>
										<td class="tdcontent1"></td>
										<td class="tdname">联系电话：</td>
										<td class="tdcontent2"></td>
									</tr>
									<tr>
										<td class="tdname">电子邮箱：</td>
										<td class="tdcontent1"></td>
										<td class="tdname" colspan="2">
											<div align="center">
												<a href="#" class="easyui-linkbutton button"
													style="width: 120px; height: 25px">相关附件下载</a>
											</div>
										</td>

									</tr>
									<tr>
										<td class="tdname" align="center">作品简介</td>
										<td align="center" colspan="3">
											<div class="tdcontent3">
												<div
													style="word-wrap: break-word; word-break: break-all; margin: 0 auto; width: 95%;">
													<pre
														style="width: 100%; white-space: pre-wrap; font-size: 16px"><%=a %></pre>
												</div>
											</div>
									</tr>
								</table>
							</div>
						</div>
						<%for(int i=0;i<b;i++){%>
						<div title="专家意见<%=i+1 %>" style="width: 100%">
							<div style="width: 100%">
								<table class="persional" align="center" border="1"
									cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
									<tr>
										<td class="tdname">评审专家：</td>
										<td class="tdcontent1"></td>
										<td class="tdname">评审日期：</td>
										<td class="tdcontent2"></td>
									</tr>

									<tr>
										<td class="tdname" align="center" height="100px">专家意见与评述</td>
										<td align="center" colspan="3">
											<div class="tdcontent3">
												<div
													style="word-wrap: break-word; word-break: break-all; margin: 0 auto; width: 95%;">
													<pre
														style="width: 100%; white-space: pre-wrap; font-size: 16px"><%=a %></pre>
												</div>
											</div>
									</tr>

									<tr>
										<td class="tdname" align="center">主要问题及建议</td>
										<td align="center" colspan="3">
											<div class="tdcontent3">
												<div
													style="word-wrap: break-word; word-break: break-all; margin: 0 auto; width: 95%;">
													<pre
														style="width: 100%; white-space: pre-wrap; font-size: 16px"><%=a %></pre>
												</div>
											</div>
										</td>
									</tr>



								</table>
							</div>
						</div>
						<%} %>
						<div title="作品评审" style="width: 100%">
							<div style="width: 100%">
								<table class="persional" align="center" border="1"
									cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
									<tr>
										<td class="tdname" align="center">评审结果</td>
										<td align="center" height="100px" colspan="3">
											<div class="tdcontent3">
												<textarea id="result" name="result" cols="40" rows="12"
													style="width: 90%; height: 100%;"></textarea>
											</div>
										</td>
									</tr>
									<tr>
										<td class="tdname" align="center">作品评述</td>
										<td align="center" height="400px" colspan="3">
											<div class="tdcontent3">
												<textarea id="advice" name="advice" cols="40" rows="12"
													style="width: 90%; height: 100%;"></textarea>
											</div>
										</td>
									</tr>
									<tr>
										<td align="center" colspan="4">
											<div
												style="margin-top: 20px; margin-left: auto; margin-right: auto; margin-bottom: 20px">
												<a href="javascript:void(document.Form1.submit())"
													style="height: 35px; width: 70px; font-size: 16px;"
													class="easyui-linkbutton button" onclick="return sub();">提&nbsp;&nbsp;交</a>
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

	</div>
</body>
</html>