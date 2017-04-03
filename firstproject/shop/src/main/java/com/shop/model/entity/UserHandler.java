package com.shop.model.entity;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.shop.model.service.AddressService;




@Component
public class UserHandler {
	
	@Autowired
	private AddressService bas;

	
	
	public BillingAddress initFlow(){
		return new BillingAddress();
	}
	
	
	public String validateDetails(BillingAddress bs,MessageContext messageContext){
		String status = "success";
		
		if(bs.getStreetName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"streetName").defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		if(bs.getPlotNo().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"plotNo").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if(bs.getCity().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"city").defaultText("phone number cannot be Empty").build());
			status = "failure";
		}
		if(bs.getState().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"state").defaultText(" cannot be Empty").build());
			status = "failure";
		}
		if(bs.getCountry().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"country").defaultText(" cannot be Empty").build());
			status = "failure";
		}
		
		
		bas.add(bs);
				return status;
		
	}

	

}