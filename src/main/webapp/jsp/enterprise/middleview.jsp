<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目执行情况报表（中期）</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/table.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/themes/gray/easyui.css"/>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/jquery.easyui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	if("${emtitle.isEvaluate}"!= "1"){
	var ctab = $('#mytabs').tabs('getTab', '评审结果').panel('options').tab;
	 ctab.hide();
	}
});

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
       <div class="titlebox"><span class="title">项目执行情况报表（中期）</span></div>
       <form action="" name="Form1" id="Form1">
       <input type="hidden" name="sort" id="sort">
       <div class="easyui-tabs" style="width:100%" id="mytabs">
       <div title="报告扉页" style="width:100%">
       	<div style="width:100%">
	   	<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                <tr >
                    <td class="tdname">项目名称：</td>                    
                    <td class="tdcontent1">
                     ${emtitle.project_name}
                    </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2">
                      ${emtitle.responsible_unit}
                    </td>
                </tr>
                <tr >
                    <td class="tdname">计划类别：</td>
                    <td class="tdcontent1">
                      ${emtitle.type}
                    </td>
                    <td class="tdname">单位负责人：</td>
                    <td class="tdcontent2">
                      ${emtitle.principal}
                    </td>                    
                </tr>

                <tr>
                    <td class="tdname">专家组长：</td>
                	<td class="tdcontent2">
                		${emtitle.expert_leader}
                	</td>
                	<td class="tdname">填报日期：</td>
                	<td class="tdcontent2">
                		${emtitle.date}
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
                    ${eminfo.project_name}
                    </td>
                    <td class="tdname">承担单位：</td>
                    <td class="tdcontent2">
                     ${eminfo.responsible_unit}
                    </td>
                </tr>
                <tr >
                    <td class="tdname">计划文号：</td>
                    <td class="tdcontent1">
                     ${eminfo.plan_approval}
                    </td>
                    <td class="tdname">项目编号：</td>
                    <td class="tdcontent2">
                    ${eminfo.project_number}
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
                     ${eminfo.project_progress}
                    </td>
                    
                </tr>
                </table>
                <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
                 <tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三、项目资金情况（单位：万元）</td>
	   			</tr>
	   			 <tr >
                    <td class="tdname" style="font-weight:bold;">投资情况</td>
                    <td class="tdname"> 计划投资</td>
                    <td class="tdname">当期实际投资</td>
                    <td class="tdname">执行期内累计投资</td>                    
                </tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">单位自筹：</td>
                	<td style="text-align:center;">${eminfo.unit_self_raised_plan} </td>
                	<td style="text-align:center;">${eminfo.unit_self_raised_real}</td>
                	<td style="text-align:center;"> ${eminfo.unit_self_raised_total}</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">市财政拨款：</td>
                	<td style="text-align:center;">${eminfo.municipal_finance_plan} </td>
                	<td style="text-align:center;"> ${eminfo.municipal_finance_real}</td>
                	<td style="text-align:center;"> ${eminfo.municipal_finance_total}</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">国家、省财政拨款：</td>
                	<td style="text-align:center;">${eminfo.state_funding_plan} </td>
                	<td style="text-align:center;">${eminfo.state_funding_real} </td>
                	<td style="text-align:center;">${eminfo.state_funding_total} </td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">其他：</td>
                	<td style="text-align:center;">${eminfo.other_plan}</td>
                	<td style="text-align:center;">${eminfo.other_real}</td>
                	<td style="text-align:center;">${eminfo.other_total}</td>
                <tr>
                <tr>
                	<td style="height:35px;text-align:center;background-color:#F2F2F2;">合计：</td>
                	<td style="text-align:center;">${eminfo.sum_plan}</td>
                	<td style="text-align:center;">${eminfo.sum_real}</td>
                	<td style="text-align:center;">${eminfo.sum_total}</td>
                <tr>
             </table>
              <table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA">
              	<tr>
	   			<td colspan="4" class="tdtitle" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四、项目产出及成果情况</td>
	   			</tr>
	   			 <tr >
                    <td class="tdname">总投入：</td>                    
                    <td class="tdcontent1">${eminfo.total_investment}
                       万元
                    </td>
                    <td class="tdname">总产值：</td>
                    <td class="tdcontent2">${eminfo.total_output}
                       万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">产品销售收入：</td>                    
                    <td class="tdcontent1">${eminfo.sales_revenue}
                       万元
                    </td>
                    <td class="tdname">工业增加值：</td>
                    <td class="tdcontent2">${eminfo.added_value}
                        万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">净利润：</td>                    
                    <td class="tdcontent1">${eminfo.net_profit}
                       万元
                    </td>
                    <td class="tdname">缴税总额：</td>
                    <td class="tdcontent2">${eminfo.total_tax}
                       万元
                    </td>
                </tr>
                <tr >
                    <td class="tdname">创汇：</td>                    
                    <td class="tdcontent1">${eminfo.exchange_earning}
                       万美元
                    </td>
                    <td class="tdname">新增就业人数：</td>
                    <td class="tdcontent2">${eminfo.new_employment}
                        人
                    </td>
                </tr>
                <tr >
                    <td class="tdname">专利申请：</td>                    
                    <td class="tdcontent1" colspan="3">${eminfo.patent_application}
                       项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中发明专利：</td>                    
                    <td class="tdcontent1">${eminfo.invention_patent}
                      项
                    </td>
                    <td class="tdname">其中PCT专利：</td>
                    <td class="tdcontent2">${eminfo.pct_patent}
                      项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">专利授权：</td>                    
                    <td class="tdcontent1" colspan="3">${eminfo.patent_license}
                     项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中发明专利：</td>                    
                    <td class="tdcontent1">${eminfo.invention_licence}
                      项
                    </td>
                    <td class="tdname">其中PCT专利：</td>
                    <td class="tdcontent2">${eminfo.pct_licence}
                       项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">软件产品登记：</td>                    
                    <td class="tdcontent1">${eminfo.software_registration}
                      项
                    </td>
                    <td class="tdname">软件著作权登记：</td>
                    <td class="tdcontent2">${eminfo.software_copyright_registration}
                      项
                    </td>
                </tr>
                 <tr >
                    <td class="tdname">发表科技论文：</td>                    
                    <td class="tdcontent1">${eminfo.published_papers}
                      篇
                    </td>
                    <td class="tdname">出版专著：</td>
                    <td class="tdcontent2">${eminfo.published_books}
                     万字
                    </td>
                </tr>
                <tr >
                    <td class="tdname">形成新产品、新工艺等：</td>                    
                    <td class="tdcontent1">${eminfo.develop_new_product}
                      项
                    </td>
                    <td class="tdname">其中国家重点新产品：</td>
                    <td class="tdcontent2">${eminfo.national_new_products}
                      项
                    </td>
                </tr>
                 <tr >
                    <td class="tdname">科技奖励：</td>                    
                    <td class="tdcontent1" colspan="3">${eminfo.award}
                     项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中国家级：</td>                    
                    <td class="tdcontent1">${eminfo.award_nation}
                     项
                    </td>
                    <td class="tdname">其中省、市级：</td>
                    <td class="tdcontent2">${eminfo.award_province}
                       项
                    </td>
                </tr>
                <tr >
                    <td class="tdname">制定标准：</td>                    
                    <td class="tdcontent1" colspan="3">${eminfo.standards}
                      项
                    </td>                
                </tr>
                <tr >
                    <td class="tdname">其中国家：</td>                    
                    <td class="tdcontent1">${eminfo.standards_nation}
                     项
                    </td>
                    <td class="tdname">其中行业：</td>
                    <td class="tdcontent2">${eminfo.standards_industry}
                       项
                    </td>
                </tr>
                <tr >
                    <td class="tdname" colspan="2">建立示范基地、中试平台：</td>                    
                    <td class="tdcontent1" colspan="2">${eminfo.demonstration_base}
                      个
                    </td>                
                </tr>
                <tr >
                    <td class="tdname" colspan="2">建立实验室、工程技术研究中心：</td>                    
                    <td class="tdcontent1" colspan="2">${eminfo.lab}
                     个
                    </td>                
                </tr>
                <tr >
                    <td class="tdname" colspan="2">市级以上科技人才与创新团队：</td>                    
                    <td class="tdcontent1" colspan="2">${eminfo.technological_team}
                      个
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
       <div title="评审结果" style="width:100%" id="reviewresult">
       			<div style="width:100%">
       			<table class="persional" align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#DEE5EA"> 
       			<tr>
             	 <td  class="tdname" align="center" >中期检查情况评述</td>
            	 <td  align="center" height="100px" colspan="3">
	            	 <div style="word-wrap:break-word;word-break:break-all;margin:0 auto;width:95%;">
	     					<pre style="width:100%;white-space:pre-wrap; font-size:16px">${emopinion.case_review}</pre>
	    				 </div>
		              
             </td>
             </tr>           
       			 <tr>
             	 <td  class="tdname" align="center" >主要问题及建议</td>
            	 <td  align="center" height="400px" colspan="3">
	            	 <div style="word-wrap:break-word;word-break:break-all;margin:0 auto;width:95%;">
	     					<pre style="width:100%;white-space:pre-wrap; font-size:16px">${emopinion.advice}</pre>
	    				 </div>
		             
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