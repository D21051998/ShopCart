package com.niit.shopcart.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopcart.dao.*;
import com.niit.shopcart.model.*;
import com.niit.shopcart.util.Util;

@Controller
public class ProductController {
	
	@Autowired
	private ProductImpl productImpl;
	
	@Autowired 
	private CategoryImpl categoryImpl;
	
	@Autowired
	private SupplierImpl supplierImpl;
	
	@Autowired
	private UserImpl userImpl;
	
	
	@RequestMapping(value="/product", method=RequestMethod.GET)
	public String listProducts(Model model){
		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productImpl.list());
		model.addAttribute("categoryList", this.categoryImpl.list());
		model.addAttribute("supplierList", this.supplierImpl.list());
		return "product";
	}
	
	@RequestMapping(value="showproduct/view/all")
	public String showProducts(Principal px,Model model){
		
		try {
			model.addAttribute("product", new Product());
			model.addAttribute("category", new Category());
			model.addAttribute("productList", this.productImpl.list());
			model.addAttribute("categoryList", this.categoryImpl.list());
			model.addAttribute("user", new User());
			System.out.println("Principal Name:"+px.getName()+"\n");
			model.addAttribute("userDetail", this.userImpl.getByName(px.getName()));
			return "viewProducts";
		} catch (NullPointerException e) {
			
			model.addAttribute("product", new Product());
			model.addAttribute("category", new Category());
			model.addAttribute("productList", this.productImpl.list());
			model.addAttribute("categoryList", this.categoryImpl.list());
			
			return "viewProducts";
		}
	}
	
	
	@RequestMapping(value="/product/add", method=RequestMethod.POST)
    public String addProduct(@ModelAttribute("product") Product product){
		Util u = new Util();
		product.setId(u.replaceComma(product.getId(), ",", ""));
		
		Category category = categoryImpl.getByName(product.getCategory().getName());
		System.out.println("\n\n\n CID:"+category.getId());
		Supplier supplier = supplierImpl.getByName(product.getSupplier().getName());
		System.out.println("\n\n\n SID:"+supplier.getId());
		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		product.setCategory(category);
		product.setSupplier(supplier);
		productImpl.saveOrUpdate(product);
		return "redirect:/product";
	}
	
	
	
	@RequestMapping(value="product/remove/{id}")
	public String removeProduct(@PathVariable("id") String id, ModelMap model) throws Exception{
		try{
			productImpl.delete(id);
			model.addAttribute("message", "Successfully Added");
		}
		catch(Exception e){
			model.addAttribute("message", e.getMessage());
		}
		return "redirect:/product";
	}
	
	@RequestMapping(value="product/edit/{id}")
	public String editProduct(@PathVariable("id") String id, Model model){
		System.out.println("edit product");
		model.addAttribute("product", this.productImpl.get(id));
		model.addAttribute("productList", this.productImpl.list());
		model.addAttribute("categoryList", this.categoryImpl.list());
		model.addAttribute("supplierList", this.supplierImpl.list());
		return "product";
	}
	
	@RequestMapping(value="showproduct/view/info/{id}")
	public String showProductInformation(@PathVariable("id") String  id, Model model){
		System.out.println("Show Product Information:"+id+"");
		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productDetail", this.productImpl.get(id));
		model.addAttribute("categoryDetail", this.categoryImpl.get(productImpl.get(id).getCategory_id()));
		return "showInfo";
	}
	
}
