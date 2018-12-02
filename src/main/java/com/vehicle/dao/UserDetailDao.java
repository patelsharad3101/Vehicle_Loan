package com.vehicle.dao;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.multipart.MultipartFile;

import com.vehicle.model.UserDetails;

public class UserDetailDao implements IUserDetailDao {


	private JdbcTemplate jdbcTemplate;  
	  
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}
	
	public void saveData(UserDetails u) {
		System.out.println("inside dao save data");
		String getUserId="select GR4_USER_DETAILS_SEQ.nextval from dual";
		int userId=getUserSeq(getUserId);
	/*	u.setUserId(userId);
		u.setFilePath(saveFiles(u, files));*/

		String sql= "insert into gr4_user_details values("+userId+",'"+u.getName()+"','"+u.getGender()+"','"+u.getAge()+"','"+u.getMobile()+"','"+u.getEmail()+"','"+u.getPassword()+"','"+u.getAddress()+"','"+u.getState()+"','"+u.getCity()+"','"+u.getPincode()+"','"+u.getQue()+"','"+u.getAns()+"')";
		 jdbcTemplate.update(sql); 
	}
	private int getUserSeq(String query) {
		int res=jdbcTemplate.queryForObject(query, int.class);
		return res;
		
	}
	
	/*public String[] saveFiles(UserDetails u, MultipartFile[] files) {
		int i = 0;
		String[] paths = new String[3];
		for (MultipartFile file : files) {
			

			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "Docs" + File.separator + u.getUserId());
				
			
				if (!dir.exists())
				{
					dir.mkdirs();
				}
				if (!dir.exists())
					{
					System.out.println("does not exists");
					}

				// Create the file on server

				File serverFile = null;
				switch (i) {
				case 0:
					serverFile = new File(dir.getAbsolutePath() + File.separator + "Photo.jpg");
					break;
				case 1:
					serverFile = new File(dir.getAbsolutePath() + File.separator +  "Aadhar.pdf");
					break;
				case 2:
					serverFile = new File(dir.getAbsolutePath() + File.separator + "Pan.pdf");
					break;
				}
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				System.out.println("Server File Location=" + serverFile.getAbsolutePath());

				paths[i] =serverFile.getAbsolutePath();

			} catch (Exception e) {
				System.out.println("You failed to upload  => " + e.getMessage());
				return null;
			}
			finally {
					++i;
			}

		}
		return paths; // TODO return paths
	}
	*/
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
