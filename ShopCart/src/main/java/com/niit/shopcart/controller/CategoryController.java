package com.niit.shopcart.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.niit.shopcart.dao.CategoryImpl;
import com.niit.shopcart.model.Category;

@Controller
public class CategoryController {
	
	public List<String> listMe(){
		List<String> ls = new ArrayList<String>();
		ls.add("Deep");
		ls.add("Deepa");
		ls.add("Deepanshu");
		return ls;
	}
	
	private CategoryImpl categoryImpl;
		
	@RequestMapping(value="/category",method=RequestMethod.GET)
	public String listCategory(Model model){
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList",this.categoryImpl.list());
		return "category";
	}
}
