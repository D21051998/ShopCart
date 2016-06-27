package com.niit.frontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.dao.UserDAO;
import com.niit.backend.model.UserDetails;



@Controller
public class UserController {

   @Autowired
	UserDAO userDAO;
    
    @RequestMapping("/isValidUser")
	public ModelAndView isValidUser(@RequestParam(value = "ID") String id,
			@RequestParam(value = "password") String password) {
		System.out.println("in controller");

		String message;
		ModelAndView mv ;
		if (userDAO.isValidUser(id, password,true)) 
		{
			message = "Valid credentials";
			 mv = new ModelAndView("adminHome");
		} else {
			message = "Invalid credentials";
			 mv = new ModelAndView("login");
		}

		mv.addObject("message", message);
		mv.addObject("name", id);
		return mv;
	}
	
	
	@RequestMapping("/register")
	public ModelAndView registerUser(@ModelAttribute UserDetails userDetails) {
		userDAO.saveOrUpdate(userDetails);
	  return new ModelAndView("/adminHome");
	 }


}
