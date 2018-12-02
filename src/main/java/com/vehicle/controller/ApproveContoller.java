package com.vehicle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.vehicle.model.LoanOffer;
import com.vehicle.dao.*;

@Controller
public class ApproveContoller {
	   @Autowired  
	    LoanOfferDaoImpl ldao;
	   
    @RequestMapping(value="/clientupdate/{userId}")  
    public ModelAndView approve( @ModelAttribute LoanOffer lo){  
        
		ldao.approve(lo.getUserId());  
		return new ModelAndView("redirect:../viewclient");  
    }  
}
