package com.vehicle.dao;

import java.util.List;

import com.vehicle.model.CompleteRegistration;
import com.vehicle.model.LoanOffer;

public interface ILoanOfferDao {

	public void saveLoanOffer(LoanOffer lo);
	/*public int updatestatus(LoanOffer lo );
	*/public List<CompleteRegistration> displayUserRecord(int userId);
	public void approve(int userId);
}
