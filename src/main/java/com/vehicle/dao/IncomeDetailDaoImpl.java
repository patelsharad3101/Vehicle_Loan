package com.vehicle.dao;
 	import org.springframework.jdbc.core.JdbcTemplate;

	import com.vehicle.model.IncomeDetails;

	public class IncomeDetailDaoImpl implements IIncomeDetailDao {


		private JdbcTemplate jdbcTemplate;  
		  
		public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
		    this.jdbcTemplate = jdbcTemplate;  
		}

		public JdbcTemplate getJdbcTemplate() {
			return jdbcTemplate;
		}
		
		
		public void saveIncome(IncomeDetails i) {
			String getIncomeId="select GR4_INCOME_DETAILS_SEQ.nextval from dual";
			int incomeId=getIncomeSeq(getIncomeId);

			String query="select max(gud_id) from gr4_user_details";
			int uid=jdbcTemplate.queryForObject(query, Integer.class);
			String sql= "insert into gr4_income_details values("+incomeId+","+uid+",'"+i.getTypeOfEmployment ()+"','"+i.getAnnualIncome()+"','"+i.getExistingEmi()+"')";
			 jdbcTemplate.update(sql); 
		}
		private int getIncomeSeq(String query) {
			int res=jdbcTemplate.queryForObject(query, int.class);
			return res;
			
		}

		
	}

