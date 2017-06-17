package com.atul.FrontEnd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.atul.BackEnd.dao.CategoryDAO;
import com.atul.BackEnd.dao.ProductDAO;
import com.atul.BackEnd.dto.Category;
import com.atul.BackEnd.dto.Product;
import com.atul.FrontEnd.util.FileUploadUtility;
import com.atul.FrontEnd.validator.ProductValidator;

@Controller
@RequestMapping("/manage")
public class ManagementController {

	@Autowired
	   private CategoryDAO categoryDAO;
	   
	@Autowired
	   private ProductDAO productDAO;
	   
	@RequestMapping(value="/products",method=RequestMethod.GET)
	   public ModelAndView showManageProducts(@RequestParam(name="operation",required=false) String operation)
	   {
		 ModelAndView mv=new ModelAndView("page");
		 mv.addObject("title","Manage Products");
		 mv.addObject("userClickManageProduct",true);
		 Product nProduct =new Product();
		 //set some fields
		 nProduct.setActive(true);
		 nProduct.setSpid(1);
		 mv.addObject("product",nProduct);
			
		 if(operation!=null){
			 if(operation.equals("product")){
				 mv.addObject("message","Product Submitted sucessfully!!");
				 
			 }
			 else if(operation.equals("category")){
				 mv.addObject("message","Category Submitted sucessfully!!");
			 }
		 }
		 
		 return mv;
	   }
	//Editing single product detail
	@RequestMapping(value="/{id}/product",method=RequestMethod.GET)
	   public ModelAndView showEditProduct(@PathVariable int id)
	   {
		 ModelAndView mv=new ModelAndView("page");
		 mv.addObject("title","Manage Products");
		 mv.addObject("userClickManageProduct",true);
		 Product nProduct = productDAO.get(id);
		 mv.addObject("product",nProduct);
		 return mv;
	   }
	//Adding new product
	@RequestMapping(value="/products",method=RequestMethod.POST)
	public String handleProductSubmission(@Valid @ModelAttribute("product") Product mProduct,BindingResult results,Model model,
			HttpServletRequest request){
		//handle image validation 
		if(mProduct.getId()==0){
		new ProductValidator().validate(mProduct, results);
		}
		else{
			if(!mProduct.getFile().getOriginalFilename().equals("")){
				new ProductValidator().validate(mProduct, results);
			}
		}
		//check if any error
		if(results.hasErrors()){
			 model.addAttribute("title","Manage Products");
			 model.addAttribute("userClickManageProduct",true);
			
			return "page";	
		}
		if(mProduct.getId()==0){
			//create new product
			productDAO.add(mProduct);
		}
		else{
			//update product
			productDAO.update(mProduct);
		}
		
		
		
		if(!mProduct.getFile().getOriginalFilename().equals("")){
			FileUploadUtility.uploadFile(request,mProduct.getFile(),mProduct.getCode());
		}
		
		return"redirect:/manage/products?operation=product";
	}
	//returns category list for all request mapping
	@ModelAttribute("categories")
			public List<Category> getCategories(){
		return categoryDAO.list();
		
	}
	
	
	
	//returns Category  for request mapping
		@ModelAttribute("category")
				public Category getCategory(){
			return new Category();
			
		}
		
	//Handling product activation
	
	@RequestMapping(value="/product/{id}/activation",method=RequestMethod.POST)
	@ResponseBody
	   public String handleProductActivation(@PathVariable int id)
	   {
		Product product=productDAO.get(id);
		boolean isActive= product.isActive();
		product.setActive(!isActive);
		 productDAO.update(product);
		 
		 return (isActive)?"Successfully deactivated product"+product.getName():"Successfully activated product"+product.getName();
	   }
	
	
	//Handling category submission
	
		@RequestMapping(value="/category",method=RequestMethod.POST)
		   public String handleCategorySubmission(@ModelAttribute Category category)
		   {
			//Add new category
			categoryDAO.add(category);
			 
			 return "redirect:/manage/products?operation=category";
		   }
}
