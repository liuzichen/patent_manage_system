<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目执行情况报表（半年）</title>
	
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
	

<script type="text/javascript">
function check(){
	if(confirm("导出前须保存表单内容\n\n是否现在导出？")){
		return true;
	}
	else{
		return false;
	}
}
</script>
	
</head>

<body>

 <div>
 
     <div class="topnav" >
	   <div  class="path" >
	      <span ><font>当前位置:</font></span>
	      <span ><font >项目管理&nbsp;&nbsp; &gt;&nbsp;&nbsp; 阶段管理</font></span>
	   </div>
     </div> 
		 
    <div class="context">
       <div class="titlebox"><span class="title">项目执行情况报表（半年）</span></div>
       <form action="" name="Form1" id="Form1">
       <input type="hidden" name="sort" id="sort">
       <div class="easyui-tabs" style="width:100%">
       <div title="报告扉页" style="width:100%">
       	<div style="width:100%">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                <tr >
                    <td class="tdname">项目名称：</td>                    
                    <td class="tdcontent1">
                      <%=ii.getJ1()%>
                    </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2">
                       <%=ii.getJ3()%>
                    </td>
                </tr>
                <tr >
                    <td class="tdname">计划类别：</td>
                    <td class="tdcontent1">
                       <%=ii.getJ2()%>
                    </td>
                    <td class="tdname">单位负责人：</td>
                    <td class="tdcontent2">
                       <%=ii.getJ4()%>
                    </td>                    
                </tr>
                <tr>
                    <td class="tdname">填报人：</td>
                    <td class="tdcontent1">
                      <%=ii.getJ5()%>
                    </td>
                    <td class="tdname">填报日期：</td>
                    <td class="tdcontent2">
                      <%=ii.getJ789()%>
                    </td>
                </tr>
                <tr>
                	<td class="tdname">联系电话：</td>
                	<td class="tdcontent2" colspan="3">
                		<%=ii.getJ6()%>
                	</td>
                </tr>
             </table>
             </div>
       </div>
       <div title="项目执行情况信息表" style="width:100%">
       <div style="width:100%">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
	   			<tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、项目基本情况</td>
	   			</tr>
                <tr >
                    <td class="tdname">项目名称：</td>                    
                    <td class="tdcontent1">
                      <%=ii.getK1()%>
                    </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2">
                       <%=ii.getK2()%>
                    </td>
                </tr>
                <tr >
                    <td class="tdname">计划文号：</td>
                    <td class="tdcontent1">
                       <%=ii.getK3()%>
                    </td>
                    <td class="tdname">项目编号：</td>
                    <td class="tdcontent2">
                       <%=ii.getK4()%>
                    </td>                    
                </tr>
                </table>
                <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA" >
                <tr>
                
	   			<td colspan="2" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二、项目进展情况</td>
	   			</tr>
	   			 <tr >
                    <td class="tdname">进展情况：</td>                    
                    <td class="tdcontent2" >
                       <%=ii.getK5()%>
                    </td>
                    
                </tr>
                </table>
                <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                 <tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三、项目资金情况（单位：万元）</td>
	   			</tr>
	   			 <tr >
                    <td class="tdname" style="font-weight:bold;">投资情况</td>
                    <td class="tdname"> 当期计划投资</td>
                    <td class="tdname">当期实际投资</td>
                    <td class="tdname">执行期内累计投资</td>                    
                </tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">单位自筹：</td>
                	<td style="text-align:center;"> <%=ii.getK6()%></td>
                	<td style="text-align:center;"> <%=ii.getK7()%></td>
                	<td style="text-align:center;"> <%=ii.getK8()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">市财政拨款：</td>
                	<td style="text-align:center;"> <%=ii.getK9()%></td>
                	<td style="text-align:center;"> <%=ii.getK10()%></td>
                	<td style="text-align:center;"> <%=ii.getK11()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">国家、省财政拨款：</td>
                	<td style="text-align:center;"> <%=ii.getK12()%></td>
                	<td style="text-align:center;"> <%=ii.getK13()%></td>
                	<td style="text-align:center;"> <%=ii.getK14()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">科技贷款：</td>
                	<td style="text-align:center;"> <%=ii.getK15()%></td>
                	<td style="text-align:center;"> <%=ii.getK16()%></td>
                	<td style="text-align:center;"> <%=ii.getK17()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">创业投资：</td>
                	<td style="text-align:center;"> <%=ii.getK18()%></td>
                	<td style="text-align:center;"> <%=ii.getK19()%></td>
                	<td style="text-align:center;"> <%=ii.getK20()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">横向创收：</td>
                	<td style="text-align:center;"> <%=ii.getK21()%></td>
                	<td style="text-align:center;"> <%=ii.getK22()%></td>
                	<td style="text-align:center;"> <%=ii.getK23()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">合计：</td>
                	<td style="text-align:center;"> <%=ii.getK24()%></td>
                	<td style="text-align:center;"> <%=ii.getK25()%></td>
                	<td style="text-align:center;"> <%=ii.getK26()%></td>
                <tr>
                <tr >
                    <td class="tdname" style="font-weight:bold;">市财政拨款使用情况</td>
                    <td class="tdname"> 当期支出</td>
                    <td class="tdname">执行期内累计支出</td>
                    <td class="tdname">备注</td>                    
                </tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">1、研发设备费：</td>
                	<td style="text-align:center;"> <%=ii.getK27()%></td>
                	<td style="text-align:center;"><%=ii.getK28()%></td>
                	<td style="text-align:center;"><%=ii.getK29()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">2、合作研发费：</td>
                	<td style="text-align:center;"><%=ii.getK30()%></td>
                	<td style="text-align:center;"><%=ii.getK31()%></td>
                	<td style="text-align:center;"><%=ii.getK32()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">3、材料费：</td>
                	<td style="text-align:center;"><%=ii.getK33()%></td>
                	<td style="text-align:center;"><%=ii.getK34()%></td>
                	<td style="text-align:center;"><%=ii.getK35()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">4、测试化验加工费：</td>
                	<td style="text-align:center;"><%=ii.getK36()%></td>
                	<td style="text-align:center;"><%=ii.getK37()%></td>
                	<td style="text-align:center;"><%=ii.getK38()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">5、燃料动力费：</td>
                	<td style="text-align:center;"><%=ii.getK39()%></td>
                	<td style="text-align:center;"><%=ii.getK40()%></td>
                	<td style="text-align:center;"><%=ii.getK41()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">6、差旅费：</td>
                	<td style="text-align:center;"><%=ii.getK42()%></td>
                	<td style="text-align:center;"><%=ii.getK43()%></td>
                	<td style="text-align:center;"><%=ii.getK44()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">7、会议费：</td>
                	<td style="text-align:center;"><%=ii.getK45()%></td>
                	<td style="text-align:center;"><%=ii.getK46()%></td>
                	<td style="text-align:center;"><%=ii.getK47()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">8、国际合作与交流费：</td>
                	<td style="text-align:center;"><%=ii.getK48()%></td>
                	<td style="text-align:center;"><%=ii.getK49()%></td>
                	<td style="text-align:center;"><%=ii.getK50()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">9、出版/文献/信息传播/知识产权事务费：</td>
                	<td style="text-align:center;"><%=ii.getK51()%></td>
                	<td style="text-align:center;"><%=ii.getK52()%></td>
                	<td style="text-align:center;"><%=ii.getK53()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">10、劳务费：</td>
                	<td style="text-align:center;"><%=ii.getK54()%></td>
                	<td style="text-align:center;"><%=ii.getK55()%></td>
                	<td style="text-align:center;"><%=ii.getK56()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">11、专家咨询费：</td>
                	<td style="text-align:center;"><%=ii.getK57()%></td>
                	<td style="text-align:center;"><%=ii.getK58()%></td>
                	<td style="text-align:center;"><%=ii.getK59()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">12、管理费：</td>
                	<td style="text-align:center;"><%=ii.getK60()%></td>
                	<td style="text-align:center;"><%=ii.getK61()%></td>
                	<td style="text-align:center;"><%=ii.getK62()%></td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">合计：</td>
                	<td style="text-align:center;"><%=ii.getK63()%></td>
                	<td style="text-align:center;"><%=ii.getK64()%></td>
                	<td style="text-align:center;"><%=ii.getK65()%></td>
                <tr>
             </table>
              <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
              	<tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四、项目产出及成果情况</td>
	   			</tr>
	   			 <tr >
                    <td class="tdname">总投入：</td>                    
                    <td class="tdcontent1">
                      <%=ii.getK66()%>万元
                    </td>
                    <td class="tdname">总产值：</td>
                    <td class="tdcontent2">
                       <%=ii.getK67()%>万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">产品销售收入：</td>                    
                    <td class="tdcontent1">
                      <%=ii.getK68()%>万元
                    </td>
                    <td class="tdname">工业增加值：</td>
                    <td class="tdcontent2">
                       <%=ii.getK69()%>万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">净利润：</td>                    
                    <td class="tdcontent1">
                      <%=ii.getK70()%>万元
                    </td>
                    <td class="tdname">缴税总额：</td>
                    <td class="tdcontent2">
                       <%=ii.getK71()%>万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">创汇：</td>                    
                    <td class="tdcontent1">
                      <%=ii.getK72()%>万美元
                    </td>
                    <td class="tdname">新增就业人数：</td>
                    <td class="tdcontent2">
                       <%=ii.getK73()%>人
                    </td>
                </tr>
                <tr >
                    <td class="tdname">专利申请：</td>                    
                    <td class="tdcontent1" colspan="3">
                      <%=ii.getK74()%>项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中发明专利：</td>                    
                    <td class="tdcontent1">
                      <%=ii.getK75()%>项
                    </td>
                    <td class="tdname">其中PCT专利：</td>
                    <td class="tdcontent2">
                      <%=ii.getK76()%>项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">专利授权：</td>                    
                    <td class="tdcontent1" colspan="3">
                      <%=ii.getK77()%>项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中发明专利：</td>                    
                    <td class="tdcontent1">
                      <%=ii.getK78()%>项
                    </td>
                    <td class="tdname">其中PCT专利：</td>
                    <td class="tdcontent2">
                       <%=ii.getK79()%>项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">软件产品登记：</td>                    
                    <td class="tdcontent1">
                     <%=ii.getK80()%>项
                    </td>
                    <td class="tdname">软件著作权登记：</td>
                    <td class="tdcontent2">
                       <%=ii.getK81()%>项
                    </td>
                </tr>
                 <tr >
                    <td class="tdname">发表科技论文：</td>                    
                    <td class="tdcontent1">
                      <%=ii.getK82()%>篇
                    </td>
                    <td class="tdname">出版专著：</td>
                    <td class="tdcontent2">
                       <%=ii.getK83()%>万字
                    </td>
                </tr>
                <tr >
                    <td class="tdname">形成新产品、新工艺等：</td>                    
                    <td class="tdcontent1">
                      <%=ii.getK84()%>项
                    </td>
                    <td class="tdname">其中国家重点新产品：</td>
                    <td class="tdcontent2">
                       <%=ii.getK85()%>项
                    </td>
                </tr>
                 <tr >
                    <td class="tdname">科技奖励：</td>                    
                    <td class="tdcontent1" colspan="3">
                      <%=ii.getK86()%>项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中国家级：</td>                    
                    <td class="tdcontent1">
                      <%=ii.getK87()%>项
                    </td>
                    <td class="tdname">其中省、市级：</td>
                    <td class="tdcontent2">
                       <%=ii.getK88()%>项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">制定标准：</td>                    
                    <td class="tdcontent1" colspan="3">
                      <%=ii.getK89()%>项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中国家：</td>                    
                    <td class="tdcontent1">
                     <%=ii.getK90()%>项
                    </td>
                    <td class="tdname">其中行业：</td>
                    <td class="tdcontent2">
                       <%=ii.getK91()%>项
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">建立示范基地、中试平台：</td>                    
                    <td class="tdcontent1" colspan="2">
                      <%=ii.getK92()%>个
                    </td>                
                </tr>
                <tr >
                    <td class="tdname" colspan="2">建立实验室、工程技术研究中心：</td>                    
                    <td class="tdcontent1" colspan="2">
                      <%=ii.getK93()%>个
                    </td>                
                </tr>
                <tr >
                    <td class="tdname" colspan="2">市级以上科技人才与创新团队：</td>                    
                    <td class="tdcontent1" colspan="2">
                      <%=ii.getK94()%>个
                    </td>                
                </tr>
                <tr>
	             <td align="center" colspan="4">
	             	
		            <div style="margin-top:20px; margin-bottom:20px;float:right; position:relative; right:20px"><a href="javascript:void(document.Form1.submit())" style="height:35px;width:100px;font-size:16px" class="easyui-linkbutton button" onclick="return check();">导出为word</a></div>
		            
		        </td>
	        </tr>
              </table>
           </div>
       </div>
	</div>
	 </form>
   </div>   
 	     
 </div>
</body>
</html>