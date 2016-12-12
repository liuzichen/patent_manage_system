<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>专家简介</title>
	
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
	
<script type="text/javascript">

$(function () {
            
            
            
            $('#roleList').datagrid({
            	
                title: '',
                loadMsg: "数据加载中，请稍后……",
                nowrap: false,
                striped: true,
                collapsible: true,
                url:'<%=request.getContextPath()%>/test/test9.json',	
                pageList: [10, 20,30,50],
                pageSize: 10,
                sortName: 'DATE',
                sortOrder: 'asc',
                remoteSort: false,
                idField: 'CODE',
                checkOnSelect:false, 
                frozenColumns :[[
					{field :'ck',checkbox : true}, 
						]],
				columns: [[
				//{field : 'CODE', title : '编号',width :160,align:'center'},
				{field : 'CONTENT', title : '内容',width :336,align:'center'},
				{field : 'AREA',title : '领域',width : 160,align:'center',sortable:true}, 
				{field : 'DATE',title : '时间',width : 208,align:'center',sortable:true},
				 { field: 'opt', title: '详情了解', width: 160, align: 'center',
                    formatter: function (value,row,index) {
                    	 
                    	return "<a href='#' onclick=openDialog('"+index+"')>查看</a>";  
                    }
                }
              
          ]],
          toolbar: [{//在dategrid表单的头部添加按钮
        	  text: "添加",
        	  iconCls: "icon-add",
        	  handler: function () {
        		  
        	  }
          },'-',
          {
        	  text: "删除",
        	  iconCls: "icon-cut",
        	  handler: function () {
        		  var post= $('#roleList').datagrid('getSelections');
        		  alert(post.length);
        		  for(var i=0;i<post.length;i++){
        			  var id = new Array([post.length]);
        			  id[i]=post[i].CODE;
        			  alert(id[i]);
        		  }
        	  }
          }],
                pagination: true,
                rownumbers: true,
                onLoadSuccess: function () {
                    $('.datagrid-toolbar').append($('#txtSearch'));
                    $('#txtSearch').show();
                }
            });
            
        	$('#roleList').datagrid('getPager').pagination( {
					beforePageText : '第',
					afterPageText : '页    共 {pages} 页',
					displayMsg : '当前显示从{from}到{to}共{total}记录',
					onBeforeRefresh : function(pageNumber, pageSize) {
						$('#roleList').datagrid('clearSelections');
				},
				

			});
                                                 
            });
function openDialog(rowIndex){  
    var a = $('#roleList').datagrid('selectRow',rowIndex);  
   var row = $('#roleList').datagrid('getSelected');  //解决问题1  
    alert(row.CODE);  
}

            
        function getSelections() {
            var ids = [];
            var rows = $('#roleList').datagrid('getSelections');
            for (var i = 0; i < rows.length; i++) {
                ids.push(rows[i].RoleCode);
            }
            return ids.join(',');
        }

        
 </script>
	
	
	
</head>

<body>

 <div class="commonPage">
 
     <div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >基本信息管理&nbsp;&nbsp; &gt;&nbsp;&nbsp; 专家咨询总览</font></span>
	   </div>
     </div> 
		 
    <div class="context">
     <div class="titlebox" style="width:100%; margin:0 auto;"><span class="title" style="font-size:16px;height:35px;">专家咨询总览</span></div>
       	<!-- 显示总览 -->
		<table id="roleList" style="width:100%;" >
	    
	    </table>
	    
	
   </div>   
 	     
 </div>
</body>
</html>