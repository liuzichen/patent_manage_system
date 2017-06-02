<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创客项目详情查看</title>
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
<%String a="      111111111111111111111111111111111111111111111111\n\n\n\n\n11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"; %>
</head>
<body>
	<div>
		<div class="topnav">
			<div class="path">
				<span><font>当前位置:</font></span> <span><font>创客项目专家分配&nbsp;&nbsp;
						&gt;&nbsp;&nbsp;创客项目详情查看</font></span>
			</div>
		</div>
		<div class="context">
			<div class="titlebox">
				<span class="title">项目作品查看</span>
			</div>
			<div>
				<form action="" name="Form1" id="Form1">
					<table class="persional" align="center" border="1" cellpadding="0"
						cellspacing="0" bordercolor="#DEE5EA">
						<tr>
							<td class="tdname">作品名称：</td>
							<td class="tdcontent1"><%=request.getAttribute("title")%></td>
							<td class="tdname">创客项目：</td>
							<td class="tdcontent2"><%=request.getAttribute("project")%></td>
						</tr>
						<tr>
							<td class="tdname">团队名称：</td>
							<td class="tdcontent1"><%=request.getAttribute("team")%></td>
							<td class="tdname">技术领域：</td>
							<td class="tdcontent2"><%=request.getAttribute("field")%></td>
						</tr>
						<tr>
							<td class="tdname">联系人：</td>
							<td class="tdcontent1"><%=request.getAttribute("contact")%></td>
							<td class="tdname">联系电话：</td>
							<td class="tdcontent2"><%=request.getAttribute("phone")%></td>
						</tr>
						<tr>
							<td class="tdname">电子邮箱：</td>
							<td class="tdcontent1"><%=request.getAttribute("email")%></td>
							<td class="tdname" colspan="2">
								<div align="center">
									<a href="#" class="easyui-linkbutton button"
										style="width: 120px; height: 25px">下载相关附件查看</a>
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
				</form>
			</div>
		</div>

	</div>
</body>
</html>