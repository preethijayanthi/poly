package com.shop.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shop.model.entity.Category;
import com.shop.model.entity.Product;
import com.shop.model.service.CategoryService;
import com.shop.model.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	 ProductService productService;
	@Autowired
    ServletContext servletContext;
	@Autowired
	 CategoryService categoryService;
	
	
	@RequestMapping("/product")
	public String setupproForm(Map<String, Object> map){
		Product product = new Product();
		map.put("product", product);
		map.put("productList", productService.getAllProduct());
		map.put("categoryList", categoryService.getAllCategory());
		return "product";
	}
	@RequestMapping(value="/edit")
	public String edit(Map<String, Object> map,@RequestParam("edit") int id)
	{
		Product product=productService.getProduct(id);
		map.put("product",product);
		map.put("productList", productService.getAllProduct());
		map.put("categoryList", categoryService.getAllCategory());
		return"product";
	}
	@RequestMapping(value="/delete")
	public String edit(@RequestParam("edit") int id)
	{
		productService.delete(id);
		return "viewall";
	}
	
	@RequestMapping(value="/product.do", method=RequestMethod.POST)
	public String doproActions(@ModelAttribute Product product, BindingResult result,
			@RequestParam("file") MultipartFile file,/*@RequestParam String name,*/ 
			@RequestParam String action, Map<String, Object> map,ModelMap m){
		Product productResult = new Product();
		switch(action.toLowerCase()){	
		case "add":
			productService.add(product);
			if (!file.isEmpty()) {
				try {
					byte[] bytes = file.getBytes();

					// Creating the directory to store file
					String rootPath = servletContext.getRealPath("/");
					File dir = new File(rootPath + File.separator + "resources/images");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir + File.separator + product.getName() + ".jpg");

					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();

					System.out.println(serverFile);

					
					map.put("product", productResult);
					map.put("productList", productService.getAllProduct());
					m.addAttribute("message", "You successfully uploaded file");
					map.put("img",product.getName());
					return /*"product"*/"productpage";

				} catch (Exception e) {
					return "You failed to upload " + product.getName() + " => " + e.getMessage();
				}
			} 
			productResult = product;
			break;
		case "update":
			productService.edit(product);
			productResult = product;
			break;
		case "delete":
			productService.delete(product.getId());
			productResult = new Product();
			break;
		case "retrieve":
			Product searchedProduct = productService.getProduct(product.getId());
			productResult = searchedProduct!=null ? searchedProduct : new Product();
			break;
		}
		
		map.put("product", productResult);
		map.put("productList", productService.getAllProduct());
		return "productpage";
	
		/*map.put("product", productResult);*/
		/*map.put("productList", productService.getAllProduct());*/
		/*return "product";*/
	
	}

}