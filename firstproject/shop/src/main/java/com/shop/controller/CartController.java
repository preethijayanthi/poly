package com.shop.controller;



import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.model.dao.RegisterDao;
import com.shop.model.entity.Cartitems;
import com.shop.model.entity.Product;
import com.shop.model.entity.Register;
import com.shop.model.service.CartService;
import com.shop.model.service.ProductService;

@Controller
public class CartController {

	@Autowired
	private CartService cs;
	@Autowired
	private ProductService productService;
	@Autowired
	private RegisterDao registerDao;
	
	
	
	@RequestMapping("/cart1")
	public String displaycart(Map<String,Object>map,HttpSession session)
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName();  	 		 
		 List<Register> userDetail = registerDao.getUserByName(username);//user details are stored in userDetail object		
	
		 List<Cartitems> crt=cs.getbyuserid(userDetail.get(0).getUserid());
		 map.put("cartList", crt);
		 session.setAttribute("cartlength", cs.cartLength(userDetail.get(0).getUserid()));
	     return "cart";
	}
	@RequestMapping("/remove")
	public String displaycart(@RequestParam("del") int id,Map<String,Object>map,HttpSession session )
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName();  	 		 
		 List<Register> userDetail = registerDao.getUserByName(username);//user details are stored in userDetail object		
	
		cs.delete(id);
		List<Cartitems> crt=cs.getbyuserid(userDetail.get(0).getUserid());
		session.setAttribute("cartlength", cs.cartLength(userDetail.get(0).getUserid()));
		map.put("cartList",crt);
		return "cart";
	}
	
	@RequestMapping("/cart")
	public String getcart(@RequestParam("value")int id,Map<String,Object> map,HttpSession session )
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName();  	 		 
		 List<Register> userDetail = registerDao.getUserByName(username);//user details are stored in userDetail object	
		 
		Cartitems cart=new Cartitems();
		Product pr=productService.getProduct(id);//
		
		List<Cartitems> crt=cs.getbyuserid(userDetail.get(0).getUserid());
		//for searching the table whether the product is new or exist
		for(int i=0;i<crt.size();i++)
		{	
			//get product id from the cartitem table
			int tempid=crt.get(i).getProduct().getId();
			//for update the existing product
			if(tempid==id)
			{	
				int quantity=crt.get(i).getQuantity()+1;
				crt.get(i).setQuantity(quantity);
				int price=pr.getProductprice()*quantity;
				crt.get(i).setTotal(price);
				cs.update(crt.get(i));
				map.put("cartList", crt);
				return "cart";
				/*return "redirect:/desc/"+id ;*/
			}
		}
		
		
		cart.setQuantity(1);//setter method of quantity in cartitems table
		cart.setTotal(pr.getProductprice());
		cart.setId_fk(userDetail.get(0));
		cart.setProduct(pr);//foreign key of Productid

	
		cs.add(cart);//add the quantity,total,productid in cartitems table using the cart object
		List<Cartitems> crts=cs.getbyuserid(userDetail.get(0).getUserid());
		map.put("cartList",crts); //after giving addtocart,retrieving the list of items in cart
		session.setAttribute("cartlength",cs.cartLength(userDetail.get(0).getUserid()));
	return "cart";
	}
	


}

