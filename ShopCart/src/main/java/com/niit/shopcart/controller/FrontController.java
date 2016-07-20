package com.niit.shopcart.controller;

import java.security.Principal;

import javax.management.AttributeValueExp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopcart.dao.*;
import com.niit.shopcart.model.*;

@Controller
public class FrontController {
	
	@Autowired
	private CategoryImpl categoryImpl;
	
	@Autowired
	private UserImpl userImpl;

	
	@RequestMapping("/")
	public ModelAndView showIndex(){
		ModelAndView mv = new ModelAndView("/index");
		mv.addObject("category", new Category());
		mv.addObject("categoryList",this.categoryImpl.list());
		return mv;
	}
	
/*	@RequestMapping("/home")
	public ModelAndView showHome(){
		ModelAndView mv = new ModelAndView("/index");
		mv.addObject("category", new Category());
		mv.addObject("categoryList",this.categoryImpl.list());
		
		return mv;
	}*/
	
	@RequestMapping("/home")
	public String showHome(Principal px, ModelMap model){
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryImpl.list());
		model.addAttribute("user", new User());
		model.addAttribute("userDetail", this.userImpl.getByName(px.getName()));
		return "index";
	}
	
	@RequestMapping("/signin")
	public ModelAndView showSignin(){
		ModelAndView mv = new ModelAndView("/signin");
		return mv;
	}
	
	
	
	
	@RequestMapping("/signup")
	public ModelAndView showSignup(){
		ModelAndView mv = new ModelAndView("/signup");
		mv.addObject("user", new User());
		mv.addObject("userDetails",this.categoryImpl.list());
		return mv;
	}
	
	
	@RequestMapping("/about")
	public ModelAndView showAbout(){
		ModelAndView mv = new ModelAndView("/about");
		return mv;
	}
	@RequestMapping("/contact")
	public ModelAndView showContact(){
		ModelAndView mv = new ModelAndView("/contact");
		return mv;
	}
	@RequestMapping("/secureLogin")
	public ModelAndView secureLogin(){
		ModelAndView mv = new ModelAndView("/secureLogin");
		return mv;
	}
	
	@RequestMapping("/loginError")
	public ModelAndView showErrorPage(){
		ModelAndView mv = new ModelAndView("/loginError");
		return mv;
	}
	
	@RequestMapping("/payment")
	public String payMe(){
		return "payment";
	}
	
	@RequestMapping(value="/user/add",method=RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute("user") User user){
		user.setEnabled(true);
		user.setRole("ROLE_USER");
		int accNumber =userImpl.list().size() + 1;
		user.setId("UA"+String.format("%03d", accNumber));
		System.out.println(user);
		userImpl.saveOrUpadate(user);
		ModelAndView mc = new ModelAndView("/signin");
		return mc;
	}
		
}
