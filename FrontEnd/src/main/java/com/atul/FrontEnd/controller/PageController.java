package com.atul.FrontEnd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.atul.BackEnd.dao.CartlineDAO;
import com.atul.BackEnd.dao.CategoryDAO;
import com.atul.BackEnd.dao.ProductDAO;
import com.atul.BackEnd.dao.UserDAO;
import com.atul.BackEnd.daoimpl.CartLineDAOImpl;
import com.atul.BackEnd.dto.Cart;
import com.atul.BackEnd.dto.CartLine;
import com.atul.BackEnd.dto.Category;
import com.atul.BackEnd.dto.Product;
import com.atul.BackEnd.dto.User;
import com.atul.FrontEnd.exception.ProductNotFoundException;
import com.atul.FrontEnd.model.UserModel;

@Controller
public class PageController {
	// @RequestMapping(value="/")
	// public String index()
	// {
	// return "page";
	// }
	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private CartlineDAO cartlineDAO;

	// @Autowired
	// private GlobalController globalcontroller;
	//
	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);
		return mv;
	}

	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About Us");
		mv.addObject("userClickAbout", true);
		return mv;
	}

	@RequestMapping(value = "/show/all/products")
	public ModelAndView showAllProducts(@RequestParam(name = "operation", required = false) String operation) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Menu Items");
		// passing list of category
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("userClickAllProducts", true);
		if (operation != null) {
			if (operation.equals("cart")) {
				mv.addObject("message", "Product added to cart sucessfully!!");
			}
		}
		return mv;
	}

	@RequestMapping(value = "/show/category/{id}/products")
	public ModelAndView showCategoryProducts(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("page");
		// category DAO to fetch single category
		Category category = null;
		category = categoryDAO.get(id);
		mv.addObject("title", category.getCatname());
		// passing list of category
		mv.addObject("categories", categoryDAO.list());
		// passing single category
		mv.addObject("category", category);
		mv.addObject("userClickCategoryProducts", true);
		return mv;
	}

	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("userClickContact", true);
		return mv;
	}

	@RequestMapping(value = { "/services", "service" })
	public ModelAndView service() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Our Services");
		// passing list of category
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("userClickService", true);
		return mv;
	}

	@RequestMapping(value = "/categories")
	public ModelAndView blogs() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Categories Page");
		mv.addObject("userClickBlog", true);
		return mv;
	}

	@RequestMapping(value = "/main")
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home Page");
		mv.addObject("userClickMain", true);
		return mv;
	}

	@RequestMapping(value = "/book")
	public ModelAndView book() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Booking Page");
		mv.addObject("userClickBook", true);
		return mv;
	}

	@RequestMapping(value = "/show/{id}/product")
	public ModelAndView shoSingleProduct(@PathVariable("id") int id) throws ProductNotFoundException {
		ModelAndView mv = new ModelAndView("page");
		// product DAO to fetch single category
		Product product = null;
		product = productDAO.get(id);
		if (product == null)
			throw new ProductNotFoundException();
		// Updating views of product
		product.setViews(product.getViews() + 1);
		productDAO.update(product);
		// -------------------------
		mv.addObject("title", product.getName());
		mv.addObject("product", product);
		mv.addObject("userClickShowProduct", true);
		return mv;
	}

	@RequestMapping(value = "/login")
	public ModelAndView login(@RequestParam(name = "error", required = false) String error,
			@RequestParam(name = "logout", required = false) String logout,
			@RequestParam(name = "refresh", required = false) String refresh) {
		ModelAndView mv = new ModelAndView("login");
		if (error != null) {
			mv.addObject("message", "Invalid username and password");
		}
		if (logout != null) {
			mv.addObject("message", "User has successfully logged out!");
		}
		if (refresh != null) {
			mv.addObject("message", "Soory you need to login again!");
		}
		mv.addObject("title", "Login page");
		return mv;
	}

	@RequestMapping(value = "/access-denied")
	public ModelAndView accessDenied() {
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("title", "403 -Access Denied");
		mv.addObject("errorTitle", "Aha! Caught you");
		mv.addObject("errorDescription", "You are not authorized to view this page!");
		return mv;
	}

	@RequestMapping(value = "/perform-logout")
	public String performLogout(HttpServletRequest request, HttpServletResponse response) {
		// Fetching authentication

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (auth != null) {

			new SecurityContextLogoutHandler().logout(request, response, auth);
		}

		return "redirect:/login?logout";
	}

	@RequestMapping(value = "/perform-refresh")
	public String performRefresh(HttpServletRequest request, HttpServletResponse response) {
		// Fetching authentication

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (auth != null) {

			new SecurityContextLogoutHandler().logout(request, response, auth);
		}

		return "redirect:/login?refresh";

	}

	@RequestMapping(value = "/cart/add/{id}/product/for/{userid}")
	public String addProductToCart(@PathVariable("id") int id, @PathVariable("userid") int userid)
			throws ProductNotFoundException {

		// product DAO to fetch single category
		Product product = null;
		Cart cart = null;
		int cartId;
		product = productDAO.get(id);
		User user = userDAO.getById(userid);
		cartId = user.getCart().getId();
		if (product == null)
			throw new ProductNotFoundException();
		CartLine cartline = cartlineDAO.ifExists(cartId, product.getId());
		// If product is new to cart
		if (cartline == null) {
			CartLine ncartline = new CartLine();
			ncartline.setCartId(cartId);
			ncartline.setProdId(product.getId());
			ncartline.setBuyingPrice(product.getUnitprice());
			ncartline.setAvailable(product.isActive());
			ncartline.setQuantity(product.getQuantity());
			ncartline.setTotal(ncartline.getQuantity() * ncartline.getBuyingPrice());
			cartlineDAO.add(ncartline);
			// updating cart
			cart = user.getCart();
			cart.setGrandTotal(cart.getGrandTotal() + ncartline.getTotal());
			cart.setCartLines(cart.getCartLines() + 1);
			userDAO.updateCart(cart);
		}
		// If same product already in cart
		if (cartline != null) {

			cartline.setBuyingPrice(product.getUnitprice());
			cartline.setAvailable(product.isActive());
			cartline.setQuantity(product.getQuantity() + product.getQuantity());
			cartline.setTotal(cartline.getQuantity() * cartline.getBuyingPrice());
			cartlineDAO.update(cartline);
			// updating cart
			cart = user.getCart();
			cart.setGrandTotal(cart.getGrandTotal() + cartline.getTotal());
			cart.setCartLines(cart.getCartLines() + 1);
			userDAO.updateCart(cart);
		}

		// -------------------------
		return "redirect:/show/all/products?operation=cart";
	}

	@RequestMapping(value = "/cart/{id}/show")
	public ModelAndView showCart(@RequestParam(name = "operation", required = false) String operation,@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("page");
		User user = userDAO.getById(id);
		int cartId = user.getCart().getId();

		mv.addObject("title", "Cart Of" + user.getFirstname() + "");
		// passing list of cart items
		mv.addObject("cartitems", cartlineDAO.list(cartId));
		mv.addObject("userClickShowCart", true);
		if (operation != null) {
			if (operation.equals("remove")) {
				mv.addObject("message", "Product removed from cart!!");
			}
		}
		return mv;
	}

	@RequestMapping(value = "/cart/{id}/remove")
	public String removeCartLine(@PathVariable("id") int id) {
		CartLine cartline = cartlineDAO.getById(id);
		// Updating cart
		Cart cart = null;
		cart = userDAO.getCartById(cartline.getCartId());
		int userid = cart.getUser().getId();
		cart.setGrandTotal(cart.getGrandTotal() - cartline.getTotal());
		cart.setCartLines(cart.getCartLines() - 1);
		userDAO.updateCart(cart);

		// Deleting cart item
		cartlineDAO.delete(cartline);
		return "redirect:/cart/" + userid + "/show?operation=remove";
	}
}
