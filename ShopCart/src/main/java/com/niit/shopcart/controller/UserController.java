package com.niit.shopcart.controller;


import java.security.Principal;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopcart.dao.UserDao;
import com.niit.shopcart.dao.UserImpl;
import com.niit.shopcart.model.User;



@Controller
public class UserController {
	
	@Autowired
	UserImpl userImpl;
	
	static Logger logger = Logger.getLogger(UserController.class.getName());
	
	@RequestMapping("/isValidUser")
	public String isValidUser(@RequestParam(value="id") String id, @RequestParam(value="password") String password, @RequestParam(value="isAdmin") Boolean isAdmin){
		System.out.println("User Controller");
		logger.trace("User Controller");
		System.out.println(id+" "+password+" "+isAdmin);
		if(userImpl.isValidUser(id, password, isAdmin)){
		//	ModelAndView mv = new ModelAndView("/adminPage");
			logger.debug("Quitting User: Successfull");
			return "adminPage";
		}
		else{
			//ModelAndView mv = new ModelAndView("/signin");
			logger.debug("Quitting User: Unsuccessful");
			return "signin";
		}
		
	}
	
	@RequestMapping("/adminPage")
	public String showAdmin(Principal px, ModelMap model){
		model.addAttribute("user", new User());
		System.out.println(px.getName());
		model.addAttribute("userDetail",this.userImpl.getByName(px.getName()));
		return "adminPage";
	}

	
}
