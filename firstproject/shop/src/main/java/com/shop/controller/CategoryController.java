package com.shop.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.model.entity.Category;
import com.shop.model.entity.Register;
import com.shop.model.service.CategoryService;
@Controller
public class CategoryController {
	@Autowired
	CategoryService categoryService;
	@ModelAttribute("category")
	public Category bind()
	{
		return new Category();
	}
	@RequestMapping("/category")
	public String show()
			 {
		return "category";
	}

	@RequestMapping(value="/category.do", method=RequestMethod.POST)
	public String doregActions(@Valid @ModelAttribute(value="category") Category category, BindingResult result,@RequestParam String action, Map<String, Object> map){
		/*Register registerResult = new Register();*/
			if(result.hasErrors()){
			return "category";
			}
		
	
		switch(action.toLowerCase()){	
		case "add":
			categoryService.add(category);
			System.out.println("in");
			/*registerResult = register;*/
			break;
		case "edit":
			categoryService.edit(category);
			/*registerResult = register;*/
			break;
		case "delete":
			categoryService.delete(category);
			break;
		case "retrieve":
			Category searchedRegister = categoryService.getCategory(category.getCategoryid());
			category = searchedRegister!=null ? searchedRegister : new Category();
			break;
		}
		
		map.put("categoryList", categoryService.getAllCategory());
		return "index";
		
	}
}
