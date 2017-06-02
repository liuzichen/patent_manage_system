<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成果查看</title>
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
<%String a="      11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"; 
  int b=3;
  %>
<script type="text/javascript">

</script>
</head>
<body>
	<div>
		<div class="topnav">
			<div class="path">
				<span><font>当前位置:</font></span> <span><font>科技项目管理&nbsp;&nbsp;
						&gt;&nbsp;&nbsp; 成果管理</font></span>
			</div>
		</div>
		<div class="context">
			<div class="titlebox">
				<span class="title">科技项目成果查看</span>
			</div>
			<div>
				<form action="" name="Form1" id="Form1">
					<input type="hidden" name="id" id="id">
					<table class="persional" align="center" border="1" cellpadding="0"
						cellspacing="0" bordercolor="#DEE5EA">
						<tr>
							<td class="tdname">成果名称：</td>
							<td class="tdcontent1" colspan="3"></td>
						</tr>
						<tr>
							<td class="tdname">成果类别：</td>
							<td class="tdcontent1"></td>
							<td class="tdname">授权或发表时间：</td>
							<td class="tdcontent2"></td>
						</tr>
						<tr>
							<td class="tdname">证书号</td>
							<td class="tdcontent1"></td>
							<td class="tdname" colspan="2">
								<div align="center">
									<a href="#" class="easyui-linkbutton button"
										style="width: 120px; height: 25px">相关附件下载</a>
								</div>
							</td>
						</tr>
						<tr>
							<td class="tdname" align="center">成果详细信息</td>
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