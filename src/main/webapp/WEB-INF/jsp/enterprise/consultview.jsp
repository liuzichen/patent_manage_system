<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>问题咨询查看</title>
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
</head>
<%String a="1111111\n   1111";
int b=3;
%>
<body>
	<div>

		<div class="topnav">
			<div class="path">
				<span><font>当前位置:</font></span> <span><font>专家咨询&nbsp;&nbsp;
						&gt;&nbsp;&nbsp; 我的问题咨询提交</font></span>
			</div>
		</div>

		<div class="context">
			<div class="titlebox">
				<span class="title">咨询问题查看</span>
			</div>
			<form action="" name="Form1" id="Form1">
				<div style="width: 100%">
					<table class="persional" align="center" border="1" cellpadding="0"
						cellspacing="0" bordercolor="#DEE5EA">
						<tr>
							<td class="tdname">标题：</td>
							<td class="tdcontent1"></td>
							<td class="tdname">提问时间：</td>
							<td class="tdcontent1"></td>
						</tr>
						<tr>
							<td class="tdname">咨询内容：</td>
							<td colspan="3">
								<div class="tdcontent3">
									<div
										style="word-wrap: break-word; word-break: break-all; margin: 0 auto; width: 95%;">
										<pre style="width: 100%; white-space: pre-wrap;"><%=a %></pre>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td class="tdname">专家回复：</td>
							<td colspan="3">
								<div class="tdcontent3">
									<div
										style="word-wrap: break-word; word-break: break-all; margin: 0 auto; width: 95%;">
										<pre style="width: 100%; white-space: pre-wrap;">
											<%if(b==3){%><%=a %>
											<%}else{%>专家还未回复，请耐心等待。<%} %>
										</pre>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</body>
</html>