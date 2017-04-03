package com.shop.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shop.model.dao.RegisterDao;
import com.shop.model.entity.Register;
import com.shop.model.entity.Role;
import com.shop.model.service.CategoryService;
import com.shop.model.service.MailService;
import com.shop.model.service.RegisterService;





@Controller
public class RegisterController {
	@Autowired
	RegisterService registerService;
	@Autowired
	MailService mailtouser;
//	@Autowired
//	RegisterDao registerdao;
	@Autowired
	CategoryService categoryService;
	 @ModelAttribute("register")
	public Register bind()
	{
		return new Register();
	}
	/*@RequestMapping("/register")
	public String setupregForm(Map<String, Object> map){
		map.put("categoryList", categoryService.getAllCategory());
		Register register=new Register();
		map.put("register", register);
		map.put("registerList", registerService.getAllRegister());
		return "register";
	}*/
@RequestMapping("/success")
public String add()
{
	return"success";
}

	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String doregActions(@Valid @ModelAttribute(value="register") Register register/*, BindingResult result*/,@RequestParam String action, Map<String, Object> map,MessageContext messagecontext){
		/*Register registerResult = new Register();*/
			/*if(result.hasErrors()){
			return "register";
			}*/
			if (register.getUsername().isEmpty()) {
				/*messagecontext.addMessage(
						new MessageBuilder().error().source("username").defaultText("Username cannot be Empty").build());*/
				return "register";
			}
		
		System.out.println("Rathiga");
		switch(action.toLowerCase()){	
		case "register":
			Role role=new Role();
			role.setUserrole("ROLE_USER");
			role.setId_fk(register);
			register.setEnable(true);
			
			registerService.add(register);
			registerService.addrole(role);
			
			String toAddr = register.getEmail();
			String fromAddr = "preethi8895@gmail.com";
	 
			// email subject
			String subject = "Mobile World welcomes you";
	 
			// email body
			String body = "Welcome to the Mobile World "+register.getUsername()+"."+System.getProperty("line.separator")
					+"Thanks to begin with us."+System.getProperty("line.separator")
					+System.getProperty("line.separator")
					+System.getProperty("line.separator")
					+System.getProperty("line.separator")
					+ "------------"+System.getProperty("line.separator")
					+ "-Clickart";
			/*String body="thanks";*/
			mailtouser.mailmethod(toAddr, fromAddr, subject, body);
			
			
			System.out.println("in");
			/*registerResult = register;*/
			break;
		case "edit":
			registerService.edit(register);
			/*registerResult = register;*/
			break;
		/*case "delete":
			registerService.delete(register.getId());
			registerResult = new Register();
			break;*/
		case "delete":
			registerService.delete(register);
			break;
		case "retrieve":
			Register searchedRegister = registerService.getRegister(register.getUserid());
			register = searchedRegister!=null ? searchedRegister : new Register();
			break;
			/*map.put("searchList", register);
			return "search";*/
		}
		
	/*map.put("register", register);*/
		
		map.put("registerList", registerService.getAllRegister());
		return "success";
		
	}
	/*@RequestMapping("/search")
	 public ModelAndView getList() {
		List searchList = registerService.getAllRegister();
		  return new ModelAndView("list", "searchList", searchList);
	}*/
	
	@RequestMapping("/list")
	 public ModelAndView getList() {
		List registerList = registerService.getAllRegister();
		  return new ModelAndView("list", "registerList", registerList);
	}
	
}