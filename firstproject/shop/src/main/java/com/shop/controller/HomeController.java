package com.shop.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

/*import javax.validation.Valid;

import org.apache.commons.logging.LogFactory;*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
/*import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;*/
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shop.model.dao.RegisterDao;
import com.shop.model.entity.Cartitems;
import com.shop.model.entity.Product;
import com.shop.model.entity.Register;
import com.shop.model.service.CartService;
/*import com.shop.model.service.CartService;*/
/*import com.shop.model.entity.Category;
import com.shop.model.entity.Product;*/
import com.shop.model.service.CategoryService;
import com.shop.model.service.ProductService;
import com.shop.model.service.RegisterService;

@Controller
public class HomeController {
	/*public static final Logger log= Logger.getLogger(HomeController.class);*/
	@Autowired
	CategoryService categoryService;
	@Autowired
	CartService cs;
	@Autowired
	RegisterDao registerDao;
	@Autowired
	ProductService productService;
	/*@Autowired(required=true)
	Product product;*/
	@Autowired
	RegisterService registerService;
	/*@Autowired(required=true)
	CartService cartService;*/
	@RequestMapping(value={"/","index"} )
	public String showMessage(Map<String, Object> map,HttpSession session)
			 {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName();  	 		 
		 List<Register> userDetail = registerDao.getUserByName(username);//user details are stored in userDetail object		
	
		map.put("categoryList", categoryService.getAllCategory());
		map.put("registerList", registerService.getAllRegister());
		/*List<Cartitems> crt=cs.getbyuserid(userDetail.get(0).getUserid());
		session.setAttribute("cartlength", cs.cartLength(userDetail.get(0).getUserid()));*/
		return "index";
	}
	/*RequestMapping(value="/logout", method = RequestMethod.GET)
	 public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		 System.out.println("in login logout method");
		 
		 
	     Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	     if (auth != null){    
	         new SecurityContextLogoutHandler().logout(request, response, auth);
	     }
	     return "redirect: index?logout";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
	 }	*/
	/*

*/
	/*@RequestMapping("/success")
	public String p()
	{
		return "success";
	}*/
	
	@RequestMapping(value="/productpage")
	public String s(/*@PathVariable("id") String id*/Map<String, Object> map,@RequestParam("pdt") String id)
			 {
		
		System.out.println(id);
		map.put("productList", productService.getAllProductfromcategory(id));
		return "productpage";
	}
	@RequestMapping(value="/pdt")
	public String st(Map<String, Object> map)
			 {
		
		
		map.put("productList", productService.getAllProduct());
		return "productpage";
	}
	@RequestMapping("/samsung")
	public String ska()
			 {
		
		
		return "samsung";
		
	}
	@RequestMapping( value ="/motorola")
	public String getMyModal()
	{
	  //Do something here and return modal

	  return "motorola";
	}
	/*@RequestMapping("admin/samsung")
	public String sal()
			 {
		
		
		return "sony";
	}*/
	@RequestMapping("/sony")
	public @ResponseBody List<Product> prod()
	{
		return productService.getAllProduct();
	}
	@RequestMapping("/viewall")
	public String view()
	{
		return "viewall";
	}
	@RequestMapping("/payment")
	public String getpayment()
	{
		return "payment";
	}
	@RequestMapping(value="/productdetails")
	public String si(Map<String, Object> map,@RequestParam("dt") int id,@ModelAttribute Product product)
			 {
		product=productService.getProduct(id);
		map.put("product", product);
		System.out.println(id);
		map.put("pree", productService.getProduct(id));
		return "Productdetails";
	}
	
	/*@RequestMapping("/productdetails")
	public String alls()
	{
		return "Productdetails";
	}*/
	@RequestMapping("user/samsung")
	public String sa()
			 {
		
		
		return "samsung";
	}
	@RequestMapping("/blink")
	public String blink()
			 {
		return "blink";
	}
	@RequestMapping("/lenova")
	public String sam()
			 {
		return "lenova";
	}
	@RequestMapping(value={"/login"}/*, method=RequestMethod.POST*/)
	public ModelAndView getLoginForm(
			@RequestParam(required = false) String authfailed, String logout,
			String denied,Map<String, Object> map) {
		String message = "";
		if (authfailed != null) {
			message = "Invalid username of password, try again !";
		} /*else if (logout != null) {
			message = "Invalid username of password, try again !";
			return new ModelAndView("index");*/
		 else if (denied != null) {
			message = "Access denied for this user !";
		}
		map.put("categoryList", categoryService.getAllCategory());
		return new ModelAndView("login", "message", message);
	}
	

	 
	
}