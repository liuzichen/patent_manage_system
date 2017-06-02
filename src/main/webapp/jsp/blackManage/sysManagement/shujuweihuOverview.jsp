<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据库维护</title>
	
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
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
               	
                pageList: [10, 20,30,50],
                pageSize: 10,
                sortName: 'name',
                sortOrder: 'asc',
                remoteSort: true,
                idField: 'id',
                checkOnSelect:false, 
                method:'get',
                frozenColumns :[[
					{field :'ck',checkbox : true}, 
				]],
				columns: [[
//{field : 'id', title : '编号',width :160,align:'center'},         
              
				{field : 'name',title : '内容',width :439,align:'center'},
				
              
          		]],
          		toolbar: [{
             		text: '<select style="width:150px;" id="state"  name="state" form="Form1"><option value="f">领域信息表</option><option value="m">专业表</option></select>',
           	  },
              {
                  id: 'btnSearch',
                  text: '搜索',
                  disabled: false,
                  iconCls: 'icon-search',
                  handler: function () {
                	  sear();
                  }
              },'--',
              {
            	  id: 'btnadd',
              	  text: "新建数据",
              	  iconCls: "icon-add",
              	  handler: function () {
              		window.location.href="<%=request.getContextPath()%>/jsp/blackManage/sysManagement/shujuweihuDeliver.jsp"; 
              	  }
                },'-',
                
                {
                	
                  id: 'btncut',
              	  text: "删除数据",
              	  iconCls: "icon-cut",
              	handler: function () {
            		  var post= $('#roleList').datagrid('getChecked');
            		  var state=$("#state").val();
            		  if(post.length==0){
            			  alert("提示：\n\n请选择删除对象");
            		  }
            		  else{
            		  var id = new Array(post.length);
            		 
            			  for(var i=0;i<post.length;i++)
            			  {
            			  id[i]=post[i].id; 
            			  } 
            		  
            		 
                  $.ajax({
                      url:'<%=request.getContextPath()%>/manageMajor/deleteMajorList',
                      data:{"remove":id,"state":state},
                      type: 'post',
                      dataType : "text",
                      traditional:true,
                    	error: function(XMLHttpRequest, textStatus, errorThrown) {
        	       			alert(XMLHttpRequest.status);
        	       			alert(XMLHttpRequest.readyState);
        	       			alert(textStatus);
        	       		},
               			   
                        success: function (msg) {
                        	
                        	sear();
         					
                            
                     
                        }
                    });
                    $('#roleList').datagrid('clearSelections').datagrid("clearChecked");
              	  }                  
              	}}],
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
            
		function editUser(index){  
		    $('#roleList').datagrid('selectRow',index);
		    var row = $('#roleList').datagrid('getSelected');  
		    if (row){  
		        $('#dlg').dialog('open').dialog('setTitle','修改数据库信息');  
		        $('#fm').form('load',row);  
		        url = '#?id='+row.id;  
		    }  
		}      
		
        function getSelections() {
            var ids = [];
            var rows = $('').datagrid('getSelections');
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
        	var state=document.getElementById("state").value;
            $.ajax({
                url:'<%=request.getContextPath()%>/manageMajor/MajorList',
                data:{"pageNum":page,"pageSize":size,"sort":sort,"order":order,"state":state},
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
     <div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >系统管理&nbsp;&nbsp; &gt;&nbsp;&nbsp;数据库维护</font></span>
	   </div>
     </div> 
		 
    <div class="context" style="width:500px;">
     <div class="titlebox" style="width:100%; margin:0 auto;"><span class="title" >数据库维护</span></div>
       	<!-- 显示总览 -->
		<table id="roleList" style="width:100%;" >
	    
	    </table>
	    
	
   </div>   
 	     
 </div>
</body>
</html>