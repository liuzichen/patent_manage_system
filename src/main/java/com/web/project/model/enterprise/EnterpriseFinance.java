/**
 * 
 */
package com.web.project.model.enterprise;

/**
 * @author 子晨
 * 
 */
public class EnterpriseFinance {
	
	int id;
	int enterpriseid;
	int year;
	int totalProduction;
	int totalSales;
	int profit;
	int totalTaxPayment;
	int corporateTax;
	int valueAddedTax;
	int salesTax;
	int personalIncomeTax;
	int RDexpense;
	int totalExpenditure;
	int foreignExchangeEarnings;
	int fixedAssert;
	int totalAssert;
	int totalLiabilities;
	int netAssert;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getEnterpriseid() {
		return enterpriseid;
	}

	public void setEnterpriseid(int enterpriseid) {
		this.enterpriseid = enterpriseid;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getTotalProduction() {
		return totalProduction;
	}

	public void setTotalProduction(int totalProduction) {
		this.totalProduction = totalProduction;
	}

	public int getTotalSales() {
		return totalSales;
	}

	public void setTotalSales(int totalSales) {
		this.totalSales = totalSales;
	}

	public int getProfit() {
		return profit;
	}

	public void setProfit(int profit) {
		this.profit = profit;
	}

	public int getTotalTaxPayment() {
		return totalTaxPayment;
	}

	public void setTotalTaxPayment(int totalTaxPayment) {
		this.totalTaxPayment = totalTaxPayment;
	}

	public int getCorporateTax() {
		return corporateTax;
	}

	public void setCorporateTax(int corporateTax) {
		this.corporateTax = corporateTax;
	}

	public int getValueAddedTax() {
		return valueAddedTax;
	}

	public void setValueAddedTax(int valueAddedTax) {
		this.valueAddedTax = valueAddedTax;
	}

	public int getSalesTax() {
		return salesTax;
	}

	public void setSalesTax(int salesTax) {
		this.salesTax = salesTax;
	}

	public int getPersonalIncomeTax() {
		return personalIncomeTax;
	}

	public void setPersonalIncomeTax(int personalIncomeTax) {
		this.personalIncomeTax = personalIncomeTax;
	}

	public int getRDexpense() {
		return RDexpense;
	}

	public void setRDexpense(int rDexpense) {
		RDexpense = rDexpense;
	}

	public int getTotalExpenditure() {
		return totalExpenditure;
	}

	public void setTotalExpenditure(int totalExpenditure) {
		this.totalExpenditure = totalExpenditure;
	}

	public int getForeignExchangeEarnings() {
		return foreignExchangeEarnings;
	}

	public void setForeignExchangeEarnings(int foreignExchangeEarnings) {
		this.foreignExchangeEarnings = foreignExchangeEarnings;
	}

	public int getFixedAssert() {
		return fixedAssert;
	}

	public void setFixedAssert(int fixedAssert) {
		this.fixedAssert = fixedAssert;
	}

	public int getTotalAssert() {
		return totalAssert;
	}

	public void setTotalAssert(int totalAssert) {
		this.totalAssert = totalAssert;
	}

	public int getTotalLiabilities() {
		return totalLiabilities;
	}

	public void setTotalLiabilities(int totalLiabilities) {
		this.totalLiabilities = totalLiabilities;
	}

	public int getNetAssert() {
		return netAssert;
	}

	public void setNetAssert(int netAssert) {
		this.netAssert = netAssert;
	}
	
	public static EnterpriseFinance fillEmptyObject(int id,int enterpriseId,int year) {
		EnterpriseFinance enterprise = new EnterpriseFinance();
		enterprise.setId(0);
		enterprise.setEnterpriseid(enterpriseId);
		enterprise.setYear(year);		
		enterprise.setCorporateTax(0);
		enterprise.setFixedAssert(0);
		enterprise.setForeignExchangeEarnings(0);
		enterprise.setNetAssert(0);
		enterprise.setPersonalIncomeTax(0);
		enterprise.setProfit(0);
		enterprise.setRDexpense(0);
		enterprise.setSalesTax(0);
		enterprise.setTotalExpenditure(0);
		enterprise.setTotalLiabilities(0);
		enterprise.setTotalProduction(0);
		enterprise.setTotalSales(0);
		enterprise.setTotalTaxPayment(0);
		enterprise.setValueAddedTax(0);
		return enterprise;
	}

}
