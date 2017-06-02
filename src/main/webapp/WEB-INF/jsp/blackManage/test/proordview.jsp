<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>一般项目查看</title>
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

</script>
<%String a="      11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"; 
  int b=3;
  %>
</head>
<body>
	<div>
		<div class="topnav">
			<div class="path">
				<span><font>当前位置:</font></span> <span><font>一般项目管理&nbsp;&nbsp;
						&gt;&nbsp;&nbsp; 项目总览</font></span>
			</div>
		</div>
		<div class="context">
			<div class="titlebox">
				<span class="title">企业一般项目查看</span>
			</div>
			<div>
				<form action="" name="Form1" id="Form1">
					<div class="easyui-tabs" style="width: 100%">
						<div title="项目详细信息" style="width: 100%">
							<div style="width: 100%">
								<table class="persional" align="center" border="1"
									cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
									<tr>
										<td class="tdname">项目名称：</td>
										<td class="tdcontent1" colspan="3"></td>
									</tr>
									<tr>
										<td class="tdname">承建单位：</td>
										<td class="tdcontent1"></td>
										<td class="tdname">技术领域：</td>
										<td class="tdcontent2"></td>
									</tr>
									<tr>
										<td class="tdname">单位负责人：</td>
										<td class="tdcontent1"></td>
										<td class="tdname">联系电话：</td>
										<td class="tdcontent2"></td>
									</tr>
									<tr>
										<td class="tdname">计划年度：</td>
										<td class="tdcontent1"></td>
										<td class="tdname" colspan="2">
											<div align="center">
												<a href="#" class="easyui-linkbutton button"
													style="width: 120px; height: 25px">相关附件下载</a>
											</div>
										</td>

									</tr>
									<tr>
										<td class="tdname" align="center">项目简介</td>
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
						<div title="专家评审结果" style="width: 100%">
							<div style="width: 100%">
								<% if(b==0){%>
								<div class="tdcontent3" style="background-color: #F7F7F7;"
									align="center">
									<div
										style="word-wrap: break-word; word-break: break-all; margin: 0 auto; width: 95%;">
										<pre
											style="width: 100%; white-space: pre-wrap; font-size: 14px">暂未完成专家评审，请等待评审结果！</pre>
									</div>
								</div>
								<%}  %>
								<%if(b!=0){%>
								<table class="persional" align="center" border="1"
									cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
									<%for(int i=0;i<b;i++){ %>
									<tr>
										<td class="tdname" align="center">专家意见<%=i+1 %></td>
										<td align="center" colspan="3">
											<div class="tdcontent3">
												<div
													style="word-wrap: break-word; word-break: break-all; margin: 0 auto; width: 95%;">
													<pre
														style="width: 100%; white-space: pre-wrap; font-size: 16px"><%=a %></pre>
												</div>
											</div>
									</tr>
									<%} %>
								</table>
								<%} %>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>

	</div>
</body>
</html>