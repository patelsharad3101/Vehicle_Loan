package com.vehicle.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import com.vehicle.model.Suggestion;

public class SuggetionDao {
	private JdbcTemplate jdbcTemplate;  
	  
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}
	
	public void saveData(Suggestion s) {
		System.out.println("inside dao save data");
		String getSuggetionId="select GR4_SUGGETION_SEQ.nextval from dual";
		int suggetionId=getSuggetionSeq(getSuggetionId);
		String sql= "insert into gr4_suggetion values("+suggetionId+",'"+s.getName()+"','"+s.getMobile()+"','"+s.getEmail()+"','"+s.getSuggestion()+"')";
		 jdbcTemplate.update(sql); 
	}
	private int getSuggetionSeq(String query) {
		int res=jdbcTemplate.queryForObject(query, int.class);
		return res;
		
	}
	
}
