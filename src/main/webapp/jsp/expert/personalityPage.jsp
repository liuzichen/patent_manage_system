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
	
<style type="text/css">
	
	.persional{
		width:80%;
		position:relative;
		table-layout:fixed;
		height:480px;
		background-color:#F4F9FD;
		
	}
	
	.prodTab{
		width:70%;
		position:relative;
	
	}
	.prodTab td{
	     height:20px;
	     text-align:center;
	     text-indent:10;
	     font-size:14px;
	     border-color:#DEE5EA;
	     color:#5F6467;
	}
	
	
		
	#tabtext1{
		height:400px;
		word-wrap:break-word;
		word-break:break-all;
		vertical-align:text-top; 
		color:#5F6467;
		
	}	
	
</style>
</head>

<body>

 <div class="commonPage">
 
     <div class="topnav"  >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >基本信息管理&nbsp;&nbsp; &gt;&nbsp;&nbsp; 基本信息维护</font></span>
	   </div>
     </div> 
 
    <div class="context">
       <div class="titlebox" style="width:80%; margin:0 auto;"><span class="title">专家简介</span></div>
	   <div >
	   	<form action="<%=request.getContextPath()%>/expert/updateInfo?id=1" name="Form1" id="Form1" method="post">
	   	<table class="persional" align="center" border="0"  cellpadding="0" cellspacing="0" bordercolor="white">
	   	 <tr><th style="height:30px;background-color:#CDE8F9;color:#2C3E4B;font-weight:bolder;">专家基本信息</th></tr>
	   	 <tr><td style="height:320px;">
	   	 
	     	<table class="prodTab" align="center" border="thick" bordercolor="#DEE5EA" cellspacing="0" cellpadding="0">
                <tr >
                    <td style="background-color:#F2F2F2;width:25%">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td>                    
                    <td >
                      <b>${detailInfo.name}</b>
                    </td>
                </tr>
                <tr >
                    <td style="background-color:#F2F2F2;">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</td>
                    <td >
                       <b>${detailInfo.age}</b>
                    </td>
                </tr >
                <tr >
                    <td style="background-color:#F2F2F2;">工作单位：</td>
                    <td >
                       <b>${detailInfo.company}</b>
                    </td>
                </tr >
              
                <tr>
                    <td style="background-color:#F2F2F2;">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：</td>
                    <td >
                      <b>${detailInfo.title}</b>
                    </td>
                </tr>
               
                <tr >
                    <td style="background-color:#F2F2F2;">专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业：</td>
                    <td >
                        <b>${detailInfo.major}</b>
                    </td>
                </tr>
           
               <tr >
                    <td style="background-color:#F2F2F2;">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历：</td>
                    <td >
                        <b>${detailInfo.education}</b>
                    </td>
                </tr>
                
               <tr >
                    <td style="background-color:#F2F2F2;">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</td>
                    <td>
                        <b>${detailInfo.cellPhone}</b>
                    </td>
                </tr>
                <tr >
                    <td style="background-color:#F2F2F2;">移动电话：</td>
                    <td>
                       <b>${detailInfo.tellPhone}</b>
                    </td>
                </tr>
                 <tr >
                    <td style="background-color:#F2F2F2;">电子邮箱：</td>
                    <td >
                     <b>${detailInfo.email}</b>
                    </td>
                </tr>
                <tr >
                    <td style="background-color:#F2F2F2;">领&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;域1：</td>
                    <td style="text-indent:10">
                     <b><%=request.getAttribute("field1")%></b>
                    </td>
                </tr>
                <tr >
                    <td style="background-color:#F2F2F2;">领&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;域2：</td>
                    <td >
                     <b><%=request.getAttribute("field2")%></b>
                    </td>
                </tr>
            </table>
            
             <tr><th style="height:35px;background-color:#CDE8F9;color:#2C3E4B;font-weight:bolder;">学术科研成就简介</th></tr>
             <tr><td id="tabtext1" align="center"><div style="margin-top:20px;height:100%;">
	               <textarea id="achievement" cols="40" rows="12"  name="achievement" style="width:90%;height:90%;">${detailInfo.achievement}</textarea>
	             </div>
             </td></tr>
             <tr><td align="center" ><a href="javascript:void(document.Form1.submit())" class="easyui-linkbutton button">修&nbsp;&nbsp;改</a></td></tr>
           </table>
          </form>
	   	</div>
	
   </div>   
 	     
 </div>
</body>
</html>