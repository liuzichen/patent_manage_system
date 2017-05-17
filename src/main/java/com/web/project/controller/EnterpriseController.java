/**
 * 
 */
package com.web.project.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.project.model.Question;
import com.web.project.model.enterprise.Enterprise;
import com.web.project.model.enterprise.EnterpriseCorporator;
import com.web.project.model.enterprise.EnterpriseExcuPerson;
import com.web.project.model.enterprise.EnterpriseFinance;
import com.web.project.model.enterprise.EnterpriseHalfyearInformation;
import com.web.project.model.enterprise.EnterpriseHalfyearTitle;
import com.web.project.model.enterprise.EnterpriseMiddleInformation;
import com.web.project.model.enterprise.EnterpriseMiddleOpinion;
import com.web.project.model.enterprise.EnterpriseMiddleTitle;
import com.web.project.model.enterprise.EnterprisePeopleInCharge;
import com.web.project.model.enterprise.EnterpriseProInvestmentBudget;
import com.web.project.model.enterprise.EnterpriseProject;
import com.web.project.model.enterprise.EnterpriseProjectEquipment;
import com.web.project.model.enterprise.EnterpriseShareholder;
import com.web.project.model.enterprise.EnterpriseWholeyearInformation;
import com.web.project.model.enterprise.EnterpriseWholeyearTitle;
import com.web.project.model.enterprise.ProjectCheckBudget;
import com.web.project.model.enterprise.ProjectCheckForm;
import com.web.project.model.enterprise.ProjectCheckInfo;
import com.web.project.model.enterprise.QuestionEnterprise;
import com.web.project.service.enterprise.EnterpriseHalfyearService;
import com.web.project.service.enterprise.EnterpriseInfoService;
import com.web.project.service.enterprise.EnterpriseMiddleService;
import com.web.project.service.enterprise.EnterpriseProjectService;
import com.web.project.service.enterprise.EnterpriseWholeyearService;
import com.web.project.service.enterprise.ProjectCheckService;
import com.web.project.service.enterprise.QuestionEnterpriseService;
import com.web.project.vo.EnterpriseHalfyearTitleVo;
import com.web.project.vo.EnterpriseMiddleTitleVo;
import com.web.project.vo.EnterpriseWholeyearTitleVo;
import com.web.project.vo.ProjectCheckFormVo;
import com.web.project.vo.QuestionEnterpriseVo;
import com.web.project.vo.QuestionVo;

/**
 * @author 子晨
 *
 */
@RequestMapping("enterprise")
@Controller
public class EnterpriseController {
	
	@Autowired
	private EnterpriseProjectService enterpriseProjectService;
	
	@Autowired
	private EnterpriseInfoService enterpriseInfoService;
	
	@Autowired
	private EnterpriseMiddleService enterpriseMiddleService;
	
	@Autowired
	private EnterpriseHalfyearService enterpriseHalfyearService;
	@Autowired
	private EnterpriseWholeyearService enterpriseWholeyearService;	
	
	@Autowired
	private ProjectCheckService projectcheckService;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	QuestionEnterpriseService questionenterpriseService;
	
