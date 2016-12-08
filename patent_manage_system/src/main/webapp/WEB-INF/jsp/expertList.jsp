<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>专家列表</title>

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

$(function () {                   
            $('#roleList').datagrid({            	
                title: '',
                loadMsg: "数据加载中，请稍后……",
                nowrap: false,
                striped: true,
                collapsible: true,
               	
                pageList: [1,2,3,4],
                pageSize: 1,
                sortName: 'time',
                sortOrder: 'asc',
                remoteSort: true,
                idField: 'CODE',
                checkOnSelect:false, 
                method:'get',
                frozenColumns :[[
					{field :'ck',checkbox : true}, 
				]],
				columns: [[
				//{field : 'id', title : '编号',width :50,align:'center'},
				{field : 'name', title : '姓名',width :100,align:'center'},
				{field : 'company', title : '单位',width :100,align:'center'},
				{field : 'title', title : '职称',width :100,align:'center'},
				{field : 'major',title : '专业领域',width : 100,align:'center',sortable:true},	
				 { field: 'opt', title: '详情了解', width: 100, align: 'center',
                    formatter: function (value,row,index) {
                    	return "<a href='<%=request.getContextPath()%>/jsp/expert/newsview.jsp' >查看详情</a>";  
                    }
                }              
          		]],          	
                pagination: true,
                rownumbers: true,
                onSortColumn:function(sort, order){
                	sear();
                },
                onLoadSuccess: function () {
                	
                    $('.datagrid-toolbar').append($('#txtSearch'));
                    $('#txtSearch').show();
                }
            });
            sear();
        	$('#roleList').datagrid('getPager').pagination( {
        		pageList: [1, 2,3,4],
                pageSize: 1,
				beforePageText : '第',
				afterPageText : '页    共 {pages} 页',
				displayMsg : '当前显示从{from}到{to}共{total}记录',
				onBeforeRefresh : function(pageNumber, pageSize) {
					$('#roleList').datagrid('clearSelections').datagrid("clearChecked");
					
				},
				onSelectPage:function(pageNum, pageSize){
					var gridOpts = $('#roleList').datagrid('options');
					gridOpts.pageNumber = pageNum; 
					gridOpts.pageSize = pageSize;
					sear();
				}
				

			});
                                                 
            });
        function getSelections() {
            var ids = [];
            var rows = $('#roleList').datagrid('getSelections');
            for (var i = 0; i < rows.length; i++) {
                ids.push(rows[i].RoleCode);
            }
            return ids.join(',');
        }
        function sear(){
        	var opts = $('#roleList').datagrid('options');
        	var page=opts.pageNumber;
        	var size=opts.pageSize;
        	var sort=opts.sortName;
        	var order=opts.sortOrder;
        	var state=1;
            $.ajax({
                url:'expert/list',
                data:{"pageNum":page,"pageSize":size,"sort":sort,"order":order,"state":state},
                type: 'post',
                dataType : "text",
            	error: function(XMLHttpRequest, textStatus, errorThrown) {
	       			alert(XMLHttpRequest.status);
	       			alert(XMLHttpRequest.readyState);
	       			alert(textStatus);
	       		},
       			   
                success: function (data) {     	                  
                	 var result = eval("("+data+")");                	
 					 $("#roleList").datagrid("loadData",result);    

                }
            });
        }
 </script>



</head>

<body>
   
	<div>
		<div class="topnav">
			<div class="path">
				<span><font>当前位置:</font></span> <span><font>信息与公告&nbsp;&nbsp;
						&gt;&nbsp;&nbsp;系统公告</font></span>
			</div>
		</div>

		<div class="context" style="width: 700px;">
			<div class="titlebox" style="width: 100%; margin: 0 auto;">
				<span class="title">专家列表</span>
			</div>
			<!-- 显示总览 -->
			<table id="roleList" style="width: 100%;">

			</table>
               ${result}

		</div>

	</div>
</body>
</html>