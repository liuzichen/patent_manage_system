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
	double totalProduction;
	double totalSales;
	double profit;
	double totalTaxPayment;
	double corporateTax;
	double valueAddedTax;
	double salesTax;
	double personalIncomeTax;
	double RDexpense;
	double totalExpenditure;
	double foreignExchangeEarnings;
	double fixedAssert;
	double totalAssert;
	double totalLiabilities;
	double netAssert;

	public double getId() {
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

	public double getTotalProduction() {
		return totalProduction;
	}

	public void setTotalProduction(double totalProduction) {
		this.totalProduction = totalProduction;
	}

	public double getTotalSales() {
		return totalSales;
	}

	public void setTotalSales(double totalSales) {
		this.totalSales = totalSales;
	}

	public double getProfit() {
		return profit;
	}

	public void setProfit(double profit) {
		this.profit = profit;
	}

	public double getTotalTaxPayment() {
		return totalTaxPayment;
	}

	public void setTotalTaxPayment(double totalTaxPayment) {
		this.totalTaxPayment = totalTaxPayment;
	}

	public double getCorporateTax() {
		return corporateTax;
	}

	public void setCorporateTax(double corporateTax) {
		this.corporateTax = corporateTax;
	}

	public double getValueAddedTax() {
		return valueAddedTax;
	}

	public void setValueAddedTax(double valueAddedTax) {
		this.valueAddedTax = valueAddedTax;
	}

	public double getSalesTax() {
		return salesTax;
	}

	public void setSalesTax(double salesTax) {
		this.salesTax = salesTax;
	}

	public double getPersonalIncomeTax() {
		return personalIncomeTax;
	}

	public void setPersonalIncomeTax(double personalIncomeTax) {
		this.personalIncomeTax = personalIncomeTax;
	}

	public double getRDexpense() {
		return RDexpense;
	}

	public void setRDexpense(double rDexpense) {
		RDexpense = rDexpense;
	}

	public double getTotalExpenditure() {
		return totalExpenditure;
	}

	public void setTotalExpenditure(double totalExpenditure) {
		this.totalExpenditure = totalExpenditure;
	}

	public double getForeignExchangeEarnings() {
		return foreignExchangeEarnings;
	}

	public void setForeignExchangeEarnings(double foreignExchangeEarnings) {
		this.foreignExchangeEarnings = foreignExchangeEarnings;
	}

	public double getFixedAssert() {
		return fixedAssert;
	}

	public void setFixedAssert(double fixedAssert) {
		this.fixedAssert = fixedAssert;
	}

	public double getTotalAssert() {
		return totalAssert;
	}

	public void setTotalAssert(double totalAssert) {
		this.totalAssert = totalAssert;
	}

	public double getTotalLiabilities() {
		return totalLiabilities;
	}

	public void setTotalLiabilities(double totalLiabilities) {
		this.totalLiabilities = totalLiabilities;
	}

	public double getNetAssert() {
		return netAssert;
	}

	public void setNetAssert(double netAssert) {
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
