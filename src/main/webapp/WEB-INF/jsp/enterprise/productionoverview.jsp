<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成果管理总览</title>

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
               	
                pageList: [10, 20,30,50],
                pageSize: 10,
                sortName: 'DATE',
                sortOrder: 'asc',
                remoteSort: true,
                idField: 'CODE',
                checkOnSelect:false, 
                method:'get',
                frozenColumns :[[
					{field :'ck',checkbox : true}, 
				]],
				columns: [[
				//{field : 'CODE', title : '编号',width :160,align:'center'},
				{field : 'TITLE', title : '成果名称',width :336,align:'center'},
				{field : 'TITLE', title : '科技项目名称',width :336,align:'center'},
				{field : 'STATE',title : '成果类别',width : 208,align:'center'},  
				 { field: 'opt', title: '详情了解', width: 160, align: 'center',
                    formatter: function (value,row,index) {
                    	return "<a href='#' onclick='alert("+index+")'>查看详情</a>";  
                    }
                }
              
          		]],
          		toolbar: [ {
            		text: '<input  type="text" style="width:150px;" id="title"  name="title" form="Form1" placeholder="请输入科技项目名称查询">',
          	  },{
          		text: "搜索",
            	  iconCls: "icon-search",
            	  handler: function () {
            		  var title=document.getElementById("title").value;
            		  if(title==""){
            			  alert("请输入项目名称");
            		  }
            		  else{  
            		      sear();
            		  }
            	  }
          	  },'-',{//在dategrid表单的头部添加按钮
              	  text: "提交科研成果",
              	  iconCls: "icon-add",
              	  handler: function () {
              		var title=document.getElementById("title").value;
          		  	if(title==""){
          			  alert("请先输入想要添加科研成果的项目名称");
          		 	 }
          		  	else{
              		  window.location.href=""; 
          		  	}
              	  }
                },'-',
                {
                	  text: "删除科研成果",
                	  iconCls: "icon-cut",
                	  handler: function () {              		  
                		  var post= $('#roleList').datagrid('getChecked');
                		  var id = new Array([post.length]);                		 
                		  for(var i=0;i<post.length;i++){
                			  id[i]=post[i].CODE;
                			  alert(id[i]);
                		  }
                		var opts = $('#roleList').datagrid('options');
                  	var page=opts.pageNumber;
                  	var size=opts.pageSize;
                  	var sort=opts.sortName;
                  	var order=opts.sortOrder;
                  	if(post.length!=0){
                      $.ajax({
                          url:'<%=request.getContextPath()%>/test/test9.json',
                          data:{"pageNum":page,"pageSize":size,"sort":sort,"order":order,"remove":id},
                          type: 'post',
                          dataType : "text",
                          traditional:true,
                      	error: function(XMLHttpRequest, textStatus, errorThrown) {
          	       			alert(XMLHttpRequest.status);
          	       			alert(XMLHttpRequest.readyState);
          	       			alert(textStatus);
          	       		},
                 			   
                          success: function (msg) {
                          	
                          	var result = eval("("+msg+")");
          					
           						$("#roleList").datagrid("loadData",result);
           					
                              
                       
                          }
                      });}
                      $('#roleList').datagrid('clearSelections').datagrid("clearChecked");
                	   
                	  }
                  }
                ],
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
        	$('#roleList').datagrid('getPager').pagination( {
        		pageList: [10, 20,30,50],
                pageSize: 10,
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
        	var title=document.getElementById("title").value;
            $.ajax({
                url:'<%=request.getContextPath()%>/test/test9.json',
                data:{"pageNum":page,"pageSize":size,"sort":sort,"order":order,"title":title},
                type: 'post',
                dataType : "text",
            	error: function(XMLHttpRequest, textStatus, errorThrown) {
	       			alert(XMLHttpRequest.status);
	       			alert(XMLHttpRequest.readyState);
	       			alert(textStatus);
	       		},
       			   
                success: function (msg) {
                	
                	var result = eval("("+msg+")");
					
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
				<span><font>当前位置:</font></span> <span><font>科技项目管理&nbsp;&nbsp;
						&gt;&nbsp;&nbsp;成果管理</font></span>
			</div>
		</div>

		<div class="context" style="width: 1100px;">
			<div class="titlebox" style="width: 100%; margin: 0 auto;">
				<span class="title">成果总览</span>
			</div>
			<!-- 显示总览 -->
			<table id="roleList" style="width: 100%;">

			</table>


		</div>

	</div>
</body>
</html>