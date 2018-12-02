package com.vehicle.dao;

import org.springframework.jdbc.core.JdbcTemplate;


import com.vehicle.model.*;

public class VehicleDetailDaoImpl implements IVehicleDetailDao {

	private JdbcTemplate jdbcTemplate;  
	  
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	
	public void saveVehicle(VehicleDetails u) {
		
		String getVehicleId="select GR4_VEHICLE_DETAILS_SEQ.nextval from dual";
		int vehicleId=getVehicleSeq(getVehicleId);
		System.out.println(vehicleId);
		String query="select max(gud_id) from gr4_user_details";
		int uid=jdbcTemplate.queryForObject(query, Integer.class);
			
		String sql="insert into gr4_vehicle_details values("+vehicleId+","+uid+",'"+u.getCarMake()+"','"+u.getCarModel()+"','"+u.getExShowroomPrice()+"')";
		jdbcTemplate.update(sql);
	}
	private int getVehicleSeq(String query) {
		int res=jdbcTemplate.queryForObject(query, int.class);
		return res;
		
	}

}
