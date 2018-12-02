
package com.vehicle.model;

public class IncomeDetails {

	private String typeOfEmployment;
	private Long annualIncome;
	private Long existingEmi;
	
	
	
	public IncomeDetails() {
	
	}
	public String getTypeOfEmployment() {
		return typeOfEmployment;
	}
	public void setTypeOfEmployment(String typeOfEmployment) {
		this.typeOfEmployment = typeOfEmployment;
	}
	public Long getAnnualIncome() {
		return annualIncome;
	}
	public void setAnnualIncome(Long annualIncome) {
		this.annualIncome = annualIncome;
	}
	public Long getExistingEmi() {
		return existingEmi;
	}
	public void setExistingEmi(Long existingEmi) {
		this.existingEmi = existingEmi;
	}

}
