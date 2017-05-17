<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目执行情况报表（全年）</title>
	
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
       <div class="titlebox"><span class="title">项目执行情况报表（全年）</span></div>
       <form action="" name="Form1" id="Form1">
       <input type="hidden" name="sort" id="sort">
       <div class="easyui-tabs" style="width:100%">
       <div title="报告扉页" style="width:100%">
       	<div style="width:100%">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
   <tr >
                    <td class="tdname">项目名称：</td>                    
                    <td class="tdcontent1">
                      ${ehtitle.project_name }
                    </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2">
                        ${ehtitle.responsible_unit }
                    </td>
                </tr>
                <tr >
                    <td class="tdname">计划类别：</td>
                    <td class="tdcontent1">
                        ${ehtitle.type }
                    </td>
                    <td class="tdname">单位负责人：</td>
                    <td class="tdcontent2">
                        ${ehtitle.principal }
                    </td>                    
                </tr>
                <tr>
                    <td class="tdname">填报人：</td>
                    <td class="tdcontent1">
                       ${ehtitle.informant }
                    </td>
                    <td class="tdname">填报日期：</td>
                    <td class="tdcontent2">
                       ${ehtitle.date }
                    </td>
                </tr>
                <tr>
                	<td class="tdname">联系电话：</td>
                	<td class="tdcontent2" colspan="3">
                		 ${ehtitle.phone }
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
                    ${ehinfo.k1 }
                    </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2">
                       ${ehinfo.k2 }
                    </td>
                </tr>
                <tr >
                    <td class="tdname">计划文号：</td>
                    <td class="tdcontent1">
                       ${ehinfo.k3 }
                    </td>
                    <td class="tdname">项目编号：</td>
                    <td class="tdcontent2">
                       ${ehinfo.k4 }
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
                       ${ehinfo.k5 }
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
                	<td style="text-align:center;"> ${ehinfo.k6 }</td>
                	<td style="text-align:center;"> ${ehinfo.k7 }</td>
                	<td style="text-align:center;"> ${ehinfo.k8 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">市财政拨款：</td>
                	<td style="text-align:center;"> ${ehinfo.k9 }</td>
                	<td style="text-align:center;"> ${ehinfo.k10 }</td>
                	<td style="text-align:center;"> ${ehinfo.k11 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">国家、省财政拨款：</td>
                	<td style="text-align:center;"> ${ehinfo.k12 }</td>
                	<td style="text-align:center;"> ${ehinfo.k13 }</td>
                	<td style="text-align:center;"> ${ehinfo.k14 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">科技贷款：</td>
                	<td style="text-align:center;"> ${ehinfo.k15 }</td>
                	<td style="text-align:center;"> ${ehinfo.k16 }</td>
                	<td style="text-align:center;"> ${ehinfo.k17 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">创业投资：</td>
                	<td style="text-align:center;"> ${ehinfo.k18 }</td>
                	<td style="text-align:center;"> ${ehinfo.k19 }</td>
                	<td style="text-align:center;"> ${ehinfo.k20 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">横向创收：</td>
                	<td style="text-align:center;"> ${ehinfo.k21 }</td>
                	<td style="text-align:center;"> ${ehinfo.k22 }</td>
                	<td style="text-align:center;"> ${ehinfo.k23 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">合计：</td>
                	<td style="text-align:center;"> ${ehinfo.k24 }</td>
                	<td style="text-align:center;"> ${ehinfo.k25 }</td>
                	<td style="text-align:center;"> ${ehinfo.k26 }</td>
                <tr>
                <tr >
                    <td class="tdname" style="font-weight:bold;">市财政拨款使用情况</td>
                    <td class="tdname"> 当期支出</td>
                    <td class="tdname">执行期内累计支出</td>
                    <td class="tdname">备注</td>                    
                </tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">1、研发设备费：</td>
                	<td style="text-align:center;"> ${ehinfo.k27 }</td>
                	<td style="text-align:center;"> ${ehinfo.k28 }</td>
                	<td style="text-align:center;"> ${ehinfo.k29 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">2、合作研发费：</td>
                	<td style="text-align:center;">${ehinfo.k30 }</td>
                	<td style="text-align:center;">${ehinfo.k31 }</td>
                	<td style="text-align:center;">${ehinfo.k32 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">3、材料费：</td>
                	<td style="text-align:center;">${ehinfo.k33 }</td>
                	<td style="text-align:center;">${ehinfo.k34 }</td>
                	<td style="text-align:center;">${ehinfo.k35 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">4、测试化验加工费：</td>
                	<td style="text-align:center;">${ehinfo.k36 }</td>
                	<td style="text-align:center;">${ehinfo.k37 }</td>
                	<td style="text-align:center;">${ehinfo.k38 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">5、燃料动力费：</td>
                	<td style="text-align:center;">${ehinfo.k39 }</td>
                	<td style="text-align:center;">${ehinfo.k40 }</td>
                	<td style="text-align:center;">${ehinfo.k41 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">6、差旅费：</td>
                	<td style="text-align:center;">${ehinfo.k42 }</td>
                	<td style="text-align:center;">${ehinfo.k43 }</td>
                	<td style="text-align:center;">${ehinfo.k44 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">7、会议费：</td>
                	<td style="text-align:center;">${ehinfo.k45 }</td>
                	<td style="text-align:center;">${ehinfo.k46 }</td>
                	<td style="text-align:center;">${ehinfo.k47 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">8、国际合作与交流费：</td>
                	<td style="text-align:center;">${ehinfo.k48 }</td>
                	<td style="text-align:center;">${ehinfo.k49 }</td>
                	<td style="text-align:center;">${ehinfo.k50 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">9、出版/文献/信息传播/知识产权事务费：</td>
                	<td style="text-align:center;">${ehinfo.k51 }</td>
                	<td style="text-align:center;">${ehinfo.k52 }</td>
                	<td style="text-align:center;">${ehinfo.k53 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">10、劳务费：</td>
                	<td style="text-align:center;">${ehinfo.k54 }</td>
                	<td style="text-align:center;">${ehinfo.k55 }</td>
                	<td style="text-align:center;">${ehinfo.k56 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">11、专家咨询费：</td>
                	<td style="text-align:center;">${ehinfo.k57 }</td>
                	<td style="text-align:center;">${ehinfo.k58 }</td>
                	<td style="text-align:center;">${ehinfo.k59 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">12、管理费：</td>
                	<td style="text-align:center;">${ehinfo.k60 }</td>
                	<td style="text-align:center;">${ehinfo.k61 }</td>
                	<td style="text-align:center;">${ehinfo.k62 }</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">合计：</td>
                	<td style="text-align:center;">${ehinfo.k63 }</td>
                	<td style="text-align:center;">${ehinfo.k64 }</td>
                	<td style="text-align:center;">${ehinfo.k65 }</td>
                <tr>
             </table>
              <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
              	<tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四、项目产出及成果情况</td>
	   			</tr>
	   			 <tr >
                    <td class="tdname">总投入：</td>                    
                    <td class="tdcontent1">
                      ${ehinfo.k66 }万元
                    </td>
                    <td class="tdname">总产值：</td>
                    <td class="tdcontent2">
                       ${ehinfo.k67 }万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">产品销售收入：</td>                    
                    <td class="tdcontent1">
                      ${ehinfo.k68 }万元
                    </td>
                    <td class="tdname">工业增加值：</td>
                    <td class="tdcontent2">
                       ${ehinfo.k69 }万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">净利润：</td>                    
                    <td class="tdcontent1">
                      ${ehinfo.k70 }万元
                    </td>
                    <td class="tdname">缴税总额：</td>
                    <td class="tdcontent2">
                       ${ehinfo.k71 }万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">创汇：</td>                    
                    <td class="tdcontent1">
                      ${ehinfo.k72 }万美元
                    </td>
                    <td class="tdname">新增就业人数：</td>
                    <td class="tdcontent2">
                       ${ehinfo.k73 }人
                    </td>
                </tr>
                <tr >
                    <td class="tdname">专利申请：</td>                    
                    <td class="tdcontent1" colspan="3">
                      ${ehinfo.k74 }项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中发明专利：</td>                    
                    <td class="tdcontent1">
                      ${ehinfo.k75 }项
                    </td>
                    <td class="tdname">其中PCT专利：</td>
                    <td class="tdcontent2">
                     ${ehinfo.k76 }项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">专利授权：</td>                    
                    <td class="tdcontent1" colspan="3">
                      ${ehinfo.k77 }项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中发明专利：</td>                    
                    <td class="tdcontent1">
                      ${ehinfo.k78 }项
                    </td>
                    <td class="tdname">其中PCT专利：</td>
                    <td class="tdcontent2">
                      ${ehinfo.k79 }项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">软件产品登记：</td>                    
                    <td class="tdcontent1">
                     ${ehinfo.k80 }项
                    </td>
                    <td class="tdname">软件著作权登记：</td>
                    <td class="tdcontent2">
                       ${ehinfo.k81 }项
                    </td>
                </tr>
                 <tr >
                    <td class="tdname">发表科技论文：</td>                    
                    <td class="tdcontent1">
                      ${ehinfo.k82 }篇
                    </td>
                    <td class="tdname">出版专著：</td>
                    <td class="tdcontent2">
                       ${ehinfo.k83 }万字
                    </td>
                </tr>
                <tr >
                    <td class="tdname">形成新产品、新工艺等：</td>                    
                    <td class="tdcontent1">
                      ${ehinfo.k84 }项
                    </td>
                    <td class="tdname">其中国家重点新产品：</td>
                    <td class="tdcontent2">
                       ${ehinfo.k85 }项
                    </td>
                </tr>
                 <tr >
                    <td class="tdname">科技奖励：</td>                    
                    <td class="tdcontent1" colspan="3">
                      ${ehinfo.k86 }项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中国家级：</td>                    
                    <td class="tdcontent1">
                      ${ehinfo.k87 }项
                    </td>
                    <td class="tdname">其中省、市级：</td>
                    <td class="tdcontent2">
                       ${ehinfo.k88 }项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">制定标准：</td>                    
                    <td class="tdcontent1" colspan="3">
                      ${ehinfo.k89 }项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中国家：</td>                    
                    <td class="tdcontent1">
                     ${ehinfo.k90 }项
                    </td>
                    <td class="tdname">其中行业：</td>
                    <td class="tdcontent2">
                       ${ehinfo.k91 }项
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">建立示范基地、中试平台：</td>                    
                    <td class="tdcontent1" colspan="2">
                      ${ehinfo.k92 }个
                    </td>                
                </tr>
                <tr >
                    <td class="tdname" colspan="2">建立实验室、工程技术研究中心：</td>                    
                    <td class="tdcontent1" colspan="2">
                      ${ehinfo.k93 }个
                    </td>                
                </tr>
                <tr >
                    <td class="tdname" colspan="2">市级以上科技人才与创新团队：</td>                    
                    <td class="tdcontent1" colspan="2">
                     ${ehinfo.k94 }个
                    </td>                
                </tr>
                
              </table>
              <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA" >
                <tr>
                
	   			<td class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;五、项目执行情况总结（项目技术、经济指标完成情况；取得的重大突破，专利、成果等情况；市级以上科技人才与创新团队培育情况；资金使用情况；社会效益）</td>
	   			</tr>
	   			 <tr >                    
                    <td align="center" height="400px" >
                      <div class="tdcontent3">
		               <textarea id="k95" name="k95" cols="40" rows="12" style="width:90%;height:100%;">${ehinfo.k95 }</textarea>
		             </div> 
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