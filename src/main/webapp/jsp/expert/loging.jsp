<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title> </title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    
   <style type="text/css">
   
    body {margin:0;padding:15px 15px 0px 15px; font:12px "宋体", arial,sans-serif;}
    
    div,ul,li,form,input{padding:0; margin:0;}
    form{margin-top:40px;}
    table,td,tr{font-size:12px;}
    td{margin-top:40px; margin-left:20px;}
    ul,li{list-style-type:none;}
    
    img{border:0;}
    
    input{margin:0;padding:0}
    
    input,img{line-height:normal}
    
    em{font-style:normal;}
    
    .clear{clear:both;}
    
    a{color:#252525; text-decoration:none;}
    
    a:visited{text-decoration:none;}
    
    a:hover{color:#ff6600;text-decoration:underline;}
    
    a:active{color:#252525;}
    
    /*栏目导航*/
    .maintitlebg{
	    line-height:30px;
	 	height:30px;background:url(<%=request.getContextPath()%>/image/35.jpg) repeat-x ; 
	    color:#0060ae; font-weight:bold; font-size:16px;
     }
     
   .maintitlebg span{
	    float:right; 
	    margin-right:5px; color:#c3c3c3;
	    font-size:14px;
	    font-weight:normal
    }
    
    
   .maintitlebg b{
	    background:url(images/dataicon.png); 
	    width:17px; 
	    height:20px; 
	    display:block;
	    margin-left:5px;
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
	     height:156px; 
	     margin-top:5px
     }
    
    
    .titlebox li{
	    background:url(<%=request.getContextPath()%>/image/46.jpg) no-repeat 0px 12px ;
	    border-bottom:1px dashed #e2e2e2;
	    LINE-HEIGHT: 26px;
		HEIGHT: 30px;padding-left:12px;
	    font-size:14px;
    }
    
    .titlebox li:hover{
   		background:url(<%=request.getContextPath()%>/image/47.jpg) no-repeat 0px 12px 
    }
    
    .titlebox li span{
	    float:right;
	    color:#b7b7b7;
	    font-size:12px;    
    }
    

    /*快捷菜单*/
    
    .srortcut4box{padding:10px}
    
    .srortcut4box li{
	    text-align:center; 
	    width:15%; 
	    height:45px;
	    float:left;
	    margin-left:80px;
	    font-size:16px;
	    font-family:"微软雅黑";
	    font-weight:bold; 
	    position:relative;
    }
   
    .srortcut4box img{margin-bottom:8px;}
    
  </style>
    
    <link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/css/reset.css"/>
   
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/tipsdiv.js"></script>
    <script type="text/javascript">
        function setId(hrefId){
        	document.getElementById("newsId").value=hrefId;
        	return true;
        }
    </script>
</head>
<body>
 
 <form method="post" action="#" id="form1" name="form1">

   <input type="hidden" name="newId" id="newsId" value="" />

    <div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td style="vertical-align:top">
                    
                    <table width="90%" border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;">
                        <tr>
                            <td width="45%" style="padding-right: 5px; vertical-align: top">
                                
                                <!--国家科技政策Begin-->
                                <div class="maintitlebg">
                                    <span><a href="expert/toQuestionList">更多>></a></span><div></div><div class="title1icon">
                                    </div>
                                    咨询问题回复</div>
                                <div class="titlebox">
                                    <ul>
                                    
                                    </ul>
                                </div>
                                <!--国家科技政策End-->
                               
                               
                                <!--系统公告Begin-->
                        <div class="maintitlebg" style="margin-top: 18px;">
                            <span><a href="<%=request.getContextPath()%>/jsp/expert/newsoverview.jsp">更多>></a></span>
	                             <div class="title4icon">
	                                 <img alt="" src="<%=request.getContextPath()%>/image/33.jpg" style="float:left;margin-right:9px; margin-left:0px;" width="30px" height="30px">
	                             </div>
	                      系统公告</div>
                                <div class="titlebox">
                                    <ul>
                                 	   
                                    </ul>
                                </div>
                                <!--系统公告 End-->
                            </td>
                            
          					<td style="width:10px"></td>
                            <td width="45%" valign="top" style="padding-left: 5px;">
                                <!--专项与基金 Begin-->
                                <div class="maintitlebg">
                                    <span><a href="<%=request.getContextPath()%>/jsp/expert/makeroverview.jsp">更多>></a></span><div class="title2icon">
                                    	<img alt="" src="<%=request.getContextPath()%>/image/32.jpg" style="float:left;margin-right:9px; margin-left:0px;" width="30px" height="30px">
                                    </div>
                                    创客原创成果评审</div>
                                <div class="titlebox">
                                    <ul>
                                     
                                    </ul>
                                </div>
                                <!-- 专项与基金End-->
                                
                               
                                <!--银行资金援助项目Begin-->
                                <div class="maintitlebg" style="margin-top: 18px;">
                                    <span><a href="<%=request.getContextPath()%>/jsp/expert/enteroverord.jsp">更多>></a></span><div class="title3icon">
                                    	<img alt="" src="<%=request.getContextPath()%>/image/34.jpg"  style="float:left;margin-right:9px; margin-left:0px;" width="30px" height="30px">
                                    </div>
                                 企业一般项目评审</div>
                                <div class="titlebox" style="height: 135px;">
                                    <ul>
                                             
                                    </ul>
                                </div>
                                <!-- 银行资金援助项目 End-->

                            </td>
                        </tr>
                    </table>
 
 
 
 
                   <!--快捷菜单 Begin-->
                    <div class="srortcut4box" style="margin-top: 10px;">
                        <ul>
                            <li><a href="<%=request.getContextPath()%>/jsp/expert/pmakeroverview.jsp">
                                <img src="<%=request.getContextPath()%>/image/21.jpg" style="position:relative;float:left; margin-left:35px;  margin-bottom:auto;margin-top:-15px;" height="50px" width="50px" />创客项目作品评审</a></li>
                            <li><a href="<%=request.getContextPath()%>/expert/toEnterpriseProject">
                                <img src="<%=request.getContextPath()%>/image/22.jpg" style="position:relative;float:left; margin-left:35px; margin-bottom:auto; margin-top:-15px" height="50px" width="50px" >企业科技项目评审</a></li>
                            
                            <li><a href="<%=request.getContextPath()%>/expert/detail?id=1">
                                <img src="<%=request.getContextPath()%>/image/23.jpg" style="position:relative;float:left; margin-left:35px; margin-bottom:auto; margin-top:-15px" height="50px" width="50px" >基本信息维护</a></li>
                        </ul>
                        <div class="clear">
                        </div>
                    </div>
                    
                    <!--快捷菜单 End-->
                </td>
                
               
            </tr>
        </table>
    </div>

    </form>
</body>
</html>
