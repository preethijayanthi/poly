package com.shop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.model.dao.AddressDao;
import com.shop.model.dao.RegisterDao;
import com.shop.model.entity.BillingAddress;
import com.shop.model.entity.Cart;
import com.shop.model.entity.Cartitems;
import com.shop.model.entity.Orders;
import com.shop.model.entity.Register;
import com.shop.model.service.CartService;
import com.shop.model.service.MailService;
import com.shop.model.service.PaymentService;
@Controller
public class PaymentController {
	@Autowired
	private  PaymentService ps;
	@Autowired
	private CartService cs;
	@Autowired
	private RegisterDao ud;
	@Autowired
	private AddressDao bad;
	@Autowired
	MailService mailtouser;
	
		@RequestMapping("/finish")
		public String pay(HttpServletRequest req,Register register)
		{    //BY USENAME WE ARE CALLING THE USERID
			
			 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	 		String username = auth.getName();  
		 		 
			   List<Register> userDetail = ud.getUserByName(username);//user details are stored in userDetail object
		 
		    System.out.println(userDetail.get(0).getUserid()); //using the userDetail object,we are calling the userid by getUserid()
		
		    Cart carts=new Cart();
		    
		//to store the userid in cart in cart table		
		   carts.setId_fk(userDetail.get(0));//setId_fk is the foreign key of userid
//................................................................................................................................................................				
		    
		 //to store the quantity,productid,grandtotal in Cart table
		   
		   /*List<Cartitems> crt=cs.getAllCartitems();*/
		   List<Cartitems> crt=cs.getbyuserid(userDetail.get(0).getUserid());
                   int tot=0;
	        	 
    				for(int i=0;i<crt.size();i++)
    					{ 									
    					carts.setProduct(crt.get(i).getProduct());
    					carts.setQuantity(crt.get(i).getQuantity());
			     		tot=(int) (tot+(crt.get(i).getTotal()));
    					}


    				carts.setGrandTotal(tot);     
		            ps.add(carts);
		            
//.....................................................................................................        
		            
		           //to store cartid in User table
		            userDetail.get(0).setUserid(userDetail.get(0).getUserid());
		            
		            userDetail.get(0).setCart(carts);//setCart is the foreign key setter method
		            
		            ud.edit(userDetail.get(0)); 
  //...........................................................................................................
		            
		            //delete caritem table, after add to the Cart  table
		    		for(int i=0;crt.size()>i;i++){
		    			cs.delete(crt.get(i).getCartitemid());}

//...................................................................................................	
		    		String toAddr = register.getEmail();
		    		String fromAddr = "preethi8895@gmail.com";
		     
		    		// email subject
		    		String subject = "Thanks for buying  ";
		     
		    		// email body
		    		String body = " Thanks for buying product with us .  "+register.getUsername()+"."+System.getProperty("line.separator")
		    				+System.getProperty("line.separator")
		    				+System.getProperty("line.separator")
		    				+System.getProperty("line.separator")
		    				+System.getProperty("line.separator")
		    				+ "------------"+System.getProperty("line.separator")
		    				+ "-MobileWorld";
		    		/*String body="thanks";*/
		    		mailtouser.mailmethod(toAddr, fromAddr, subject, body);
		  //to store the cartid,shipid,userid in Orders table  			
		    		
		    	/*List<BillingAddress> bd=bad.getbyid(userDetail.get(0).getUserid());//by using userid(billingaddress) 
		    		                                                                //we are storing the shipid in order table
		        
		    		Orders orders = new Orders();
		    		orders.setCart(carts);
		    		orders.setShipment(bd.get(0));
		    		orders.setRegdet(userDetail.get(0));
		    	    ps.orderadd(orders);*/
 	 		  		return "welcome";
}
}
