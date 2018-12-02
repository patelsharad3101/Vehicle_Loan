package com.vehicle.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import com.vehicle.dao.IIdentityDetailDao;
public class IdentityDetailDaoImpl implements IIdentityDetailDao {
	
	private JdbcTemplate jdbcTemplate;  
	  
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	
	public String getDocName(int index) {
		String name;
		switch(index){
		   case 1: name="Photo";
		            break;
		   case 2: name="Aadhar_Card";
		            break;  			
		   case 3: name="Pan_Card";
		            break;          
		   case 4: name="Payslip";
		            break;		       
		   default : return "Apply for necessary document";
		           
		}
		return name;
	}
	
}
