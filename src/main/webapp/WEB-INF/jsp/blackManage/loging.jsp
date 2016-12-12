<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/tipsdiv.js"></script>
   
   
   <style type="text/css">
    
    body {
    margin:0;
    padding:0px; 
    font:12px "宋体", arial,sans-serif;
    overflow:hidden;
    }
    
   .topnav{border-color:#000;
			 border:1px; 
			 background-color:#E9F1F5;
			 height:30px;
			 width:100%;
			 position:absolute;
			 top:0px;
			 left:0px;
		}
		
	.path{
			width: 494px; 
			position: relative;
			top: 8px;
			visibility: visible;
			color:#00B2EE;
		}
   
   font{
		font-size:12px;
		margin-left:15px;
		margin-top:50px;
		}
  
    div,ul,li,form,input{padding:0; margin:0;}
    
    table,td,tr{font-size:12px;}
    
    ul,li{list-style-type:none;}
    
    img{border:0;}
    
    input{margin:0;padding:0}
    
    input,img{line-height:normal}
    
    .clear{clear:both;}
    
    a{color:#252525; text-decoration:none;}
    
    a:visited{text-decoration:none;}
    
    a:hover{color:#ff6600;text-decoration:underline;}
    
    a:active{color:#252525;}
    
    /*栏目导航*/
    
 .maintitlebg{
	    line-height:30px;
	 	height:30px;
	 	width:80%;
	 	margin-left:120px;
	 	margin-top:42px;
	 	background:url(<%=request.getContextPath()%>/image/35.jpg) repeat-x  ; 
	    color:#0060ae; font-weight:bold; font-size:16px;
     }
     
   .maintitlebg span{
	    float:right; 
	    margin-right:5px; color:#c3c3c3;
	    font-size:14px;
	    font-weight:normal
    }
    
    
     
   .title1icon{
	    background:url(<%=request.getContextPath()%>/image/31.jpg) no-repeat;
	    width:30px; 
	    height:30px; 
	    margin-right:10px;
	    margin-left:0px;
	    float:left;
     }
     

    /*列表*/
    
    .titlebox{
	     margin:auto;
	     height:360px; 
	     margin-top:5px
	     width:80%;
	 	 margin-left:120px;
     }
    
     .titlebox1{
	     margin:auto;
	     height:120px; 
	     margin-top:5px
     }
     
      .titlebox1 li{
	    LINE-HEIGHT:60px;
		HEIGHT:40px;
		padding-left:120px;
	    font-size:14px;
    }
    
    
    .titlebox li{
	    background:url(<%=request.getContextPath()%>/image/47.jpg) no-repeat 0px 12px ;
	    border-bottom:1px;
	    LINE-HEIGHT:26px;
		HEIGHT: 30px;padding-left:12px;
		width:88%;
	    font-size:14px;
    }
    
    
    
    .titlebox li span{
	    float:left;
	    color:#b7b7b7;
	    font-size:14px;    
    }
    

    /*快捷菜单*/
    
    .srortcut4box{padding:10px}
    
    .srortcut4box li{
	    text-align:center; 
	    width:15%; 
	    height:45px;
	    float:left;
	    margin-left:80px;
	    position:relative;
	    font-size:14px;    
	    
    }
   
   .srortcut4box img{margin-bottom:8px;}
    
  </style>
</head>
<body>
<!--页面导航-->
 <div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >后台管理首页</font></span>
	   </div>
 </div>

<form method="post" action="#" id="form1">
 <div style="margin-top:42px">
   <input type="hidden" name="hidxh" id="hidxh" value=" " />

    <div>
        
        <table width="100%" border="0" cellpadding="0" cellspacing="0">    
  		  <tr>
            <td valign="top" style="padding-left: 5px;">      
               <div class="titlebox1">
                   <ul>
                      <li><span><image src="#"></image>XXX,欢迎使用智慧科技云服务平台管理系统</span><span>&nbsp;&nbsp;</span><a href=''>账户设置</a></li>
                      <li><span><image src="#"></image>您上次登录的时间为：</span><span>（不是您登录？</span><a href=''>请点击这里</a><span>）</span></li>
                   </ul>
                   
                </div>
                   
                <hr/>    
                
                <div class="maintitlebg1" style="margin-top:42px;margin-left:120px;padding-bottom:20px;font-size:16px">快捷方式</div>
            	  <div class="srortcut4box" style="margin-top: 10px;">
              		 <ul>
                    <li><a href="#">
                        <img src="<%=request.getContextPath()%>/image/21.jpg" style="position:relative;float:left; margin-left:35px;  margin-bottom:auto;margin-top:-22px" height="50px" width="50px" />科技项目总览</a></li>
                    <li><a href="#">
                        <img src="<%=request.getContextPath()%>/image/22.jpg" style="position:relative;float:left; margin-left:35px; margin-bottom:auto; margin-top:-22px" height="50px" width="50px" >创客信息总览</a></li>
                    <li><a href="expert/list">
                        <img src="<%=request.getContextPath()%>/image/23.jpg" style="position:relative;float:left; margin-left:35px; margin-top:-22px" height="50px" width="50px" >专家信息总览</a></li>
              	     <li><a href="#">
                        <img src="<%=request.getContextPath()%>/image/23.jpg" style="position:relative;float:left; margin-left:35px; margin-top:-22px" height="50px" width="50px" >系统公告总览</a></li>
              	    </ul>
               	<div class="clear"></div>
          		 </div>

                   </td>
               </tr>
                
                   
 				<tr>
                <td valign="top" style="padding-left: 5px;">
                    <div class="maintitlebg">系统信息</div>
                    <div class="titlebox" style="width:79.9%;height:100%;border:1px solid #797979">
                      <ul>
                         <li><span>操作系统：</span><span>&nbsp;&nbsp;</span><a href=''></a></li>
                         <li><span>服务器时间-语言：</span><span>&nbsp;&nbsp;</span><a href=''></a></li>
                         <li><span>上传附件最大限制：</span><span>&nbsp;&nbsp;</span><a href=''></a></li>
                         <li><span>北京时间：</span><span>&nbsp;&nbsp;</span><a href=''></a></li>
                      </ul>
                    </div>
                </td>
               </tr>
           </table>
    </div>
</div>
    </form>
    
</body>
</html>
