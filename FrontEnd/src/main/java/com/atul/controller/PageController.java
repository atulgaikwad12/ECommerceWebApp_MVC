package com.atul.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.atul.BackEnd.dao.CategoryDAO;
import com.atul.BackEnd.dto.Category;

@Controller
public class PageController 
{
   //@RequestMapping(value="/")
	//public String index()
	//{
	//	return "page";
	//}
   @Autowired
   private CategoryDAO categoryDAO;
   
   @RequestMapping(value= {"/","/home","/index"})
   public ModelAndView index()
   {
	 ModelAndView mv=new ModelAndView("page");
	 mv.addObject("title","Home");
	 mv.addObject("userClickHome",true);
	 return mv;
   }
   @RequestMapping(value= "/about")
   public ModelAndView about()
   {
	 ModelAndView mv=new ModelAndView("page");
	 mv.addObject("title","About Us");
	 mv.addObject("userClickAbout",true);
	 return mv;
   }
   @RequestMapping(value= "/show/all/products")
   public ModelAndView showAllProducts()
   {
	 ModelAndView mv=new ModelAndView("page");
	 mv.addObject("title","Gallery");
	//passing list of category
     mv.addObject("categories",categoryDAO.list());
	 mv.addObject("userClickAllProducts",true);
	 return mv;
   }
   @RequestMapping(value= "/show/category/{id}/products")
   public ModelAndView showCategoryProducts(@PathVariable("id") int id)
   {
	 ModelAndView mv=new ModelAndView("page");
	 //category DAO to fetch single category
	 Category category =null;
	 category = categoryDAO.get(id);
	 mv.addObject("title",category.getCatname());
	//passing list of category
     mv.addObject("categories",categoryDAO.list());
   //passing single category
     mv.addObject("category",category);
	 mv.addObject("userClickCategoryProducts",true);
	 return mv;
   }
   @RequestMapping(value= "/contact")
   public ModelAndView contact()
   {
	 ModelAndView mv=new ModelAndView("page");
	 mv.addObject("title","Contact Us");
	 mv.addObject("userClickContact",true);
	 return mv;
   }
   @RequestMapping(value= {"/services","service"})
   public ModelAndView service()
   {
	 ModelAndView mv=new ModelAndView("page");
	 mv.addObject("title","Service");
	//passing list of category
     mv.addObject("categories",categoryDAO.list());
	 mv.addObject("userClickService",true);
	 return mv;
   }
   @RequestMapping(value= "/blogs")
   public ModelAndView blogs()
   {
	 ModelAndView mv=new ModelAndView("page");
	 mv.addObject("title","Blogs Page");
	 mv.addObject("userClickBlog",true);
	 return mv;
   }
   @RequestMapping(value= "/main")
   public ModelAndView main()
   {
	 ModelAndView mv=new ModelAndView("page");
	 mv.addObject("title","Main Page");
	 mv.addObject("userClickMain",true);
	 return mv;
   }
   @RequestMapping(value= "/book")
   public ModelAndView book()
   {
	 ModelAndView mv=new ModelAndView("page");
	 mv.addObject("title","Booking Page");
	 mv.addObject("userClickBook",true);
	 return mv;
   }
   @RequestMapping(value= "/regst")
   public ModelAndView regst()
   {
	 ModelAndView mv=new ModelAndView("page");
	 mv.addObject("title","Sign up form");
	 mv.addObject("userClickRegst",true);
	 return mv;
   }

}
