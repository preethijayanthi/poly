package com.shop.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.shop.model.entity.Product;
import com.shop.model.service.ProductService;

@Controller
	public class UploadController {

		/*private static final Logger logger = LoggerFactory
				.getLogger(FileUploadController.class);*/

		/**
		 * Upload single file using Spring Controller
		 */
	/*@Autowired
    ServletContext servletContext;*/
	 @Autowired
	 private ProductService productService;
	@RequestMapping("/uploadedfile")
	public String image()
	{
		return "uploadedfile";
	}
	@RequestMapping("/upload")
	public String setupregForm(Map<String, Object> map){
	
		return "upload";
	}
		/*@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
		public 
		String uploadFileHandler(@RequestParam("name") String name,
				@RequestParam("file") MultipartFile file) {

			if (!file.isEmpty()) {
				try {
					byte[] bytes = file.getBytes();

					// Creating the directory to store file
					String rootPath = "D:/shop/src/main/webapp/resources";
					File dir = new File(rootPath + File.separator + "images");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir.getAbsolutePath()
							+ File.separator + name + ".jpg");
					BufferedOutputStream stream = new BufferedOutputStream(
							new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();
					
					logger.info("Server File Location="
							+ serverFile.getAbsolutePath());

					//return "redirect: uploaded file";
				} catch (Exception e) {
					//return "You failed to upload " + name + " => " + e.getMessage();
				}
			} else {
				//return "You failed to upload " + name
					//	+ " because the file was empty.";
			}
			
		return "uploadedfile";
		}*/
	 /*@RequestMapping(value="addProducts",method=RequestMethod.POST)	 
     public ModelAndView up(@Valid @ModelAttribute("product")Product product,BindingResult bindingResult,ModelMap m,@RequestParam("file") MultipartFile file)
     { 
	  if (bindingResult.hasErrors())
		{
			return new ModelAndView("productsForm");
		}
    	 if (!file.isEmpty()) {
				try {
					byte[] bytes = file.getBytes();

					// Creating the directory to store file
					String rootPath = servletContext.getRealPath("/");
					File dir = new File(rootPath + File.separator + "resources/images");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir + File.separator + product.getProductname() + ".jpg");
					BufferedOutputStream stream = new BufferedOutputStream(
							new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();

					System.out.println(serverFile);
					m.addAttribute("message","You successfully uploaded file");
					productService.add(product,product.getProductname());
					return new ModelAndView("productsForm","img",product.getProductname());
				
				} catch (Exception e) {
					m.addAttribute("message","You failed to upload " + product.getProductname() + " => " + e.getMessage());
					return new ModelAndView("productsForm");
				}
			} else {
				m.addAttribute("message","You failed to upload " +product.getProductname() + " because the file was empty.");
				return new ModelAndView("productsForm");
			}*/
		
	}

