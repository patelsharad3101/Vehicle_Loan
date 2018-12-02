package com.vehicle.controller;

import java.util.ArrayList;  
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.ModelAttribute;  
import org.springframework.web.bind.annotation.PathVariable;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;  
import org.springframework.web.servlet.ModelAndView;  
import com.vehicle.model.*;
import com.vehicle.dao.*;
@Controller  
public class AdminClientController {  
    @Autowired  
    LoanOfferDaoImpl ldao;//will inject dao from xml file  
      
    /*It displays a form to input data, here "command" is a reserved request attribute 
     *which is used to display object data into form 
     */  
    
    /* It provides list of employees in model object */  
    @RequestMapping("/viewclient")  
    public ModelAndView viewemp(){  
        List<LoanOffer> list=ldao.getClients();  
        return new ModelAndView("ViewClients","list",list);  
    }  
    
 
    @RequestMapping(value="/editclient/{userId}")  
    public ModelAndView edit(@PathVariable int userId){  
        
		List<CompleteRegistration> cr =ldao.displayUserRecord(userId);  
		ModelAndView model=new ModelAndView();
	    model.addObject("list", cr);
	    System.out.println(cr);
	    model.setViewName("ClientDetails");
		return model;		
    }  
/*    @RequestMapping(value="/approveApplication/{userId}")  
    public ModelAndView approve(@PathVariable int userId, @ModelAttribute LoanOffer lo){  
        
		ldao.approve(userId);  
		ModelAndView model=new ModelAndView();
	    model.setViewName("ViewDetails");
		return model;		
    }  */
  
}  