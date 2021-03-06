package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.model.Supplier;
import com.niit.shoppingcart.Util.Util;




@Controller
public class SupplierController {
	
	private SupplierDAO supplierDAO;
	
	@Autowired(required=true)
	@Qualifier(value="supplierDAO")
	public void setSupplierDAO(SupplierDAO ps){
		this.supplierDAO = ps;
	}
	
	@RequestMapping(value = "/manageSupplier", method = RequestMethod.GET)
	public String listSuppliers(Model model) {
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierList", this.supplierDAO.list());
		return "SupplierPage";
	}
	
	//For add and update supplier both
	@RequestMapping(value= "/manageSupplier/add", method = RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier){
		
		String newID=Util.removeComma(supplier.getId());
		supplier.setId(newID);
			supplierDAO.saveOrUpdate(supplier);
		
		return "redirect:/manageSupplier";
		
	}
	
	@RequestMapping("manageSupplier/remove/{id}")
    public String removeSupplier(@PathVariable("id") String id,ModelMap model) throws Exception{
		
       try {
    	   
    	   
		supplierDAO.delete(id);
		model.addAttribute("message","Successfully Added");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/manageSupplier";
    }
 
    @RequestMapping("manageSupplier/edit/{id}")
    public String editSupplier(@PathVariable("id") String id, Model model){
    	System.out.println("editSupplier");
        model.addAttribute("supplier", this.supplierDAO.get(id));
        model.addAttribute("listSuppliers", this.supplierDAO.list());
        return "SupplierPage";
    }
	}

