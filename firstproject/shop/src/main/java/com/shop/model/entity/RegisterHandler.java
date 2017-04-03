package com.shop.model.entity;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.shop.model.service.MailService;
import com.shop.model.service.RegisterService;





@Component
public class RegisterHandler {
	@Autowired 
	RegisterService registerservice;
	@Autowired
	MailService mailtouser;
	
	

	
	
	public Register initFlow(){
		return new Register();
	}
	
	
	public String validateDetails(Register register2, MessageContext messageContext) {
		System.out.println("validation method");
		String status = "success";
		if (register2.getUsername().isEmpty()) {
			System.out.println("inside user validation");
			messageContext.addMessage(
					new MessageBuilder().error().source("username").defaultText("UserId cannot be Empty").build());
			status = "failure";
		}
		if (register2.getEmail().isEmpty()) {
			System.out.println("inside mail validation");
			messageContext.addMessage(
					new MessageBuilder().error().source("email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if (register2.getPhonenumber().isEmpty()) {
			System.out.println("inside phone validation");
			messageContext.addMessage(new MessageBuilder().error().source("phonenumber")
					.defaultText("Mobile Number cannot be Empty").build());
			status = "failure";
		}
		if (register2.getPassword().isEmpty()) {
			System.out.println("inside password validation");
			messageContext.addMessage(new MessageBuilder().error().source("password")
					.defaultText("Password cannot be Empty").build());
			status = "failure";
		}
		if (register2.getRepassword().isEmpty()) {
			System.out.println("inside repassword validation");
			messageContext.addMessage(new MessageBuilder().error().source("repassword")
					.defaultText("ConfirmPassword cannot be Empty").build());
			status = "failure";
		}
		if ((register2.getPassword().equals(register2.getRepassword())) == false) {

			messageContext.addMessage(
					new MessageBuilder().error().source("repassword").defaultText("Password and confrim password is not matched").build());
			status = "failure";
		}
		List<Register> userList =registerservice.getAllRegister();
		for(Register Usrlist: userList ){
			if((register2.getUsername().equals(Usrlist.getUsername()))){
				
				messageContext.addMessage(new MessageBuilder().error().source(
						"username").defaultText("Sorry UserName Already exsist").build());
				status = "failure";
			}
			
		}
		
		return status;
	}

	public String doregActions(Register register2) {

		Role rol = new Role();

		rol.setUserrole("ROLE_USER");
		rol.setId_fk(register2);

		register2.setEnable(true);
		registerservice.add(register2);
		registerservice.addrole(rol);
		
		String toAddr = register2.getEmail();
		String fromAddr = "preethi8895@gmail.com";
 
		// email subject
		String subject = "Mobile World welcomes you";
 
		// email body
		String body = "Welcome to the Mobile World "+register2.getUsername()+"."+System.getProperty("line.separator")
				+"Thanks to begin with us."+System.getProperty("line.separator")
				+System.getProperty("line.separator")
				+System.getProperty("line.separator")
				+System.getProperty("line.separator")
				+ "------------"+System.getProperty("line.separator")
				+ "-MobileWorld";
		/*String body="thanks";*/
		mailtouser.mailmethod(toAddr, fromAddr, subject, body);
		
				return "success";
		
	}

	

}