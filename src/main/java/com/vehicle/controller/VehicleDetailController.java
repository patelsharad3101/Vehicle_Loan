package com.vehicle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.vehicle.dao.VehicleDetailDaoImpl;
import com.vehicle.model.VehicleDetails;

@Controller
public class VehicleDetailController {

	
	@Autowired
	VehicleDetailDaoImpl vdao;
	
	@RequestMapping(value = "/saveVehicle", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute VehicleDetails v) {
		
		System.out.println("INSIDE SAVE 2");
		vdao.saveVehicle(v);
		return new ModelAndView("IncomeDetails");
		
	}
	
	
	
}
