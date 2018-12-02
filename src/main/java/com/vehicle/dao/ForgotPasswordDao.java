package com.vehicle.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.vehicle.model.Suggestion;
import com.vehicle.model.UserDetails;
import com.vehicle.model.UserLogin;

public class ForgotPasswordDao {
	private JdbcTemplate jdbcTemplate;  
	  
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}
	
	public List<UserDetails> getSecurity(UserDetails ul){  
	    return jdbcTemplate.query("select * from gr4_user_details where GUD_EMAIL='" + ul.getEmail() +"'",new RowMapper<UserDetails>(){  
	        public UserDetails mapRow(ResultSet rs, int row) throws SQLException {  
	           UserDetails ul = new UserDetails();
	       ul.setEmail(rs.getString(6));
	       ul.setQue(rs.getString(12));
	            return ul;  
	        }  
	    });  
	}
	
	public boolean validateAnswer(UserDetails ud)
	{
		String validateAnswerQuery = "select * from gr4_user_details where GUD_EMAIL='" + ud.getEmail() + "' and GUD_ANS='" + ud.getAns() +"'";
		List<UserDetails> user = jdbcTemplate.query(validateAnswerQuery, new UserAnswerMapper());
        System.out.println(user.size());
		return user.size() > 0 ? true : false;

	}
	public int forgetchangepassowrd(UserDetails ud){    
		System.out.println(ud.getEmail()+' '+ud.getPassword());
	    String sql="update gr4_user_details set gud_password='"+ud.getPassword()+"' where GUD_EMAIL='"+ud.getEmail()+"' ";    
	    return jdbcTemplate.update(sql);    
	} 
		
}
class UserAnswerMapper implements RowMapper<UserDetails> {
	  public UserDetails mapRow(ResultSet rs, int arg1) throws SQLException {
	    UserDetails user = new UserDetails();
	    user.setEmail(rs.getString(6));
	    user.setAns(rs.getString(13));
	    return user;
	  }
	}
