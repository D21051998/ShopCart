package com.niit.shopcart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {
	@RequestMapping("/product")
	public ModelAndView showProduct(){
		ModelAndView mv = new ModelAndView("/product");
		return mv;
	}
}
