package com.vehicle.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.BeanPropertyRowMapper; 
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.dao.DataAccessException;



import com.vehicle.dao.*;
import com.vehicle.model.*;
import com.vehicle.controller.*;

public class LoanOfferDaoImpl implements  ILoanOfferDao{
	
	private JdbcTemplate jdbcTemplate;  
	  
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
public void saveLoanOffer(LoanOffer lo) {
		
		String getLoanId="select GR4_VEHICLE_DETAILS_SEQ.nextval from dual";
		int LoanId=getLoanSeq(getLoanId);
		System.out.println(LoanId);
		String query="select max(gud_id) from gr4_user_details";
		int uid=jdbcTemplate.queryForObject(query, Integer.class);
			
		String sql="insert into gr4_loan_details values("+LoanId+","+uid+",'"+lo.getLoanAmount()+"','"+lo.getTenure()+"','"+lo.getInterestRate()+"','"+lo.getStatus()+"')";
		jdbcTemplate.update(sql);
	}
	private int getLoanSeq(String query) {
		int res=jdbcTemplate.queryForObject(query, int.class);
		return res;
		
	}
	
	public List<LoanOffer> getClients(){  
	    return jdbcTemplate.query("select * from  GR4_Loan_Details",new RowMapper<LoanOffer>(){  
	        public LoanOffer mapRow(ResultSet rs, int row) throws SQLException {  
	            LoanOffer lo=new LoanOffer();  
	          lo.setLoanId(rs.getInt(1));
	          lo.setUserId(rs.getInt(2));
	          lo.setLoanAmount(rs.getLong(3));
	          lo.setTenure(rs.getInt(4));
	          lo.setInterestRate(rs.getFloat(5));
	          lo.setStatus(rs.getString(6));
	            return lo;  
	        }  
	    });  
	}
	public List<CompleteRegistration> displayUserRecord(int userId)
	   {
		System.out.println("Inside Display User Record");
		String query = "select u.GUD_ID, u.GUD_NAME, u.GUD_GENDER, u.GUD_AGE, u.GUD_MOBILE, u.GUD_EMAIL, u.GUD_PASSWORD, u.GUD_ADDRESS, u.GUD_STATE, u.GUD_CITY, u.GUD_PINCODE, v.GVD_BRAND,v.GVD_MODEL,v.GVD_EX_SHOWROOM_PRICE, i.GID_EMPLOYMENT_TYPE,i.GID_ANNUAL_INCOME,i.GID_EXSITING_EMI , l.GLD_ID,l.GLD_LOAN_AMT,l.GLD_TENURE,l.GLD_ROI,l.GLD_STATUS from gr4_user_details u INNER JOIN gr4_vehicle_details v ON u.gud_id = v.gvd_gud_id INNER JOIN gr4_income_details i ON u.gud_id = i.gid_gud_id INNER JOIN gr4_loan_details l ON u.gud_id = l.gld_gud_id where GUD_id =  '"+userId+"'";
			return jdbcTemplate.query(query, new RowMapper<CompleteRegistration>(){

			public CompleteRegistration mapRow(ResultSet rs, int rowNum) throws SQLException {
			   
				CompleteRegistration cr = new CompleteRegistration(); 
				cr.setUserId(rs.getInt(1));
				cr.setName(rs.getString(2));
				cr.setGender(rs.getString(3));
				cr.setAge(rs.getInt(4));
				cr.setMobile(rs.getLong(5));
				cr.setEmail(rs.getString(6));
				cr.setPassword(rs.getString(7));
				cr.setAddress(rs.getString(8));
				cr.setState(rs.getString(9));
				cr.setCity(rs.getString(10));
				cr.setPincode(rs.getInt(11));
				cr.setCarMake(rs.getString(12));
				cr.setCarModel(rs.getString(13));
				cr.setExShowroomPrice(rs.getLong(14));
				cr.setTypeOfEmployment(rs.getString(15));
				cr.setAnnualIncome(rs.getLong(16));
				cr.setExistingEmi(rs.getLong(17));
				cr.setLoanId(rs.getInt(18));
				cr.setLoanAmount(rs.getLong(19));
				cr.setTenure(rs.getInt(20));
				cr.setInterestRate(rs.getFloat(21));
				cr.setStatus(rs.getString(22));
	           System.out.println("inside dao"+cr.getEmail());
	           System.out.println("inside dao"+cr.getUserId());
	               
	           return cr;
			}	
		});
			
	   }
	public void approve(int userId ){  
		System.out.println("Inside Loan Offer Dao");
	
	    String sql="update GR4_Loan_Details set GLD_STATUS='APPROVED' where gld_gud_id="+userId+" ";  
	    System.out.println("status query  updated ");
	     jdbcTemplate.update(sql);  
	
	}
}

