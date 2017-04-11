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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.project.model.enterprise.Enterprise;
import com.web.project.model.enterprise.EnterpriseCorporator;
import com.web.project.model.enterprise.EnterpriseExcuPerson;
import com.web.project.model.enterprise.EnterpriseFinance;
import com.web.project.model.enterprise.EnterprisePeopleInCharge;
import com.web.project.model.enterprise.EnterpriseProInvestmentBudget;
import com.web.project.model.enterprise.EnterpriseProject;
import com.web.project.model.enterprise.EnterpriseProjectEquipment;
import com.web.project.model.enterprise.EnterpriseShareholder;
import com.web.project.service.enterprise.EnterpriseInfoService;
import com.web.project.service.enterprise.EnterpriseProjectService;

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
	HttpServletRequest request;
	
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
	public String toSetProject(@RequestParam("id")int enterpriseId,ModelMap model ){
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
}
