package com.niit.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.Product;

@Controller
public class HomeController {
	@Autowired                      
	private CategoryDAO categoryDAO;
	
	
	@Autowired                      
	private ProductDAO productDAO;
	@Autowired                      
	private Category category;
	
	@RequestMapping("/Cthanks")
	public String loadLoginPage3() {
		return "Cthanks";
	}
	@RequestMapping("/Logout")
	public String loadLoginPage6() {
		return "Logout";
	}
	
	@RequestMapping("/Shipping")
	public String loadLoginPage7() {
		return "Shipping";
	}
	@RequestMapping("/Sthanks")
	public String loadLoginPage8() {
		return "Sthanks";
	}
	
	@RequestMapping("/")
	public String homepage(HttpSession session ,Model model,@ModelAttribute("selectedProduct")Product selectedProduct)
	{
		//model.addAttribute("category", category);
		
		session.setAttribute("categoryList", categoryDAO.list());///till here
		session.setAttribute("productList", this.productDAO.list());
		
		model.addAttribute("categoryList", this.categoryDAO.list());///till here

		//ModelAndView model=new ModelAndView("/INDEX");
		if(selectedProduct!=null)
			model.addAttribute("selectedProduct", selectedProduct);
		else
		System.out.println("The object is null");
	
		
		
		return "INDEX";
	}
	
	@RequestMapping("/contact")
	public String loadContactPage() {
		return "Contact";
	}
	
	
}
	
	
	
	