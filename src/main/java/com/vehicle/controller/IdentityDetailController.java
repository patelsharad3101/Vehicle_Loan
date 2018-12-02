package com.vehicle.controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


	import com.vehicle.dao.IdentityDetailDaoImpl;
	import com.vehicle.model.IdentityDetails;
	@Controller
	public class IdentityDetailController {
		final Logger logger = LoggerFactory
				.getLogger(UploadController.class);

		 @Autowired
		 IdentityDetailDaoImpl iddao;
		 
		/**
		 * Upload multiple file using Spring Controller
		 */
		@RequestMapping(value = "/uploaddoc", method = RequestMethod.POST)
		public @ResponseBody
		String uploadMultipleFileHandler(@RequestParam("files") MultipartFile[] files) {

			/*if (files.length != names.length)
				return "Mandatory information missing"; */
			
			System.out.println("inside Controller");
			String message = "";
			for (int i = 0; i < files.length; i++) {
				MultipartFile file = files[i];
				//String name = names[i];
				String name = iddao.getDocName(i+1);
				System.out.println(name);
				System.out.println("Inside Upload dao");
				try {
					byte[] bytes = file.getBytes();

					// Creating the directory to store file
				 String rootpath = System.getProperty("catalina.home");
				 File dir = new File(rootpath+ File.separator +"regfiles");
				    if(!dir.exists()) {
				    	dir.mkdir();
				    }
				    
					// Create the file on server
					File serverFile = new File(dir.getAbsolutePath()
							+ File.separator + name);
					BufferedOutputStream stream = new BufferedOutputStream(
							new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();

					logger.info("Server File Location="
							+ serverFile.getAbsolutePath());

					message = message + "You have successfully uploaded file=" + name
							+ "<br />";
				} catch (Exception e) {
					return "You failed to upload " + name + " => " + e.getMessage();
				}
			}
			return message;
		}

		}
