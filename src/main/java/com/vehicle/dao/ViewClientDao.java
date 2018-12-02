package com.vehicle.dao;

import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.util.List;  
import org.springframework.jdbc.core.BeanPropertyRowMapper;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;  
import com.vehicle.model.*;
import com.vehicle.controller.*;

  
public class ViewClientDao {  
JdbcTemplate template;  
  
public void setTemplate(JdbcTemplate template) {  
    this.template = template;  
}  

public List<LoanOffer> getClients(){  
    return template.query("select * from  GR4_Loan_Details",new RowMapper<LoanOffer>(){  
        public LoanOffer mapRow(ResultSet rs, int row) throws SQLException {  
            LoanOffer lo=new LoanOffer();  
          lo.setLoanId(rs.getInt(1));
          lo.setUserId(rs.getInt(2));
          lo.setLoanAmount(rs.getLong(3));
          lo.setTenure(rs.getInt(4));
          lo.setInterestRate(rs.getInt(5));
          lo.setStatus(rs.getString(6));
            return lo;  
        }  
    });  
}  
}  