	@RequestMapping("insertEnterpriseProject")
	public String insertEnterpriseProject(@RequestParam("id")int id,
			@RequestParam(value = "sort") String flag,@RequestParam("A3")String title,
			@RequestParam("A4")String type,@RequestParam("A5")String field,
			@RequestParam("A6")String companyName,@RequestParam("A7")String competentDepartment,
			@RequestParam("A8")String contractor,@RequestParam("A9")String contact,
			@RequestParam("A10")String contactPhoneNumber,@RequestParam("C52")String state,
			@RequestParam("C54")String industryField,
			@RequestParam("C55")String subjectCode,@RequestParam("C56")String subjectOrigin,
			@RequestParam("C57")String techOrigin,@RequestParam("C58")String developType,
			@RequestParam("C59")String productAdoption,@RequestParam("C60")String IPRstatement,
			@RequestParam("C61")String award,@RequestParam("C62")String techRightsandUsage,
			@RequestParam("C63")String startTime,@RequestParam("C64")String endTime,
			@RequestParam("C73")String corTypeAndName,@RequestParam("C74")String corGoalsandInvest,
			@RequestParam("C75")String corDepartmentandPerson,@RequestParam("C76")String corEmailandAddress,
			@RequestParam("C77")String serviceType,@RequestParam("C78")String serviceNumber,
			@RequestParam("C79")String numberToserve,@RequestParam("C80")String servicetypeorplatform,
			@RequestParam("C81")String planServicetypeorplatform,@RequestParam("C82")String descriptionAndGoals,
			@RequestParam("C83")String contentAndIndication,@RequestParam("C84")String createPoints,
			@RequestParam("C85")String workBasis,@RequestParam("C86")String schedule,
			@RequestParam("B1")String name,@RequestParam("B2")String companyCode,
			@RequestParam("B3")String applyType,@RequestParam("B4")String registeredCapital,
			@RequestParam("B5")String address,@RequestParam("B6")String postCode,
			@RequestParam("B7")String enterpriseContact,@RequestParam("B8")String enterCellphone,
			@RequestParam("B9")String enterMobilephone,@RequestParam("B10")String fax,
			@RequestParam("B11")String enterEmail,@RequestParam("B12")String bank,
			@RequestParam("B13")String creditRating,@RequestParam("B14")String account,
			@RequestParam("B15")String property,@RequestParam("B16")String size,
			@RequestParam("B26")String registTime,@RequestParam("B27")String registMoney,
			@RequestParam("B28")String leaglePerson,@RequestParam("B76")String productAndService,@RequestParam("B78")String patent,
			@RequestParam("B79")String utilityModel,@RequestParam("B80")String softwareCopyright,
			@RequestParam("B81")String pCTpatent,@RequestParam("B82")String others,
			@RequestParam("B83")String innovationBaseConstruction,@RequestParam("B84")String supportedByST,
			@RequestParam("B85")String techAward,@RequestParam("B35")String peoleNumber,
			@RequestParam("B36")String juniorCollege,@RequestParam("B37")String doctor,
			@RequestParam("B38")String master,@RequestParam("B39")String highPosition,
			@RequestParam("B40")String midPostion,@RequestParam("B41")String overseas,
			@RequestParam("B28")String chargeName,@RequestParam("B29")String chargeGender,@RequestParam("B30")String chargeBirthday,
			@RequestParam("B31")String chargeEducation,@RequestParam("B32")String chargeIDcard,@RequestParam("B33")String chargeCellPhone,
			@RequestParam("B34")String chargeMobilePhone,@RequestParam("C3")String peopleIncharge,
			@RequestParam("C4")String gender,@RequestParam("C5")String birthday,
			@RequestParam("C6")String leadertitle,@RequestParam("C7")String cardType,
			@RequestParam("C8")String cardnumber,@RequestParam("C9")String position,
			@RequestParam("C10")String degree,@RequestParam("C11")String qualifications,
			@RequestParam("C12")String major,@RequestParam("C13")String cellPhone,
			@RequestParam("C14")String leaderfax,@RequestParam("C15")String mobilePhone,@RequestParam("C16")String email,
			@RequestParam("F1")String fujianDescription,@RequestParam("file")String filePath
			) throws UnsupportedEncodingException{
		//附件上传
		filePath = new String(filePath.getBytes("iso-8859-1"), "utf-8");
		System.out.println(filePath);
		filePath ="C:"+File.separator+"Users"+File.separator+"子晨"+File.separator+"Desktop"+File.separator+"延迟队列"+File.separator+"延迟队列.zip";
		String[] strings = filePath.split(File.separator+File.separator);
		int length = strings.length;
		String fileName = strings[length-1];
		
	
		byte[] buffer = null;  
        try {  
            File file = new File(filePath);  
            FileInputStream fis = new FileInputStream(file);  
            ByteArrayOutputStream bos = new ByteArrayOutputStream(1000);  
            byte[] b = new byte[1000];  
            int n;  
            while ((n = fis.read(b)) != -1) {  
                bos.write(b, 0, n);  
            }  
            fis.close();  
            bos.close();  
            buffer = bos.toByteArray();  
            System.out.println(buffer.length);
        } catch (FileNotFoundException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
		//企业金融状况
		List<EnterpriseFinance> finances = new ArrayList<>();
		for(int i=0;i<2;i++){
			String year = "B"+(42+i);
			String totalProduction = "B"+(42+i+2);
			String totalSales = "B"+(42+i+4);
			String profit = "B"+(42+i+6);
			String totalTaxPayment = "B"+(42+i+8);
			String corporateTax = "B"+(42+i+10);
			String valueAddedTax = "B"+(42+i+12);
			String salesTax = "B"+(42+i+14);
			String personalIncomeTax = "B"+(42+i+16);
			String RDexpense = "B"+(42+i+20);
			String totalExpenditure = "B"+(42+i+22);
			String foreignExchangeEarnings = "B"+(42+i+24);
			String fixedAssert = "B"+(42+i+26);
			String totalAssert = "B"+(42+i+28);
			String totalLiabilities = "B"+(42+i+30);
			String netAssert = "B"+(42+i+32);
			EnterpriseFinance finance = new EnterpriseFinance();
			finance.setEnterpriseid(id);
			finance.setYear(request.getParameter(year).equals("")?0:Integer.parseInt(request.getParameter(year)));
			finance.setTotalProduction(request.getParameter(totalProduction).equals("")?0:Double.parseDouble(request.getParameter(totalProduction)));
			finance.setTotalSales(request.getParameter(totalSales).equals("")?0:Double.parseDouble(request.getParameter(totalSales)));
			finance.setProfit(request.getParameter(profit).equals("")?0:Double.parseDouble(request.getParameter(profit)));
			finance.setTotalTaxPayment(request.getParameter(totalTaxPayment).equals("")?0:Double.parseDouble(request.getParameter(totalTaxPayment)));
			finance.setCorporateTax(request.getParameter(corporateTax).equals("")?0:Double.parseDouble(request.getParameter(corporateTax)));
			finance.setValueAddedTax(request.getParameter(valueAddedTax).equals("")?0:Double.parseDouble(request.getParameter(valueAddedTax)));
			finance.setSalesTax(request.getParameter(salesTax).equals("")?0:Double.parseDouble(request.getParameter(salesTax)));
			finance.setPersonalIncomeTax(request.getParameter(personalIncomeTax).equals("")?0:Double.parseDouble(request.getParameter(personalIncomeTax)));
			finance.setRDexpense(request.getParameter(RDexpense).equals("")?0:Double.parseDouble(request.getParameter(RDexpense)));
			finance.setTotalExpenditure(request.getParameter(totalExpenditure).equals("")?0:Double.parseDouble(request.getParameter(totalExpenditure)));
			finance.setForeignExchangeEarnings(request.getParameter(foreignExchangeEarnings).equals("")?0:Double.parseDouble(request.getParameter(foreignExchangeEarnings)));
			finance.setFixedAssert(request.getParameter(fixedAssert).equals("")?0:Double.parseDouble(request.getParameter(fixedAssert)));
			finance.setTotalAssert(request.getParameter(totalAssert).equals("")?0:Double.parseDouble(request.getParameter(totalAssert)));
			finance.setTotalLiabilities(request.getParameter(totalLiabilities).equals("")?0:Double.parseDouble(request.getParameter(totalLiabilities)));
			finance.setNetAssert(request.getParameter(netAssert).equals("")?0:Double.parseDouble(request.getParameter(netAssert)));
		
			finances.add(finance);
		}
		HashMap<String, List<EnterpriseFinance>> financeMap = new HashMap<>();
		financeMap.put("financemap",finances);
		enterpriseInfoService.deleteEnterpriseFinanceById(id);
		enterpriseInfoService.insertEnterpriseFinanceById(financeMap);
		
		//企业负责人信息el
		EnterprisePeopleInCharge person = new EnterprisePeopleInCharge();
		person.setEnterpriseId(id);
		person.setName(new String(chargeName.getBytes("iso-8859-1"), "utf-8"));
		person.setGender(new String(chargeGender.getBytes("iso-8859-1"), "utf-8"));
		if(!chargeBirthday.equals(""))
			person.setBirthday(new String(chargeBirthday.getBytes("iso-8859-1"), "utf-8"));
		person.setEducation(new String(chargeEducation.getBytes("iso-8859-1"), "utf-8"));
		person.setIdCard(new String(chargeIDcard.getBytes("iso-8859-1"), "utf-8"));
		person.setMobilePhone(new String(chargeMobilePhone.getBytes("iso-8859-1"), "utf-8"));
		person.setCellPhone(new String(chargeCellPhone.getBytes("iso-8859-1"), "utf-8"));
		enterpriseInfoService.deleteEnterprisePeopleinChargeByEnterpriseId(id);
		enterpriseInfoService.insertEnterprisePeopleinCharge(person);	
		
		//股东信息,最后一次保存或者提交之前要删除之前的
		List<EnterpriseShareholder> shareholders = new ArrayList<>();
		int shareholerNumber = enterpriseInfoService.getShareholders(id).size();				
		for(int i=0;i<3;i++){
			String investtype="B"+(17+3*i);
			String investname="B"+(17+3*i+1);
			String percentage="B"+(17+3*i+2);
			EnterpriseShareholder shareholder = new EnterpriseShareholder();
			shareholder.setEnterpriseId(id);
			shareholder.setInvestType(new String(request.getParameter(investtype).getBytes("iso-8859-1"), "utf-8"));
			shareholder.setName(new String(request.getParameter(investname).getBytes("iso-8859-1"), "utf-8"));
			shareholder.setPercentage(new String(request.getParameter(percentage).getBytes("iso-8859-1"), "utf-8"));
			shareholders.add(shareholder);
		}
		HashMap<String,List<EnterpriseShareholder>> map = new HashMap<>();
		map.put("shareholders", shareholders);
		enterpriseInfoService.deleteEnterpriseShareholderByEnterpriseId(id);
		enterpriseInfoService.insertEnterpriseShareholderByEnterpriseId(map);
		//企业信息
		Enterprise enterprise = new Enterprise();
		enterprise.setId(id);
		enterprise.setName(new String(name.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setCompanyCode(new String(companyCode.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setApplyType(new String(applyType.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setRegisteredCapital(new String(registeredCapital.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setAddress(new String(address.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setPostcode(postCode);
		enterprise.setContact(new String(enterpriseContact.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setAccount(new String(companyCode.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setCellPhone(enterCellphone);
		enterprise.setMobilePhone(enterMobilephone);
		enterprise.setEmail(enterEmail);
		enterprise.setFax(fax);
		enterprise.setBank(new String(bank.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setCreditRating(new String(creditRating.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setAccount(new String(account.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setProperty(new String(property.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setSize(new String(size.getBytes("iso-8859-1"), "utf-8"));
		if(!registTime.equals(""))
		     enterprise.setRegistrationTime(registTime);
		enterprise.setRegistrationMoney(new String(registMoney.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setLegalPerson(new String(leaglePerson.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setProductAndService(new String(productAndService.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setPatents(patent.equals("")?0:Integer.parseInt(patent));
		enterprise.setUtilityModel(patent.equals("")?0:Integer.parseInt(utilityModel));
		enterprise.setSoftwareCopyright(patent.equals("")?0:Integer.parseInt(softwareCopyright));
		enterprise.setpCTpatent(patent.equals("")?0:Integer.parseInt(pCTpatent));
		enterprise.setOthers(patent.equals("")?0:Integer.parseInt(others));
		enterprise.setInnovationBaseConstruction(new String(innovationBaseConstruction.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setSupportedByST(new String(supportedByST.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setTechAward(new String(techAward.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setPeoleNumber(new String(peoleNumber.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setJuniorCollege(new String(juniorCollege.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setDoctor(new String(doctor.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setMaster(new String(master.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setHighPosition(new String(highPosition.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setMidPostion(new String(midPostion.getBytes("iso-8859-1"), "utf-8"));
		enterprise.setOverseas(new String(overseas.getBytes("iso-8859-1"), "utf-8"));
		enterpriseInfoService.updateEnterpriseInfoById(enterprise);
			
	    //项目信息
		EnterpriseProject project = new EnterpriseProject();
		project.setEnterpriseId(id);
		project.setApplyTime(System.currentTimeMillis()/1000);
		project.setTitle(new String(title.getBytes("iso-8859-1"), "utf-8"));
		project.setType(new String(type.getBytes("iso-8859-1"), "utf-8"));
		project.setField(new String(field.getBytes("iso-8859-1"), "utf-8"));	
		project.setCompetentDepartment(new String(competentDepartment.getBytes("iso-8859-1"), "utf-8"));
		project.setContractor(new String(contractor.getBytes("iso-8859-1"), "utf-8"));
		project.setContact(new String(contact.getBytes("iso-8859-1"), "utf-8"));
		project.setContactPhoneNumber(new String(contactPhoneNumber.getBytes("iso-8859-1"), "utf-8"));
		project.setState(new String(state.getBytes("iso-8859-1"), "utf-8"));
		project.setIndustryField(new String(industryField.getBytes("iso-8859-1"), "utf-8"));
		project.setPeopleInCharge(new String(peopleIncharge.getBytes("iso-8859-1"), "utf-8"));
		project.setSubjectCode(new String(subjectCode.getBytes("iso-8859-1"), "utf-8"));
		if(!startTime.equals(""))
			project.setStartTime(startTime);
		if(!endTime.equals(""))
			project.setEndtime(endTime);
		project.setProjectOrigin(new String(subjectOrigin.getBytes("iso-8859-1"), "utf-8"));
		project.setTechOrigin(new String(techOrigin.getBytes("iso-8859-1"), "utf-8"));
		project.setDevelopType(new String(developType.getBytes("iso-8859-1"), "utf-8"));
		project.setProductAdoption(new String(productAdoption.getBytes("iso-8859-1"), "utf-8"));
		project.setIPRstatement(new String(IPRstatement.getBytes("iso-8859-1"), "utf-8"));
		project.setAward(new String(award.getBytes("iso-8859-1"), "utf-8"));
		project.setTechRightsandUsage(new String(techRightsandUsage.getBytes("iso-8859-1"), "utf-8"));
		project.setCorTypeAndName(new String(corTypeAndName.getBytes("iso-8859-1"), "utf-8"));
		project.setCorGoalsandInvest(new String(corGoalsandInvest.getBytes("iso-8859-1"), "utf-8"));
		project.setCorDepartmentandPerson(new String(corDepartmentandPerson.getBytes("iso-8859-1"), "utf-8"));
		project.setCorEmailandAddress(new String(corEmailandAddress.getBytes("iso-8859-1"), "utf-8"));
		project.setServiceType(new String(serviceType.getBytes("iso-8859-1"), "utf-8"));
		if(!serviceNumber.equals(""))
			project.setServiceNumber(Integer.parseInt(serviceNumber));
		if(!numberToserve.equals(""))
			project.setNumberToserve(Integer.parseInt(numberToserve));
		project.setServicetypeorplatform(new String(servicetypeorplatform.getBytes("iso-8859-1"), "utf-8"));
		project.setPlanServicetypeorplatform(new String(planServicetypeorplatform.getBytes("iso-8859-1"), "utf-8"));
		project.setDescriptionAndGoals(new String(descriptionAndGoals.getBytes("iso-8859-1"), "utf-8"));
		project.setContentAndIndication(new String(contentAndIndication.getBytes("iso-8859-1"), "utf-8"));
		project.setCreatePoints(new String(createPoints.getBytes("iso-8859-1"), "utf-8"));
		project.setWorkBasis(new String(workBasis.getBytes("iso-8859-1"), "utf-8"));
		project.setSchedule(new String(schedule.getBytes("iso-8859-1"), "utf-8"));
		project.setFujian(buffer);
		project.setFujianName(fileName);
		project.setFujianDescription(new String(fujianDescription.getBytes("iso-8859-1"), "utf-8"));
		if (flag.equals("save"))
			project.setSubmit(false);
		else {
			project.setSubmit(true);
		}
		int unSubmitNumber = enterpriseProjectService.getUnSubmitEnterpriseProjectNumber(id);
		if(unSubmitNumber==0){
			enterpriseProjectService.insertEnterpriseProject(project);
		}else {
			EnterpriseProject tempProject = enterpriseProjectService.getUnSubmitEnterpriseProjectById(id);
			project.setId(tempProject.getId());
			enterpriseProjectService.updateEnterpriseProjectById(project);
		}
		
		
		//项目参与人员
		List<EnterpriseExcuPerson> exuPersonList = new ArrayList<>();
		int projectId = project.getId();
		EnterpriseExcuPerson excuPerson = new EnterpriseExcuPerson();
		excuPerson.setProjectId(projectId);
		excuPerson.setName(new String(peopleIncharge.getBytes("iso-8859-1"), "utf-8"));
		excuPerson.setGender(new String(gender.getBytes("iso-8859-1"), "utf-8"));
		if(!birthday.equals(""))
			excuPerson.setBirthday(new String(birthday.getBytes("iso-8859-1"), "utf-8"));
		excuPerson.setTitle(new String(leadertitle.getBytes("iso-8859-1"), "utf-8"));
		excuPerson.setCardType(new String(cardType.getBytes("iso-8859-1"), "utf-8"));
		excuPerson.setCardnumber(new String(cardnumber.getBytes("iso-8859-1"), "utf-8"));
		excuPerson.setPosition(new String(position.getBytes("iso-8859-1"), "utf-8"));
		excuPerson.setDegree(new String(degree.getBytes("iso-8859-1"), "utf-8"));
		excuPerson.setQualifications(new String(qualifications.getBytes("iso-8859-1"), "utf-8"));
		excuPerson.setMajor(new String(major.getBytes("iso-8859-1"), "utf-8"));
		excuPerson.setCellPhone(new String(cellPhone.getBytes("iso-8859-1"), "utf-8"));
		excuPerson.setFax(new String(leaderfax.getBytes("iso-8859-1"), "utf-8"));
		excuPerson.setMobilePhone(new String(mobilePhone.getBytes("iso-8859-1"), "utf-8"));
		excuPerson.setEmail(new String(email.getBytes("iso-8859-1"), "utf-8"));
		excuPerson.setLeader(true);
        exuPersonList.add(excuPerson);
        for(int i=0;i<5;i++){
        	 EnterpriseExcuPerson temp = new EnterpriseExcuPerson();
        	 String excuName="C"+(17+7*i);
             String excuGender="C"+(17+7*i+1);
             String excuAge="C"+(17+7*i+2);
             String excuPosition="C"+(17+7*i+3);
             String excuMajor="C"+(17+7*i+4);
             String excuTask="C"+(17+7*i+5);
             String excuCompany="C"+(17+7*i+6);
             temp.setProjectId(projectId);
             temp.setName(new String(request.getParameter(excuName).getBytes("iso-8859-1"), "utf-8"));
             temp.setGender(new String(request.getParameter(excuGender).getBytes("iso-8859-1"), "utf-8"));
             temp.setAge(new String(request.getParameter(excuAge).getBytes("iso-8859-1"), "utf-8"));
             temp.setPosition(new String(request.getParameter(excuPosition).getBytes("iso-8859-1"), "utf-8"));
             temp.setMajor(new String(request.getParameter(excuMajor).getBytes("iso-8859-1"), "utf-8"));
             temp.setTask(new String(request.getParameter(excuTask).getBytes("iso-8859-1"), "utf-8"));
             temp.setCompany(new String(request.getParameter(excuCompany).getBytes("iso-8859-1"), "utf-8"));
             temp.setLeader(false);
             exuPersonList.add(temp);
        }
		enterpriseInfoService.deleteEnterpriseExcuPersonById(projectId);
		HashMap<String, List<EnterpriseExcuPerson>>	exuPersonMap= new HashMap<>();
		exuPersonMap.put("exuPersonMap", exuPersonList);
		enterpriseInfoService.insertEnterpriseProjectExuPeople(exuPersonMap);
		
		//项目预算
		List<EnterpriseProInvestmentBudget> budgets = new ArrayList<>();
		for(int i=0;i<2;i++){
			EnterpriseProInvestmentBudget budget = new EnterpriseProInvestmentBudget();
			int budgetType= i;
			String total = "D"+(2+i);
			String totalRDequimentFee = "D"+(2+i+3);
			String equimentBuyFee = "D"+(2+i+6);
			String equimentMakeFee = "D"+(2+i+9);
			String softwareMakeFee = "D"+(2+i+12);
			String corRDFee = "D"+(2+i+15);
			String peopleTeamFee = "D"+(2+i+18);
			String techPatentResBuyFee = "D"+(2+i+21);
			String researchCooperationFee = "D"+(2+i+24);
			String materialFee = "D"+(2+i+27);
			String testLabProcessingFee = "D"+(2+i+30);
			String fuelPowerCost = "D"+(2+i+33);
			String travelFee = "D"+(2+i+36);
			String conferenceFee = "D"+(2+i+39);
			String cooperationAndExchangeFee = "D"+(2+i+42);
			String publicationFee = "D"+(2+i+45);
			String serviceFee = "D"+(2+i+48);
			String expertConsultationFee = "D"+(2+i+51);
			String managementFee = "D"+(2+i+54);
			String totalSourcesFunds = "D"+(2+i+57);
			String applyFromGov = "D"+(2+i+60);
			String selfFounding = "D"+(2+i+63);
			String otherFinancialAllocations = "D"+(2+i+66);
			String ownFound = "D"+(2+i+69);
			String otherFound = "D"+(2+i+72);
			budget.setProjectId(projectId);
			budget.setType(budgetType);
			budget.setTotal(request.getParameter(total).equals("")?0:Double.parseDouble(request.getParameter(total)));
			budget.setTotalRDequimentFee(request.getParameter(totalRDequimentFee).equals("")?0:Double.parseDouble(request.getParameter(totalRDequimentFee)));
			budget.setEquimentBuyFee(request.getParameter(equimentBuyFee).equals("")?0:Double.parseDouble(request.getParameter(equimentBuyFee)));
			budget.setEquimentMakeFee(request.getParameter(equimentMakeFee).equals("")?0:Double.parseDouble(request.getParameter(equimentMakeFee)));
			budget.setSoftwareMakeFee(request.getParameter(softwareMakeFee).equals("")?0:Double.parseDouble(request.getParameter(softwareMakeFee)));
			budget.setCorRDFee(request.getParameter(corRDFee).equals("")?0:Double.parseDouble(request.getParameter(corRDFee)));
			budget.setPeopleTeamFee(request.getParameter(peopleTeamFee).equals("")?0:Double.parseDouble(request.getParameter(peopleTeamFee)));
			budget.setTechPatentResBuyFee(request.getParameter(techPatentResBuyFee).equals("")?0:Double.parseDouble(request.getParameter(techPatentResBuyFee)));
			budget.setResearchCooperationFee(request.getParameter(researchCooperationFee).equals("")?0:Double.parseDouble(request.getParameter(researchCooperationFee)));
			budget.setMaterialFee(request.getParameter(total).equals("")?0:Double.parseDouble(request.getParameter(materialFee)));
			budget.setTestLabProcessingFee(request.getParameter(testLabProcessingFee).equals("")?0:Double.parseDouble(request.getParameter(testLabProcessingFee)));
			budget.setFuelPowerCost(request.getParameter(fuelPowerCost).equals("")?0:Double.parseDouble(request.getParameter(fuelPowerCost)));
			budget.setTravelFee(request.getParameter(travelFee).equals("")?0:Double.parseDouble(request.getParameter(travelFee)));
			budget.setConferenceFee(request.getParameter(conferenceFee).equals("")?0:Double.parseDouble(request.getParameter(conferenceFee)));
			budget.setCooperationAndExchangeFee(request.getParameter(cooperationAndExchangeFee).equals("")?0:Double.parseDouble(request.getParameter(cooperationAndExchangeFee)));
			budget.setPublicationFee(request.getParameter(publicationFee).equals("")?0:Double.parseDouble(request.getParameter(publicationFee)));
			budget.setServiceFee(request.getParameter(serviceFee).equals("")?0:Double.parseDouble(request.getParameter(serviceFee)));
			budget.setExpertConsultationFee(request.getParameter(expertConsultationFee).equals("")?0:Double.parseDouble(request.getParameter(expertConsultationFee)));
			budget.setManagementFee(request.getParameter(managementFee).equals("")?0:Double.parseDouble(request.getParameter(managementFee)));
			budget.setTotalSourcesFunds(request.getParameter(totalSourcesFunds).equals("")?0:Double.parseDouble(request.getParameter(totalSourcesFunds)));
			budget.setApplyFromGov(request.getParameter(applyFromGov).equals("")?0:Double.parseDouble(request.getParameter(applyFromGov)));
			budget.setSelfFounding(request.getParameter(selfFounding).equals("")?0:Double.parseDouble(request.getParameter(selfFounding)));
			budget.setOtherFinancialAllocations(request.getParameter(otherFinancialAllocations).equals("")?0:Double.parseDouble(request.getParameter(otherFinancialAllocations)));
			budget.setOwnFound(request.getParameter(ownFound).equals("")?0:Double.parseDouble(request.getParameter(ownFound)));
			budget.setOtherFound(request.getParameter(otherFound).equals("")?0:Double.parseDouble(request.getParameter(otherFound)));
			budgets.add(budget);
		}
		HashMap<String,List<EnterpriseProInvestmentBudget>> budgetsMap = new HashMap<>();
		budgetsMap.put("budgetMap", budgets);
		enterpriseInfoService.deleteEnterpriseProInvestBudgetByProjectId(projectId);
		enterpriseInfoService.insertEnterpriseProBudget(budgetsMap);
		
		//项目设备
		List<EnterpriseProjectEquipment> equipments = new ArrayList<>();
		for(int i=0;i<12;i++){
			String equName = "E"+(6*i+1);
			String singlePrice = "E"+(6*i+2);
			String number = "E"+(6*i+3);
			String totalPrice = "E"+(6*i+4);
			String location = "E"+(6*i+5);
			String relationship = "E"+(6*i+6);
			if (!request.getParameter(equName).equals("")) {
				EnterpriseProjectEquipment equipment = new EnterpriseProjectEquipment();
				equipment.setProjectId(projectId);
				equipment.setName(new String(request.getParameter(equName).getBytes("iso-8859-1"), "utf-8"));
				if (!request.getParameter(singlePrice).equals(""))
					equipment.setSinglePrice(Double.parseDouble(request.getParameter(singlePrice)));
				if (!request.getParameter(number).equals(""))
					equipment.setNumber(Integer.parseInt(request.getParameter(number)));
				if (!request.getParameter(totalPrice).equals(""))
					equipment.setTotalPrice(Double.parseDouble(request.getParameter(totalPrice)));
				equipment.setLocation(new String(request.getParameter(location).getBytes("iso-8859-1"), "utf-8"));
				equipment.setRelationship(new String(request.getParameter(relationship).getBytes("iso-8859-1"), "utf-8"));
				equipments.add(equipment);
			}
		}	
		enterpriseInfoService.deleteEnterpriseProjectEquipmentByProjectId(projectId);
		if(equipments.size()>0){
			HashMap<String, List<EnterpriseProjectEquipment>> equipmentMap = new HashMap<>();
			equipmentMap.put("equipmentMap", equipments);
			enterpriseInfoService.insertEnterpriseEquipment(equipmentMap);
		}
		
		//项目合作企业
		List<EnterpriseCorporator> corporators = new ArrayList<>();
		for(int i=0;i<2;i++){		
			String corName="C"+(65+4*i);
			String corCompanyCode="C"+(65+4*i+1);
			String corPeopleInCharge="C"+(65+4*i+2);
			String corPhone="C"+(65+4*i+3);
			EnterpriseCorporator corporator = new EnterpriseCorporator();
			corporator.setProjectId(projectId);
			corporator.setName(new String(request.getParameter(corName).getBytes("iso-8859-1"), "utf-8"));
			corporator.setCompanyCode(new String(request.getParameter(corCompanyCode).getBytes("iso-8859-1"), "utf-8"));
			corporator.setPeopleInCharge(new String(request.getParameter(corPeopleInCharge).getBytes("iso-8859-1"), "utf-8"));
			corporator.setPhone(new String(request.getParameter(corPhone).getBytes("iso-8859-1"), "utf-8"));
			corporators.add(corporator);
		}
		enterpriseInfoService.deleteEnterpriseCorporators(projectId);
		HashMap<String, List<EnterpriseCorporator>> corporatorMap = new HashMap<>();
		corporatorMap.put("corporatorMap", corporators);
		enterpriseInfoService.insertEnterpriseCorporator(corporatorMap);
		return "enterprise/setproject";		
	}

	@RequestMapping("toSetProject")
	public String toSetProject(ModelMap model ){
		HttpSession session = request.getSession();
		int enterpriseId=Integer.parseInt((String)session.getAttribute("companyCode"));
		EnterpriseProject enterpriseProject = new EnterpriseProject();
		if(enterpriseProjectService.getUnSubmitEnterpriseProjectNumber(enterpriseId)>0){
			enterpriseProject= enterpriseProjectService.getUnSubmitEnterpriseProject(enterpriseId);
			int id = enterpriseProject.getId();
			EnterpriseProInvestmentBudget fromGov = enterpriseInfoService.getEnterpriseProInvestmentBudgetByProIdAndType(id, 0);
			EnterpriseProInvestmentBudget fromSelf = enterpriseInfoService.getEnterpriseProInvestmentBudgetByProIdAndType(id, 1);
			EnterpriseExcuPerson leader = enterpriseInfoService.getProjectLeader(id);
			ArrayList<EnterpriseExcuPerson> members = enterpriseInfoService.getProjectMembers(id);
			if(members.size()<5){
				for(int i=members.size();i<5;i++)
					members.add(new EnterpriseExcuPerson());
			}
			ArrayList<EnterpriseCorporator> corporators = enterpriseInfoService.getEnterpriseCorporators(id);
			if(corporators.size()<2){
				for(int i=corporators.size();i<2;i++)
					corporators.add(new EnterpriseCorporator());
			}
			ArrayList<EnterpriseProjectEquipment> equipments = enterpriseInfoService.getProjectEquipments(id);
			
			model.put("equipments", equipments);
			model.put("corporators", corporators);
			model.put("members", members);
			model.put("leader", leader);
			model.put("fromGov", fromGov);
			model.put("fromSelf", fromSelf);
		}
				
		
		Date date = new Date();
		int year=date.getYear()+1900;		
		Enterprise enterprise = enterpriseInfoService.getEnterpriseInfoById(enterpriseId);
		EnterpriseFinance lastYear = enterpriseInfoService.getEnterpriseFinanceByIdAndYear(enterpriseId, year-1);
		EnterpriseFinance yearBeforeLastYear = enterpriseInfoService.getEnterpriseFinanceByIdAndYear(enterpriseId, year-2);		
		EnterprisePeopleInCharge peopleInCharge = enterpriseInfoService.getEnterprisePeopleInCharge(enterpriseId);
		model.put("peopleInCharge", peopleInCharge);
		ArrayList<EnterpriseShareholder> shareholders = enterpriseInfoService.getShareholders(enterpriseId);
		model.put("shareHolers", shareholders);
		model.put("enterpriseInfo", enterprise);
		model.put("detail", enterpriseProject);
		
		
		model.put("lastyear", lastYear);
		model.put("yearBeforeLastYear", yearBeforeLastYear);
		
		return "enterprise/setproject";
	}

	@RequestMapping("enterpriseProjectOverview")
	@ResponseBody
	public String enterpriseProjectOverview(
			@RequestParam(value = "order") final String order,
			@RequestParam(value = "sort") final String sort,
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize) {
		System.out.println("enterpriseProjectOverview");
		HttpSession session = request.getSession();
		ArrayList<EnterpriseProject> enterpriseProjects = enterpriseProjectService
				.getEnterpriseProjectsByID(Integer.parseInt(session.getAttribute("companyCode").toString()));
		int start = 0;
		int end = 0;
		if (enterpriseProjects.size() != 0) {
			start = (pageId - 1) * pageSize;
			end = Math.min(enterpriseProjects.size(), start + pageSize);
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", enterpriseProjects.size());
		hashMap.put("rows", enterpriseProjects.subList(start, end));
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		return result;
	}
	
	@RequestMapping("setoverview")
	@ResponseBody
	public String setoverview(
			@RequestParam(value = "order") final String order,
			@RequestParam(value = "sort") final String sort,
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize) {
		System.out.println("setoverview");
		HttpSession session = request.getSession();
		ArrayList<EnterpriseProject> enterpriseProjects = enterpriseProjectService
				.getSetEnterpriseProjectsByID(Integer.parseInt(session.getAttribute("companyCode").toString()));
		int start = 0;
		int end = 0;
		if (enterpriseProjects.size() != 0) {
			start = (pageId - 1) * pageSize;
			end = Math.min(enterpriseProjects.size(), start + pageSize);
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", enterpriseProjects.size());
		hashMap.put("rows", enterpriseProjects.subList(start, end));
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		return result;
	}
	
	@RequestMapping("stageoverview")
	@ResponseBody
	public String stageoverview(
			@RequestParam(value = "state") final String state,
			@RequestParam(value = "order") final String order,
			@RequestParam(value = "sort") final String sort,
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize) {
		System.out.println("stageoverview");

		System.out.println(state);
		System.out.println(order);
		System.out.println(sort);
		System.out.println(pageId);
		System.out.println(pageSize);
		
		if(state.equals("项目执行情况报表（中期）")){
			//中期表
			HttpSession session = request.getSession();
			int enterpriseid = Integer.parseInt(session.getAttribute("companyCode").toString());
			//找中期报告基本内容
			ArrayList<EnterpriseMiddleTitle> enterprisemiddletitle = enterpriseMiddleService.getEnterpriseMiddleTitleByEnterprise(enterpriseid);
			ArrayList<EnterpriseMiddleTitleVo> enterprisemiddletitlevo=new ArrayList<EnterpriseMiddleTitleVo>();
			

			int start = 0;
			int end = 0;
			if (enterprisemiddletitle.size() != 0) {
				start = (pageId - 1) * pageSize;
				end = Math.min(enterprisemiddletitle.size(), start + pageSize);
			}
			for (int i = start; i < end; i++) {
				EnterpriseMiddleTitleVo makerWorkVo = new EnterpriseMiddleTitleVo();
				makerWorkVo.transfer(enterprisemiddletitle.get(i));
				System.out.println(makerWorkVo.getSubmit()+"sub");
				enterprisemiddletitlevo.add(makerWorkVo);
			}
			HashMap hashMap = new HashMap();
			hashMap.put("total", enterprisemiddletitlevo.size());
			hashMap.put("rows", enterprisemiddletitlevo.subList(start, end));
			String result1 = JSONArray.fromObject(hashMap).toString();
			String result = result1.substring(1, result1.length() - 1);
			return result;
		}else if(state.equals("项目执行情况报表（半年）")){
			HttpSession session = request.getSession();
			int enterpriseid = Integer.parseInt(session.getAttribute("companyCode").toString());
			//找中期报告基本内容
			ArrayList<EnterpriseHalfyearTitle> enterprisehalfyeartitle = enterpriseHalfyearService.getEnterpriseHalfyearTitleByEnterprise(enterpriseid);
			ArrayList<EnterpriseHalfyearTitleVo> enterprisehalfyeartitlevo=new ArrayList<EnterpriseHalfyearTitleVo>();
			

			int start = 0;
			int end = 0;
			if (enterprisehalfyeartitle.size() != 0) {
				start = (pageId - 1) * pageSize;
				end = Math.min(enterprisehalfyeartitle.size(), start + pageSize);
			}
			for (int i = start; i < end; i++) {
				EnterpriseHalfyearTitleVo makerWorkVo = new EnterpriseHalfyearTitleVo();
				makerWorkVo.transfer(enterprisehalfyeartitle.get(i));
				System.out.println(makerWorkVo.getSubmit()+"sub");
				enterprisehalfyeartitlevo.add(makerWorkVo);
			}
			HashMap hashMap = new HashMap();
			hashMap.put("total", enterprisehalfyeartitlevo.size());
			hashMap.put("rows", enterprisehalfyeartitlevo.subList(start, end));
			String result1 = JSONArray.fromObject(hashMap).toString();
			String result = result1.substring(1, result1.length() - 1);
			return result;
		}else if(state.equals("项目执行情况报表（全年）")){
			HttpSession session = request.getSession();
			int enterpriseid = Integer.parseInt(session.getAttribute("companyCode").toString());
			//找中期报告基本内容
			ArrayList<EnterpriseWholeyearTitle> enterprisehalfyeartitle = enterpriseWholeyearService.getEnterpriseWholeyearTitleByEnterprise(enterpriseid);
			ArrayList<EnterpriseWholeyearTitleVo> enterprisehalfyeartitlevo=new ArrayList<EnterpriseWholeyearTitleVo>();
			

			int start = 0;
			int end = 0;
			if (enterprisehalfyeartitle.size() != 0) {
				start = (pageId - 1) * pageSize;
				end = Math.min(enterprisehalfyeartitle.size(), start + pageSize);
			}
			for (int i = start; i < end; i++) {
				EnterpriseWholeyearTitleVo makerWorkVo = new EnterpriseWholeyearTitleVo();
				makerWorkVo.transfer(enterprisehalfyeartitle.get(i));
				System.out.println(makerWorkVo.getSubmit()+"sub");
				enterprisehalfyeartitlevo.add(makerWorkVo);
			}
			HashMap hashMap = new HashMap();
			hashMap.put("total", enterprisehalfyeartitlevo.size());
			hashMap.put("rows", enterprisehalfyeartitlevo.subList(start, end));
			String result1 = JSONArray.fromObject(hashMap).toString();
			String result = result1.substring(1, result1.length() - 1);
			return result;			
			
			
			
		}else{
			
		}
		
		return "";
	}
	@RequestMapping("showSetProject")
	public String showSetProject(
			@RequestParam(value = "id") final String projectid,ModelMap model
			) {
		System.out.println("showSetProject");
		System.out.println(projectid);
				//读取enterpriseproject 表中主键为projectid的列的数据
		ArrayList<EnterpriseProject> enterpriseProjects = enterpriseProjectService
				.getSetEnterpriseProjectsByID(Integer.parseInt(projectid));	
		if(enterpriseProjects.size() != 0){
			System.out.println("return project");
			model.put("project", enterpriseProjects.get(0));
		}


		return "enterprise/setprojectview";
	}
	@RequestMapping("middleView")
	public String middleView(
			@RequestParam(value = "id") final String projectid,ModelMap model
			) {
		System.out.println("middleView");
		System.out.println(projectid);
				//读取enterpriseproject 表中主键为projectid的列的数据
		HttpSession session = request.getSession();
	/*	ArrayList<EnterpriseProject> enterpriseProjects = enterpriseProjectService
				.getSetEnterpriseProjectsByID(Integer.parseInt(projectid));	*/
		EnterpriseMiddleInformation eminfo = null;
		EnterpriseMiddleTitle emtitle = null;
		EnterpriseMiddleOpinion emopinion = null;
		
		eminfo = enterpriseMiddleService.getEnterpriseMiddleInfoByID(Integer.parseInt(projectid));
		emtitle = enterpriseMiddleService.getEnterpriseMiddleTitleByID(Integer.parseInt(projectid));
		emopinion = enterpriseMiddleService.getEnterpriseMiddleOpinionByID(Integer.parseInt(projectid));
		
		System.out.println("return middleView");
		model.put("eminfo", eminfo);
		model.put("emtitle", emtitle);
		model.put("emopinion", emopinion);

		if(emtitle.getIsSubmit() == 1){
			return "enterprise/middleview";
		}
		else
		{
			session.setAttribute("onEdit", projectid);
			return "enterprise/middle";
		}
	}
	@RequestMapping("halfyearView")
	public String halfyearView(
			@RequestParam(value = "id") final String projectid,ModelMap model
			) {
		System.out.println("halfyearView");
		System.out.println(projectid);
		HttpSession session = request.getSession();
		
		EnterpriseHalfyearInformation ehinfo = null;
		EnterpriseHalfyearTitle ehtitle = null;

		
		ehinfo = enterpriseHalfyearService.getEnterpriseHalfyearInfoByID(Integer.parseInt(projectid));
		ehtitle = enterpriseHalfyearService.getEnterpriseHalfyearTitleByID(Integer.parseInt(projectid));
		
		System.out.println("return halfyearView");
		model.put("ehinfo", ehinfo);
		model.put("ehtitle", ehtitle);
		if(ehtitle.getIsSubmit() == 1){
			return "enterprise/halfyearview";
		}
		else
		{
			session.setAttribute("onEdit", projectid);
			return "enterprise/halfyear";
		}
	}
	@RequestMapping("wholeyearView")
	public String wholeyearView(
			@RequestParam(value = "id") final String projectid,ModelMap model
			) {
		System.out.println("wholeyearView");
		System.out.println(projectid);
		HttpSession session = request.getSession();
		EnterpriseWholeyearInformation ewinfo = null;
		EnterpriseWholeyearTitle ewtitle = null;

		
		ewinfo = enterpriseWholeyearService.getEnterpriseWholeyearInfoByID(Integer.parseInt(projectid));
		ewtitle = enterpriseWholeyearService.getEnterpriseWholeyearTitleByID(Integer.parseInt(projectid));
		
		System.out.println("return wholeyearView");
		model.put("ehinfo", ewinfo);
		model.put("ehtitle", ewtitle);
		if(ewtitle.getIsSubmit() == 1){
			return "enterprise/wholeyearview";
		}
		else
		{
			session.setAttribute("onEdit", projectid);
			return "enterprise/wholeyear";
		}
		
	}
	@RequestMapping("endoverview")
	@ResponseBody
	public String endoverview(
			@RequestParam(value = "order") final String order,
			@RequestParam(value = "sort") final String sort,
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize) {
		System.out.println("endoverview");
		HttpSession session = request.getSession();
		ArrayList<ProjectCheckForm> pcfs = projectcheckService
				.getProjectFormsByEnterpriseID(Integer.parseInt(session.getAttribute("companyCode").toString()));
		ArrayList<ProjectCheckFormVo> pcfvs=new ArrayList<ProjectCheckFormVo>();
		int start = 0;
		int end = 0;
		if (pcfs.size() != 0) {
			start = (pageId - 1) * pageSize;
			end = Math.min(pcfs.size(), start + pageSize);
		}
		
		for (int i = start; i < end; i++) {
			ProjectCheckFormVo makerWorkVo = new ProjectCheckFormVo();
			makerWorkVo.transfer(pcfs.get(i));
			System.out.println(makerWorkVo.getSubmit()+"sub");
			pcfvs.add(makerWorkVo);
		}
		
		HashMap hashMap = new HashMap();
		hashMap.put("total", pcfvs.size());
		hashMap.put("rows", pcfvs.subList(start, end));
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		return result;
	}
	
	@RequestMapping("endprojectView")
	public String endprojectView(
			@RequestParam(value = "id") final String projectid,ModelMap model
			) {
		System.out.println("endprojectViewView");
		System.out.println(projectid);
		HttpSession session = request.getSession();

		ProjectCheckForm pcf = null;
		ProjectCheckInfo pci = null;
		ProjectCheckBudget pcb = null;

		pcf = projectcheckService.getprojectcheckformByID(Integer.parseInt(projectid));
		pci = projectcheckService.getprojectcheckinfoByID(Integer.parseInt(projectid));
		pcb = projectcheckService.getprojectcheckbudgetByID(Integer.parseInt(projectid));

		
		System.out.println("return endprojectView");
		model.put("pcf", pcf);
		model.put("pci", pci);
		model.put("pcb", pcb);
		if(pcf.getIsSubmit() == 1){
			return "enterprise/endprojectreview";
		}
		else
		{
			session.setAttribute("onEdit", projectid);
			return "enterprise/endproject";
		}
		
	}
	
	@RequestMapping("saveendproject")
	public String saveendproject(
			@RequestParam(value = "sort") final String sort,
			@RequestParam(value = "G1") final String g1,
			@RequestParam(value = "G2") final String g2,
			@RequestParam(value = "G3") final String g3,
			@RequestParam(value = "G4") final String g4,
			@RequestParam(value = "G5") final String g5,
			@RequestParam(value = "G6") final String g6,
			@RequestParam(value = "G7") final String g7,
			@RequestParam(value = "G8") final String g8,
			@RequestParam(value = "G9") final String g9,
			@RequestParam(value = "K1") final String k1,
			@RequestParam(value = "K2") final String k2,
			@RequestParam(value = "K3") final String k3,
			@RequestParam(value = "K4") final String k4,
			@RequestParam(value = "K5") final String k5,
			@RequestParam(value = "K6") final String k6,
			@RequestParam(value = "K7") final String k7,
			@RequestParam(value = "K8") final String k8,
			@RequestParam(value = "K9") final String k9,
			@RequestParam(value = "K10") final String k10,
			@RequestParam(value = "K11") final String k11,
			@RequestParam(value = "K12") final String k12,
			@RequestParam(value = "K13") final String k13,
			@RequestParam(value = "K14") final String k14,
			@RequestParam(value = "K15") final String k15,
			@RequestParam(value = "K16") final String k16,
			@RequestParam(value = "K17") final String k17,
			@RequestParam(value = "K18") final String k18,
			@RequestParam(value = "K19") final String k19,
			@RequestParam(value = "K20") final String k20,
			@RequestParam(value = "K21") final String k21,
			@RequestParam(value = "K22") final String k22,
			@RequestParam(value = "K23") final String k23,
			@RequestParam(value = "K24") final String k24,
			@RequestParam(value = "K25") final String k25,
			@RequestParam(value = "K26") final String k26,
			@RequestParam(value = "K27") final String k27,
			@RequestParam(value = "K28") final String k28,
			@RequestParam(value = "K29") final String k29,
			@RequestParam(value = "K30") final String k30,
			@RequestParam(value = "K31") final String k31,
			@RequestParam(value = "K32") final String k32,
			@RequestParam(value = "K33") final String k33,
			@RequestParam(value = "K34") final String k34,
			@RequestParam(value = "K35") final String k35,
			@RequestParam(value = "K36") final String k36,
			@RequestParam(value = "K37") final String k37,
			@RequestParam(value = "K38") final String k38,
			@RequestParam(value = "K39") final String k39,
			@RequestParam(value = "K40") final String k40,
			@RequestParam(value = "K41") final String k41,
			@RequestParam(value = "K42") final String k42,
			@RequestParam(value = "K43") final String k43,
			@RequestParam(value = "K44") final String k44,
			@RequestParam(value = "K45") final String k45,
			@RequestParam(value = "K46") final String k46,
			@RequestParam(value = "K47") final String k47,
			@RequestParam(value = "K48") final String k48,
			@RequestParam(value = "K49") final String k49,
			@RequestParam(value = "I1") final String i1,
			@RequestParam(value = "I2") final String i2,
			@RequestParam(value = "I3") final String i3,
			@RequestParam(value = "I4") final String i4,
			@RequestParam(value = "I5") final String i5,
			@RequestParam(value = "I6") final String i6,
			@RequestParam(value = "I7") final String i7,
			@RequestParam(value = "I8") final String i8,
			@RequestParam(value = "I9") final String i9,
			@RequestParam(value = "I10") final String i10,
			@RequestParam(value = "I11") final String i11,
			@RequestParam(value = "I12") final String i12,
			@RequestParam(value = "I13") final String i13,
			@RequestParam(value = "I14") final String i14,
			@RequestParam(value = "I15") final String i15,
			@RequestParam(value = "I16") final String i16,
			@RequestParam(value = "I17") final String i17,
			@RequestParam(value = "I18") final String i18,
			@RequestParam(value = "I19") final String i19,
			@RequestParam(value = "I20") final String i20,
			@RequestParam(value = "I21") final String i21,
			@RequestParam(value = "I22") final String i22,
			@RequestParam(value = "I23") final String i23,
			@RequestParam(value = "I24") final String i24,
			@RequestParam(value = "I25") final String i25,
			@RequestParam(value = "I26") final String i26,
			@RequestParam(value = "I27") final String i27,
			@RequestParam(value = "I28") final String i28,
			@RequestParam(value = "I29") final String i29,
			@RequestParam(value = "I30") final String i30,
			@RequestParam(value = "I31") final String i31,
			@RequestParam(value = "I32") final String i32,
			@RequestParam(value = "I33") final String i33,
			@RequestParam(value = "I34") final String i34,
			@RequestParam(value = "I35") final String i35,
			@RequestParam(value = "I36") final String i36,
			@RequestParam(value = "I37") final String i37,
			@RequestParam(value = "I38") final String i38,
			@RequestParam(value = "I39") final String i39,
			@RequestParam(value = "I40") final String i40,
			@RequestParam(value = "I41") final String i41,
			@RequestParam(value = "I42") final String i42
			) throws UnsupportedEncodingException {
		System.out.println("saveendproject");
		System.out.println(sort);
		
		HttpSession session = request.getSession();
		String id= (String) session.getAttribute("onEdit");
		
			
			ProjectCheckForm pcf = new ProjectCheckForm();
/*			pcf.setEnterpriseID(enterpriseID);
			pcf.setEnterpriseProjectID(enterpriseProjectID);
			pcf.setFujian(fujian);
			pcf.setFujianName(fujianName);
			pcf.setFujianType(fujianType);*/
			pcf.setG1(new String(g1.getBytes("iso-8859-1"), "utf-8"));
			pcf.setG2(new String(g2.getBytes("iso-8859-1"), "utf-8"));
			pcf.setG3(new String(g3.getBytes("iso-8859-1"), "utf-8"));
			pcf.setG4(new String(g4.getBytes("iso-8859-1"), "utf-8"));
			pcf.setG5(new String(g5.getBytes("iso-8859-1"), "utf-8"));
			pcf.setG6(new String(g6.getBytes("iso-8859-1"), "utf-8"));
			pcf.setG7(new String(g7.getBytes("iso-8859-1"), "utf-8"));
			pcf.setG8(new String(g8.getBytes("iso-8859-1"), "utf-8"));
			pcf.setG9(new String(g9.getBytes("iso-8859-1"), "utf-8"));
			pcf.setID(Integer.parseInt(id));
			
			ProjectCheckInfo pci = new ProjectCheckInfo();
			pci.setID(Integer.parseInt(id));
			pci.setK1(new String(k1.getBytes("iso-8859-1"), "utf-8"));
			pci.setK2(new String(k2.getBytes("iso-8859-1"), "utf-8"));
			pci.setK3(new String(k3.getBytes("iso-8859-1"), "utf-8"));
			pci.setK4(new String(k4.getBytes("iso-8859-1"), "utf-8"));
			pci.setK5(new String(k5.getBytes("iso-8859-1"), "utf-8"));
			pci.setK6(new String(k6.getBytes("iso-8859-1"), "utf-8"));
			pci.setK7(new String(k7.getBytes("iso-8859-1"), "utf-8"));
			pci.setK8(new String(k8.getBytes("iso-8859-1"), "utf-8"));
			pci.setK9(new String(k9.getBytes("iso-8859-1"), "utf-8"));
			pci.setK10(new String(k10.getBytes("iso-8859-1"), "utf-8"));
			pci.setK11(new String(k11.getBytes("iso-8859-1"), "utf-8"));
			pci.setK12(new String(k12.getBytes("iso-8859-1"), "utf-8"));
			pci.setK13(new String(k13.getBytes("iso-8859-1"), "utf-8"));
			pci.setK14(new String(k14.getBytes("iso-8859-1"), "utf-8"));
			pci.setK15(new String(k15.getBytes("iso-8859-1"), "utf-8"));
			pci.setK16(new String(k16.getBytes("iso-8859-1"), "utf-8"));
			pci.setK17(new String(k17.getBytes("iso-8859-1"), "utf-8"));
			pci.setK18(new String(k18.getBytes("iso-8859-1"), "utf-8"));
			pci.setK19(new String(k19.getBytes("iso-8859-1"), "utf-8"));
			pci.setK20(new String(k20.getBytes("iso-8859-1"), "utf-8"));
			pci.setK21(new String(k21.getBytes("iso-8859-1"), "utf-8"));
			pci.setK22(new String(k22.getBytes("iso-8859-1"), "utf-8"));
			pci.setK23(new String(k23.getBytes("iso-8859-1"), "utf-8"));
			pci.setK24(new String(k24.getBytes("iso-8859-1"), "utf-8"));
			pci.setK25(new String(k25.getBytes("iso-8859-1"), "utf-8"));
			pci.setK26(new String(k26.getBytes("iso-8859-1"), "utf-8"));
			pci.setK27(new String(k27.getBytes("iso-8859-1"), "utf-8"));
			pci.setK28(new String(k28.getBytes("iso-8859-1"), "utf-8"));
			pci.setK29(new String(k29.getBytes("iso-8859-1"), "utf-8"));
			pci.setK30(new String(k30.getBytes("iso-8859-1"), "utf-8"));
			pci.setK31(new String(k31.getBytes("iso-8859-1"), "utf-8"));
			pci.setK32(new String(k32.getBytes("iso-8859-1"), "utf-8"));
			pci.setK33(new String(k33.getBytes("iso-8859-1"), "utf-8"));
			pci.setK34(new String(k34.getBytes("iso-8859-1"), "utf-8"));
			pci.setK35(new String(k35.getBytes("iso-8859-1"), "utf-8"));
			pci.setK36(new String(k36.getBytes("iso-8859-1"), "utf-8"));
			pci.setK37(new String(k37.getBytes("iso-8859-1"), "utf-8"));
			pci.setK38(new String(k38.getBytes("iso-8859-1"), "utf-8"));
			pci.setK39(new String(k39.getBytes("iso-8859-1"), "utf-8"));
			pci.setK40(new String(k40.getBytes("iso-8859-1"), "utf-8"));
			pci.setK41(new String(k41.getBytes("iso-8859-1"), "utf-8"));
			pci.setK42(new String(k42.getBytes("iso-8859-1"), "utf-8"));
			pci.setK43(new String(k43.getBytes("iso-8859-1"), "utf-8"));
			pci.setK44(new String(k44.getBytes("iso-8859-1"), "utf-8"));
			pci.setK45(new String(k45.getBytes("iso-8859-1"), "utf-8"));
			pci.setK46(new String(k46.getBytes("iso-8859-1"), "utf-8"));
			pci.setK47(new String(k47.getBytes("iso-8859-1"), "utf-8"));
			pci.setK48(new String(k48.getBytes("iso-8859-1"), "utf-8"));
			pci.setK49(new String(k49.getBytes("iso-8859-1"), "utf-8"));
			
			ProjectCheckBudget pcb = new ProjectCheckBudget();
			pcb.setID(Integer.parseInt(id));
			pcb.setI1(new String(i1.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI2(new String(i2.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI3(new String(i3.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI4(new String(i4.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI5(new String(i5.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI6(new String(i6.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI7(new String(i7.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI8(new String(i8.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI9(new String(i9.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI10(new String(i10.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI11(new String(i11.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI12(new String(i12.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI13(new String(i13.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI14(new String(i14.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI15(new String(i15.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI16(new String(i16.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI17(new String(i17.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI18(new String(i18.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI19(new String(i19.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI20(new String(i20.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI21(new String(i21.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI22(new String(i22.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI23(new String(i23.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI24(new String(i24.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI25(new String(i25.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI26(new String(i26.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI27(new String(i27.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI28(new String(i28.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI29(new String(i29.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI30(new String(i30.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI31(new String(i31.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI32(new String(i32.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI33(new String(i33.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI34(new String(i34.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI35(new String(i35.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI36(new String(i36.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI37(new String(i37.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI38(new String(i38.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI39(new String(i39.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI40(new String(i40.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI41(new String(i41.getBytes("iso-8859-1"), "utf-8"));
			pcb.setI42(new String(i42.getBytes("iso-8859-1"), "utf-8"));
		if(sort.equals("save")){
			System.out.println("savepro");
			pcf.setIsSubmit(0);
			projectcheckService.saveProjectCheckForm(pcf);
			projectcheckService.saveProjectCheckInfo(pci);
			projectcheckService.saveProjectCheckBudget(pcb);
		}else{
			System.out.println("submit");
			pcf.setIsSubmit(1);
			projectcheckService.saveProjectCheckForm(pcf);
			projectcheckService.saveProjectCheckInfo(pci);
			projectcheckService.saveProjectCheckBudget(pcb);
		}
		return "enterprise/endoverview";	
	}
	
	@RequestMapping("savehalfyear")
	public String savehalfyear(
			@RequestParam(value = "sort") final String sort,
			@RequestParam(value = "j5") final String informant,
			@RequestParam(value = "j789") final String date,
			@RequestParam(value = "j6") final String phone,
			@RequestParam(value = "k5") final String k5,
			@RequestParam(value = "k6") final String k6,
			@RequestParam(value = "k7") final String k7,
			@RequestParam(value = "k8") final String k8,
			@RequestParam(value = "k9") final String k9,
			@RequestParam(value = "k10") final String k10,
			@RequestParam(value = "k11") final String k11,
			@RequestParam(value = "k12") final String k12,
			@RequestParam(value = "k13") final String k13,
			@RequestParam(value = "k14") final String k14,
			@RequestParam(value = "k15") final String k15,
			@RequestParam(value = "k16") final String k16,
			@RequestParam(value = "k17") final String k17,
			@RequestParam(value = "k18") final String k18,
			@RequestParam(value = "k19") final String k19,
			@RequestParam(value = "k20") final String k20,
			@RequestParam(value = "k21") final String k21,
			@RequestParam(value = "k22") final String k22,
			@RequestParam(value = "k23") final String k23,
			@RequestParam(value = "k24") final String k24,
			@RequestParam(value = "k25") final String k25,
			@RequestParam(value = "k26") final String k26,
			@RequestParam(value = "k27") final String k27,
			@RequestParam(value = "k28") final String k28,
			@RequestParam(value = "k29") final String k29,
			@RequestParam(value = "k30") final String k30,
			@RequestParam(value = "k31") final String k31,
			@RequestParam(value = "k32") final String k32,
			@RequestParam(value = "k33") final String k33,
			@RequestParam(value = "k34") final String k34,
			@RequestParam(value = "k35") final String k35,
			@RequestParam(value = "k36") final String k36,
			@RequestParam(value = "k37") final String k37,
			@RequestParam(value = "k38") final String k38,
			@RequestParam(value = "k39") final String k39,
			@RequestParam(value = "k40") final String k40,
			@RequestParam(value = "k41") final String k41,
			@RequestParam(value = "k42") final String k42,
			@RequestParam(value = "k43") final String k43,
			@RequestParam(value = "k44") final String k44,
			@RequestParam(value = "k45") final String k45,
			@RequestParam(value = "k46") final String k46,
			@RequestParam(value = "k47") final String k47,
			@RequestParam(value = "k48") final String k48,
			@RequestParam(value = "k49") final String k49,
			@RequestParam(value = "k50") final String k50,
			@RequestParam(value = "k51") final String k51,
			@RequestParam(value = "k52") final String k52,
			@RequestParam(value = "k53") final String k53,
			@RequestParam(value = "k54") final String k54,
			@RequestParam(value = "k55") final String k55,
			@RequestParam(value = "k56") final String k56,
			@RequestParam(value = "k57") final String k57,
			@RequestParam(value = "k58") final String k58,
			@RequestParam(value = "k59") final String k59,
			@RequestParam(value = "k60") final String k60,
			@RequestParam(value = "k61") final String k61,
			@RequestParam(value = "k62") final String k62,
			@RequestParam(value = "k63") final String k63,
			@RequestParam(value = "k64") final String k64,
			@RequestParam(value = "k65") final String k65,
			@RequestParam(value = "k66") final String k66,
			@RequestParam(value = "k67") final String k67,
			@RequestParam(value = "k68") final String k68,
			@RequestParam(value = "k69") final String k69,
			@RequestParam(value = "k70") final String k70,
			@RequestParam(value = "k71") final String k71,
			@RequestParam(value = "k72") final String k72,
			@RequestParam(value = "k73") final String k73,
			@RequestParam(value = "k74") final String k74,
			@RequestParam(value = "k75") final String k75,
			@RequestParam(value = "k76") final String k76,
			@RequestParam(value = "k77") final String k77,
			@RequestParam(value = "k78") final String k78,
			@RequestParam(value = "k79") final String k79,
			@RequestParam(value = "k80") final String k80,
			@RequestParam(value = "k81") final String k81,
			@RequestParam(value = "k82") final String k82,
			@RequestParam(value = "k83") final String k83,
			@RequestParam(value = "k84") final String k84,
			@RequestParam(value = "k85") final String k85,
			@RequestParam(value = "k86") final String k86,
			@RequestParam(value = "k87") final String k87,
			@RequestParam(value = "k88") final String k88,
			@RequestParam(value = "k89") final String k89,
			@RequestParam(value = "k90") final String k90,
			@RequestParam(value = "k91") final String k91,
			@RequestParam(value = "k92") final String k92,
			@RequestParam(value = "k93") final String k93,
			@RequestParam(value = "k94") final String k94		
			) throws UnsupportedEncodingException{
		
		System.out.println("savehalfyear");
		System.out.println(sort);
		
		HttpSession session = request.getSession();
		String id= (String) session.getAttribute("onEdit");
		
		EnterpriseHalfyearTitle eht=new EnterpriseHalfyearTitle();
		eht.setId(Integer.parseInt(id));
		eht.setInformant(informant);
		eht.setDate(date);
		eht.setPhone(phone);
		
		EnterpriseHalfyearInformation ehi=new EnterpriseHalfyearInformation();
		ehi.setId(Integer.parseInt(id));
		ehi.setK5(new String(k5.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK6(new String(k6.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK7(new String(k7.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK8(new String(k8.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK9(new String(k9.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK10(new String(k10.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK11(new String(k11.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK12(new String(k12.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK13(new String(k13.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK14(new String(k14.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK15(new String(k15.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK16(new String(k16.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK17(new String(k17.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK18(new String(k18.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK19(new String(k19.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK20(new String(k20.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK21(new String(k21.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK22(new String(k22.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK23(new String(k23.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK24(new String(k24.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK25(new String(k25.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK26(new String(k26.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK27(new String(k27.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK28(new String(k28.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK29(new String(k29.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK30(new String(k30.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK31(new String(k31.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK32(new String(k32.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK33(new String(k33.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK34(new String(k34.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK35(new String(k35.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK36(new String(k36.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK37(new String(k37.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK38(new String(k38.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK39(new String(k39.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK40(new String(k40.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK41(new String(k41.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK42(new String(k42.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK43(new String(k43.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK44(new String(k44.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK45(new String(k45.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK46(new String(k46.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK47(new String(k47.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK48(new String(k48.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK49(new String(k49.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK50(new String(k50.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK51(new String(k51.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK52(new String(k52.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK53(new String(k53.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK54(new String(k54.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK55(new String(k55.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK56(new String(k56.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK57(new String(k57.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK58(new String(k58.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK59(new String(k59.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK60(new String(k60.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK61(new String(k61.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK62(new String(k62.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK63(new String(k63.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK64(new String(k64.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK65(new String(k65.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK66(new String(k66.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK67(new String(k67.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK68(new String(k68.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK69(new String(k69.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK70(new String(k70.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK71(new String(k71.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK72(new String(k72.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK73(new String(k73.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK74(new String(k74.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK75(new String(k75.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK76(new String(k76.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK77(new String(k77.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK78(new String(k78.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK79(new String(k79.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK80(new String(k80.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK81(new String(k81.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK82(new String(k82.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK83(new String(k83.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK84(new String(k84.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK85(new String(k85.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK86(new String(k86.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK87(new String(k87.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK88(new String(k88.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK89(new String(k89.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK90(new String(k90.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK91(new String(k91.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK92(new String(k92.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK93(new String(k93.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK94(new String(k94.getBytes("iso-8859-1"), "utf-8"));
		
		if(sort.equals("save")){
			System.out.println("savehalfyear");
			eht.setIsSubmit(0);
			enterpriseHalfyearService.saveenterprisehalfyearTitle(eht);
			enterpriseHalfyearService.saveenterprisehalfyearInformation(ehi);
		}else{
			System.out.println("submithalfyear");
			eht.setIsSubmit(1);
			enterpriseHalfyearService.saveenterprisehalfyearTitle(eht);
			enterpriseHalfyearService.saveenterprisehalfyearInformation(ehi);
		}
		
		
		
		return "enterprise/stageoverview";	
	}
	
	@RequestMapping("savewholeyear")
	public String savewholeyear(
			@RequestParam(value = "sort") final String sort,
			@RequestParam(value = "j5") final String informant,
			@RequestParam(value = "j789") final String date,
			@RequestParam(value = "j6") final String phone,
			@RequestParam(value = "k5") final String k5,
			@RequestParam(value = "k6") final String k6,
			@RequestParam(value = "k7") final String k7,
			@RequestParam(value = "k8") final String k8,
			@RequestParam(value = "k9") final String k9,
			@RequestParam(value = "k10") final String k10,
			@RequestParam(value = "k11") final String k11,
			@RequestParam(value = "k12") final String k12,
			@RequestParam(value = "k13") final String k13,
			@RequestParam(value = "k14") final String k14,
			@RequestParam(value = "k15") final String k15,
			@RequestParam(value = "k16") final String k16,
			@RequestParam(value = "k17") final String k17,
			@RequestParam(value = "k18") final String k18,
			@RequestParam(value = "k19") final String k19,
			@RequestParam(value = "k20") final String k20,
			@RequestParam(value = "k21") final String k21,
			@RequestParam(value = "k22") final String k22,
			@RequestParam(value = "k23") final String k23,
			@RequestParam(value = "k24") final String k24,
			@RequestParam(value = "k25") final String k25,
			@RequestParam(value = "k26") final String k26,
			@RequestParam(value = "k27") final String k27,
			@RequestParam(value = "k28") final String k28,
			@RequestParam(value = "k29") final String k29,
			@RequestParam(value = "k30") final String k30,
			@RequestParam(value = "k31") final String k31,
			@RequestParam(value = "k32") final String k32,
			@RequestParam(value = "k33") final String k33,
			@RequestParam(value = "k34") final String k34,
			@RequestParam(value = "k35") final String k35,
			@RequestParam(value = "k36") final String k36,
			@RequestParam(value = "k37") final String k37,
			@RequestParam(value = "k38") final String k38,
			@RequestParam(value = "k39") final String k39,
			@RequestParam(value = "k40") final String k40,
			@RequestParam(value = "k41") final String k41,
			@RequestParam(value = "k42") final String k42,
			@RequestParam(value = "k43") final String k43,
			@RequestParam(value = "k44") final String k44,
			@RequestParam(value = "k45") final String k45,
			@RequestParam(value = "k46") final String k46,
			@RequestParam(value = "k47") final String k47,
			@RequestParam(value = "k48") final String k48,
			@RequestParam(value = "k49") final String k49,
			@RequestParam(value = "k50") final String k50,
			@RequestParam(value = "k51") final String k51,
			@RequestParam(value = "k52") final String k52,
			@RequestParam(value = "k53") final String k53,
			@RequestParam(value = "k54") final String k54,
			@RequestParam(value = "k55") final String k55,
			@RequestParam(value = "k56") final String k56,
			@RequestParam(value = "k57") final String k57,
			@RequestParam(value = "k58") final String k58,
			@RequestParam(value = "k59") final String k59,
			@RequestParam(value = "k60") final String k60,
			@RequestParam(value = "k61") final String k61,
			@RequestParam(value = "k62") final String k62,
			@RequestParam(value = "k63") final String k63,
			@RequestParam(value = "k64") final String k64,
			@RequestParam(value = "k65") final String k65,
			@RequestParam(value = "k66") final String k66,
			@RequestParam(value = "k67") final String k67,
			@RequestParam(value = "k68") final String k68,
			@RequestParam(value = "k69") final String k69,
			@RequestParam(value = "k70") final String k70,
			@RequestParam(value = "k71") final String k71,
			@RequestParam(value = "k72") final String k72,
			@RequestParam(value = "k73") final String k73,
			@RequestParam(value = "k74") final String k74,
			@RequestParam(value = "k75") final String k75,
			@RequestParam(value = "k76") final String k76,
			@RequestParam(value = "k77") final String k77,
			@RequestParam(value = "k78") final String k78,
			@RequestParam(value = "k79") final String k79,
			@RequestParam(value = "k80") final String k80,
			@RequestParam(value = "k81") final String k81,
			@RequestParam(value = "k82") final String k82,
			@RequestParam(value = "k83") final String k83,
			@RequestParam(value = "k84") final String k84,
			@RequestParam(value = "k85") final String k85,
			@RequestParam(value = "k86") final String k86,
			@RequestParam(value = "k87") final String k87,
			@RequestParam(value = "k88") final String k88,
			@RequestParam(value = "k89") final String k89,
			@RequestParam(value = "k90") final String k90,
			@RequestParam(value = "k91") final String k91,
			@RequestParam(value = "k92") final String k92,
			@RequestParam(value = "k93") final String k93,
			@RequestParam(value = "k94") final String k94,
			@RequestParam(value = "k95") final String k95	
			) throws UnsupportedEncodingException{
		
		System.out.println("savewholeyear");
		System.out.println(sort);
		
		HttpSession session = request.getSession();
		String id= (String) session.getAttribute("onEdit");
		
		EnterpriseWholeyearTitle eht=new EnterpriseWholeyearTitle();
		eht.setId(Integer.parseInt(id));
		eht.setInformant(informant);
		eht.setDate(date);
		eht.setPhone(phone);
		
		EnterpriseWholeyearInformation ehi=new EnterpriseWholeyearInformation();
		ehi.setId(Integer.parseInt(id));
		ehi.setK5(new String(k5.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK6(new String(k6.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK7(new String(k7.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK8(new String(k8.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK9(new String(k9.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK10(new String(k10.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK11(new String(k11.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK12(new String(k12.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK13(new String(k13.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK14(new String(k14.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK15(new String(k15.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK16(new String(k16.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK17(new String(k17.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK18(new String(k18.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK19(new String(k19.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK20(new String(k20.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK21(new String(k21.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK22(new String(k22.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK23(new String(k23.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK24(new String(k24.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK25(new String(k25.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK26(new String(k26.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK27(new String(k27.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK28(new String(k28.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK29(new String(k29.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK30(new String(k30.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK31(new String(k31.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK32(new String(k32.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK33(new String(k33.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK34(new String(k34.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK35(new String(k35.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK36(new String(k36.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK37(new String(k37.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK38(new String(k38.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK39(new String(k39.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK40(new String(k40.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK41(new String(k41.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK42(new String(k42.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK43(new String(k43.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK44(new String(k44.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK45(new String(k45.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK46(new String(k46.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK47(new String(k47.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK48(new String(k48.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK49(new String(k49.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK50(new String(k50.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK51(new String(k51.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK52(new String(k52.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK53(new String(k53.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK54(new String(k54.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK55(new String(k55.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK56(new String(k56.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK57(new String(k57.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK58(new String(k58.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK59(new String(k59.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK60(new String(k60.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK61(new String(k61.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK62(new String(k62.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK63(new String(k63.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK64(new String(k64.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK65(new String(k65.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK66(new String(k66.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK67(new String(k67.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK68(new String(k68.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK69(new String(k69.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK70(new String(k70.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK71(new String(k71.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK72(new String(k72.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK73(new String(k73.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK74(new String(k74.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK75(new String(k75.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK76(new String(k76.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK77(new String(k77.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK78(new String(k78.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK79(new String(k79.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK80(new String(k80.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK81(new String(k81.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK82(new String(k82.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK83(new String(k83.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK84(new String(k84.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK85(new String(k85.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK86(new String(k86.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK87(new String(k87.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK88(new String(k88.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK89(new String(k89.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK90(new String(k90.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK91(new String(k91.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK92(new String(k92.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK93(new String(k93.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK94(new String(k94.getBytes("iso-8859-1"), "utf-8"));
		ehi.setK95(new String(k95.getBytes("iso-8859-1"), "utf-8"));
		if(sort.equals("save")){
			System.out.println("savewholeyear");
			eht.setIsSubmit(0);
			enterpriseWholeyearService.saveenterprisewholeyearTitle(eht);
			enterpriseWholeyearService.saveenterprisewholeyearInformation(ehi);
		}else{
			System.out.println("submitwholeyear");
			eht.setIsSubmit(1);
			enterpriseWholeyearService.saveenterprisewholeyearTitle(eht);
			enterpriseWholeyearService.saveenterprisewholeyearInformation(ehi);
		}
		
		
		
		return "enterprise/stageoverview";	
	}
	@RequestMapping("savemiddle")
	public String savemiddle(@RequestParam(value = "sort") final String sort,
			@RequestParam(value = "j5") final String expert_leader,
			@RequestParam(value = "j789") final String date,
			@RequestParam(value = "k5") final String project_progress,
			@RequestParam(value = "k6") final String unit_self_raised_plan,
			@RequestParam(value = "k7") final String unit_self_raised_real,
			@RequestParam(value = "k8") final String unit_self_raised_total,
			@RequestParam(value = "k9") final String municipal_finance_plan,
			@RequestParam(value = "k10") final String municipal_finance_real,
			@RequestParam(value = "k11") final String municipal_finance_total,
			@RequestParam(value = "k12") final String state_funding_plan,
			@RequestParam(value = "k13") final String state_funding_real,
			@RequestParam(value = "k14") final String state_funding_total,
			@RequestParam(value = "k15") final String other_plan,
			@RequestParam(value = "k16") final String other_real,
			@RequestParam(value = "k17") final String other_total,
			@RequestParam(value = "k18") final String sum_plan,
			@RequestParam(value = "k19") final String sum_real,
			@RequestParam(value = "k20") final String sum_total,
			@RequestParam(value = "k21") final String total_investment,
			@RequestParam(value = "k22") final String total_output,
			@RequestParam(value = "k23") final String sales_revenue,
			@RequestParam(value = "k24") final String added_value,
			@RequestParam(value = "k25") final String net_profit,
			@RequestParam(value = "k26") final String total_tax,
			@RequestParam(value = "k27") final String exchange_earning,
			@RequestParam(value = "k28") final String new_employment,
			@RequestParam(value = "k29") final String patent_application,
			@RequestParam(value = "k30") final String invention_patent,
			@RequestParam(value = "k31") final String pct_patent,
			@RequestParam(value = "k32") final String patent_license,
			@RequestParam(value = "k33") final String invention_licence,
			@RequestParam(value = "k34") final String pct_licence,
			@RequestParam(value = "k35") final String software_registration,
			@RequestParam(value = "k36") final String software_copyright_registration,
			@RequestParam(value = "k37") final String published_papers,
			@RequestParam(value = "k38") final String published_books,
			@RequestParam(value = "k39") final String develop_new_product,
			@RequestParam(value = "k40") final String national_new_products,
			@RequestParam(value = "k41") final String award,
			@RequestParam(value = "k42") final String award_nation,
			@RequestParam(value = "k43") final String award_province,
			@RequestParam(value = "k44") final String standards,
			@RequestParam(value = "k45") final String standards_nation,
			@RequestParam(value = "k46") final String standards_industry,
			@RequestParam(value = "k47") final String demonstration_base,
			@RequestParam(value = "k48") final String lab,
			@RequestParam(value = "k49") final String technological_team 
			) throws UnsupportedEncodingException{
		System.out.println("savewholeyear");
		System.out.println(sort);
		
		HttpSession session = request.getSession();
		String id= (String) session.getAttribute("onEdit");		
		
		EnterpriseMiddleTitle emt=new EnterpriseMiddleTitle();
		emt.setId(Integer.parseInt(id));
		emt.setDate(date);
		emt.setExpert_leader(expert_leader);
		
		EnterpriseMiddleInformation emi=new EnterpriseMiddleInformation();
		emi.setProject_progress(new String(project_progress.getBytes("iso-8859-1"),"utf-8"));
		emi.setId(Integer.parseInt(id));
		emi.setUnit_self_raised_plan(new String(unit_self_raised_plan.getBytes("iso-8859-1"), "utf-8"));
		emi.setUnit_self_raised_real(new String(unit_self_raised_real.getBytes("iso-8859-1"), "utf-8"));
		emi.setUnit_self_raised_total(new String(unit_self_raised_total.getBytes("iso-8859-1"), "utf-8"));
		emi.setMunicipal_finance_plan(new String(municipal_finance_plan.getBytes("iso-8859-1"), "utf-8"));
		emi.setMunicipal_finance_real(new String(municipal_finance_real.getBytes("iso-8859-1"), "utf-8"));
		emi.setMunicipal_finance_total(new String(municipal_finance_total.getBytes("iso-8859-1"), "utf-8"));
		emi.setState_funding_plan(new String(state_funding_plan.getBytes("iso-8859-1"), "utf-8"));
		emi.setState_funding_real(new String(state_funding_real.getBytes("iso-8859-1"), "utf-8"));
		emi.setState_funding_total(new String(state_funding_total.getBytes("iso-8859-1"), "utf-8"));
		emi.setOther_plan(new String(other_plan.getBytes("iso-8859-1"), "utf-8"));
		emi.setOther_real(new String(other_real.getBytes("iso-8859-1"), "utf-8"));
		emi.setOther_total(new String(other_total.getBytes("iso-8859-1"), "utf-8"));
		emi.setSum_plan(new String(sum_plan.getBytes("iso-8859-1"), "utf-8"));
		emi.setSum_real(new String(sum_real.getBytes("iso-8859-1"), "utf-8"));
		emi.setSum_total(new String(sum_total.getBytes("iso-8859-1"), "utf-8"));
		emi.setTotal_investment(new String(total_investment.getBytes("iso-8859-1"), "utf-8"));
		emi.setTotal_output(new String(total_output.getBytes("iso-8859-1"), "utf-8"));
		emi.setSales_revenue(new String(sales_revenue.getBytes("iso-8859-1"), "utf-8"));
		emi.setAdded_value(new String(added_value.getBytes("iso-8859-1"), "utf-8"));
		emi.setNet_profit(new String(net_profit.getBytes("iso-8859-1"), "utf-8"));
		emi.setTotal_tax(new String(total_tax.getBytes("iso-8859-1"), "utf-8"));
		emi.setExchange_earning(new String(exchange_earning.getBytes("iso-8859-1"), "utf-8"));
		emi.setNew_employment(new String(new_employment.getBytes("iso-8859-1"), "utf-8"));
		emi.setPatent_application(new String(patent_application.getBytes("iso-8859-1"), "utf-8"));
		emi.setInvention_patent(new String(invention_patent.getBytes("iso-8859-1"), "utf-8"));
		emi.setPct_patent(new String(pct_patent.getBytes("iso-8859-1"), "utf-8"));
		emi.setPatent_license(new String(patent_license.getBytes("iso-8859-1"), "utf-8"));
		emi.setInvention_licence(new String(invention_licence.getBytes("iso-8859-1"), "utf-8"));
		emi.setPct_licence(new String(pct_licence.getBytes("iso-8859-1"), "utf-8"));
		emi.setSoftware_registration(new String(software_registration.getBytes("iso-8859-1"), "utf-8"));
		emi.setSoftware_copyright_registration(new String(software_copyright_registration.getBytes("iso-8859-1"), "utf-8"));
		emi.setPublished_papers(new String(published_papers.getBytes("iso-8859-1"), "utf-8"));
		emi.setPublished_books(new String(published_books.getBytes("iso-8859-1"), "utf-8"));
		emi.setDevelop_new_product(new String(develop_new_product.getBytes("iso-8859-1"), "utf-8"));
		emi.setNational_new_products(new String(national_new_products.getBytes("iso-8859-1"), "utf-8"));
		emi.setAward(new String(award.getBytes("iso-8859-1"), "utf-8"));
		emi.setAward_province(new String(award_province.getBytes("iso-8859-1"), "utf-8"));
		emi.setAward_nation(new String(award_nation.getBytes("iso-8859-1"), "utf-8"));
		emi.setStandards(new String(standards.getBytes("iso-8859-1"), "utf-8"));
		emi.setStandards_nation(new String(standards_nation.getBytes("iso-8859-1"), "utf-8"));
		emi.setStandards_industry(new String(standards_industry.getBytes("iso-8859-1"), "utf-8"));
		emi.setDemonstration_base(new String(demonstration_base.getBytes("iso-8859-1"), "utf-8"));
		emi.setLab(new String(lab.getBytes("iso-8859-1"), "utf-8"));
		emi.setTechnological_team(new String(technological_team.getBytes("iso-8859-1"), "utf-8"));
		
		if(sort.equals("save")){
			System.out.println("savemiddle");
			emt.setIsSubmit(0);
			enterpriseMiddleService.saveenterprisemiddleTitle(emt);
			enterpriseMiddleService.saveenterprisemiddleInformation(emi);
		}else{
			System.out.println("submitmiddle");
			emt.setIsSubmit(1);
			enterpriseMiddleService.saveenterprisemiddleTitle(emt);
			enterpriseMiddleService.saveenterprisemiddleInformation(emi);
		}
		
		
		
		
		return "enterprise/stageoverview";	
	}
	
	@RequestMapping("enterprisesetProjectOverview")
	@ResponseBody
	public String enterprisesetProjectOverview(
			@RequestParam(value = "order") final String order,
			@RequestParam(value = "sort") final String sort,
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize) {
		System.out.println("enterprisesetProjectOverview");
		HttpSession session = request.getSession();
		ArrayList<EnterpriseProject> enterpriseProjects = enterpriseProjectService
				.getSetEnterpriseProjectsByID(Integer.parseInt(session.getAttribute("companyCode").toString()));
		int start = 0;
		int end = 0;
		if (enterpriseProjects.size() != 0) {
			start = (pageId - 1) * pageSize;
			end = Math.min(enterpriseProjects.size(), start + pageSize);
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", enterpriseProjects.size());
		hashMap.put("rows", enterpriseProjects.subList(start, end));
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		return result;
	}
	@RequestMapping("enterpriseProjectDetail")
	public String getEnterpriseProjectInfo(
			@RequestParam(value = "id") final int id,
			 ModelMap model)
			throws UnsupportedEncodingException {
		String state="项目立项评审";
		state = new String(state.getBytes("iso-8859-1"), "utf-8");
		EnterpriseProject enterpriseProject = enterpriseProjectService
				.getEnterpriseProjectDetail(id);
		int enterpriseId = enterpriseProject.getEnterpriseId();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String applyDate = sdf.format(enterpriseProject.getApplyTime()*1000);
		model.put("applyDate", applyDate);
		Date date = new Date();
		int year=date.getYear()+1900;		
		Enterprise enterprise = enterpriseInfoService.getEnterpriseInfoById(enterpriseId);
		EnterpriseFinance lastYear = enterpriseInfoService.getEnterpriseFinanceByIdAndYear(enterpriseId, year-1);
		EnterpriseFinance yearBeforeLastYear = enterpriseInfoService.getEnterpriseFinanceByIdAndYear(enterpriseId, year-2);		
		EnterpriseProInvestmentBudget fromGov = enterpriseInfoService.getEnterpriseProInvestmentBudgetByProIdAndType(id, 0);
		EnterpriseProInvestmentBudget fromSelf = enterpriseInfoService.getEnterpriseProInvestmentBudgetByProIdAndType(id, 1);
		EnterpriseExcuPerson leader = enterpriseInfoService.getProjectLeader(id);
		ArrayList<EnterpriseExcuPerson> members = enterpriseInfoService.getProjectMembers(id);
		if(members.size()<5){
			for(int i=members.size();i<5;i++)
				members.add(new EnterpriseExcuPerson());
		}
		ArrayList<EnterpriseCorporator> corporators = enterpriseInfoService.getEnterpriseCorporators(id);
		if(corporators.size()<2){
			for(int i=corporators.size();i<2;i++)
				corporators.add(new EnterpriseCorporator());
		}
		ArrayList<EnterpriseProjectEquipment> equipments = enterpriseInfoService.getProjectEquipments(id);
		ArrayList<EnterpriseShareholder> shareholders = enterpriseInfoService.getShareholders(enterpriseId);
		EnterprisePeopleInCharge peopleInCharge = enterpriseInfoService.getEnterprisePeopleInCharge(enterpriseId);
		
		model.put("peopleInCharge", peopleInCharge);
		model.put("shareHolers", shareholders);
		model.put("equipments", equipments);
		model.put("corporators", corporators);
		model.put("members", members);
		model.put("leader", leader);
		model.put("detail", enterpriseProject);
		model.put("enterpriseInfo", enterprise);		
		model.put("fromGov", fromGov);
		model.put("fromSelf", fromSelf);
		if(yearBeforeLastYear==null){
			yearBeforeLastYear=EnterpriseFinance.fillEmptyObject(id, enterpriseId, year-2);
		}
		if(lastYear==null){
			lastYear = EnterpriseFinance.fillEmptyObject(id, enterpriseId, year-1);
		}
		model.put("lastyear", lastYear);
		model.put("yearBeforeLastYear", yearBeforeLastYear);


		return "enterprise/setprojectview";
	}
	
	@RequestMapping("questionoverview")
	@ResponseBody
	public String questionoverview(
			@RequestParam(value = "order") final String order,
			@RequestParam(value = "sort") final String sort,
			@RequestParam(value = "pageNum") final int pageId,
			@RequestParam(value = "pageSize") final int pageSize) {
		System.out.println("questionoverview");
		HttpSession session = request.getSession();
		int enterpriseid=Integer.parseInt(session.getAttribute("companyCode").toString());
		ArrayList<QuestionEnterprise> questions = questionenterpriseService
				.getQuestionByEnterpriseID(enterpriseid);
		int start = (pageId - 1) * pageSize;
		int end = Math.min(questions.size(), start + pageSize);
		ArrayList<QuestionEnterpriseVo> questionVos = new ArrayList<QuestionEnterpriseVo>();
		for (int i = start; i < end; i++) {
			QuestionEnterprise question = questions.get(i);
			QuestionEnterpriseVo questionVo = new QuestionEnterpriseVo();
			questionVo.transfer(question);
			questionVos.add(questionVo);
		}
		HashMap hashMap = new HashMap();
		hashMap.put("total", questionVos.size());
		hashMap.put("rows", questionVos);
		String result1 = JSONArray.fromObject(hashMap).toString();
		String result = result1.substring(1, result1.length() - 1);
		return result;
	}
	
	@RequestMapping("answerView")
	public String answerView(
			@RequestParam(value = "id") final int id,
			 ModelMap model){
		
		System.out.println("answerview");
		QuestionEnterprise answer=questionenterpriseService.getAnswerbyID(id);
		QuestionEnterpriseVo questionVo = new QuestionEnterpriseVo();
		questionVo.transfer(answer);
		model.put("answer", questionVo);
		return "enterprise/consultview";
	}
	
	@RequestMapping("setconsult")
	public String setconsult(@RequestParam(value = "title") final String title,
			@RequestParam(value = "field") final String field,
			@RequestParam(value = "qDescription") final String qDescription
			) throws UnsupportedEncodingException{
		System.out.println("setconsult");

		HttpSession session = request.getSession();
		int enterpriseid=Integer.parseInt(session.getAttribute("companyCode").toString());
		
		QuestionEnterprise qe=new QuestionEnterprise();
		qe.setEnterpriseId(enterpriseid);
		qe.setArea(new String(field.getBytes("iso-8859-1"), "utf-8"));
		qe.setTitle(new String(title.getBytes("iso-8859-1"), "utf-8"));
		qe.setDetail(new String(qDescription.getBytes("iso-8859-1"), "utf-8"));
		qe.setAnswered(false);
		Date now=new Date();
		qe.setAskTime(now.getTime()/1000);
		qe.setState("未回答");
		qe.setAnswerTime((long) 0);
		questionenterpriseService.savenewQuestion(qe);
		
		return "enterprise/consultoverview";	
	}
}
