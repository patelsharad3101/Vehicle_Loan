package com.vehicle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.vehicle.dao.UserLoginDao;
import com.vehicle.model.UserLogin;
@Controller
public class UserLoginController {
	
	@Autowired
	UserLoginDao uldao;
	
	@RequestMapping("/UserLogin")
	public ModelAndView login(ModelAndView model, @ModelAttribute UserLogin u) {

		if (uldao.validateUser(u)) {

			model.setViewName("UserDashboard");

		} else {
			model.setViewName("UserLogin");

		}

		return model;

	}


}
