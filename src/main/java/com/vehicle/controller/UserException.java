package com.vehicle.controller;
	import java.io.IOException;
	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.ExceptionHandler;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
	import org.springframework.web.servlet.ModelAndView;

	import com.vehicle.model.GenericException;


	@Controller
	public class UserException {
		@RequestMapping(value = "/{type:.+}", method = RequestMethod.GET)
		public ModelAndView getPages(@PathVariable("type") String type)
			throws Exception {

		  if ("error".equals(type)) {
			// go handleCustomException
			throw new GenericException("E888", "This is custom message");
		  } else if ("io-error".equals(type)) {
			// go handleAllException
			throw new IOException();
		  } else {
			return new ModelAndView("ErrorPage").addObject("msg", type);
		  }

		}

		@ExceptionHandler(GenericException.class)
		public ModelAndView handleCustomException(GenericException ex) {

			ModelAndView model = new ModelAndView("error/generic_error");
			model.addObject("errCode", ex.getErrCode());
			model.addObject("errMsg", ex.getErrMsg());

			return model;

		}

		@ExceptionHandler(Exception.class)
		public ModelAndView handleAllException(Exception ex) {

			ModelAndView model = new ModelAndView("error/generic_error");
			model.addObject("errMsg", "this is Exception.class");

			return model;

		}

	}




		