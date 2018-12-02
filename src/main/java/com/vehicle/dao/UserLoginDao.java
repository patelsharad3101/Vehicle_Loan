package com.vehicle.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.util.List;
import com.vehicle.model.*;

public class UserLoginDao {

	private JdbcTemplate jdbcTemplate;  
	  
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	
	public boolean validateUser(UserLogin u)
	{


		String validateUserQuery = "select * from gr4_user_details where GUD_EMAIL='" + u.getEmail() + "' and GUD_PASSWORD='" + u.getPassword() +"'";
		List<UserDetails> users = jdbcTemplate.query(validateUserQuery, new UserMapper());
		return users.size() > 0 ? true : false;

	}
}
class UserMapper implements RowMapper<UserDetails> {
	  public UserDetails mapRow(ResultSet rs, int arg1) throws SQLException {
	    UserDetails user = new UserDetails();
	    user.setEmail(rs.getString(6));
	    user.setPassword(rs.getString(7));

	    return user;
	  }
	}
