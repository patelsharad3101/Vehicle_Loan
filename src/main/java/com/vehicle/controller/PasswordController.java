package com.vehicle.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.vehicle.model.*;
import com.vehicle.dao.*;

@Controller
public class PasswordController {
	   @Autowired 
	   ForgotPasswordDao fpdao;
	   
	   @RequestMapping("/forgetpassword")  
	    public ModelAndView forgetpassword( @ModelAttribute UserDetails ul){  
	        List<UserDetails> list=fpdao.getSecurity(ul);  
	        System.out.println("inside forg password");
	        System.out.println(list.get(0).getEmail()+"\t"+list.get(0).getQue());
	        return new ModelAndView("ForgetPasswordSecurity","list",list);  
	    } 
	   @RequestMapping("/checksecurityanswer")
		public ModelAndView login(ModelAndView model, @ModelAttribute UserDetails ud, HttpServletRequest request) {
	       HttpSession session = request.getSession();
	       session.setAttribute("email", ud.getEmail());
		   System.out.println("inside security");
			if (fpdao.validateAnswer(ud)) {
				model.addObject("user",ud);
				model.setViewName("ForgotChangePassword");
			} else {
				model.setViewName("UserLogin");
			}
			return model;
		}	
	   @RequestMapping("/forgetchangepassword")  
	    public ModelAndView forgetchangepassword( @ModelAttribute UserDetails ul){  
	        fpdao.forgetchangepassowrd(ul); 
	        return new ModelAndView("UserLogin");  
	    } 
}
