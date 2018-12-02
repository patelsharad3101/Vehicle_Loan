package com.vehicle.controller;

import com.vehicle.model.*;
import com.vehicle.dao.*;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
	import org.springframework.web.servlet.ModelAndView;
	@Controller
	public class IncomeDetailController {
		
		@Autowired
		IncomeDetailDaoImpl idao;
		
		@RequestMapping(value = "/saveIncome", method = RequestMethod.POST)
		public ModelAndView save(@ModelAttribute IncomeDetails i) {
			
			System.out.println("INSIDE SAVE 2");
			idao.saveIncome(i);
			return new ModelAndView("LoanDetails");
			
		}

}
