package com.atul.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController 
{
   //@RequestMapping(value="/")
	//public String index()
	//{
	//	return "page";
	//}
   
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
   @RequestMapping(value= "/gallery")
   public ModelAndView gallery()
   {
	 ModelAndView mv=new ModelAndView("page");
	 mv.addObject("title","Gallery");
	 mv.addObject("userClickGallery",true);
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
   @RequestMapping(value= "/service")
   public ModelAndView service()
   {
	 ModelAndView mv=new ModelAndView("page");
	 mv.addObject("title","Service");
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


}
