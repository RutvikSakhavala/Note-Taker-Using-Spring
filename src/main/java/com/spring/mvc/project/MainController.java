package com.spring.mvc.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	@Autowired
	private ProductDao productDao;
	@RequestMapping("/home")
	public String home(Model m)
	{
		m.addAttribute("title", "home page");
		
		List<Product> list = productDao.getProducts();
		m.addAttribute("products", list);
		return "index";
	}
	
	@RequestMapping("/addProduct")
	public String addProduct(Model m)
	{
		m.addAttribute("title", "add Product");
		return "addProduct";

		
	}
	
	@RequestMapping(path="/handle-product",method = RequestMethod.POST)
	public String handleProduct(@ModelAttribute Product product)
	{
		System.out.println(product);
		productDao.create(product);
		return "redirect:/home	";
		
	}
	
	@RequestMapping(path="/deleteProduct/{id}")
	public String deleteProduct(@PathVariable("id") int id)
	{
		productDao.delete(id);
		return "redirect:/home	";
	}
	
	@RequestMapping(path="/updateProduct/{id}")
	public String updateProduct(@PathVariable("id") int id, Model m)
	{
		m.addAttribute("id", id);
		return "updateProduct";
	}
	
	@RequestMapping(path="/update-product/{id}")
	public String update_product(@ModelAttribute Product product, @PathVariable("id") int id)
	{				
		productDao.updateProduct(product);
		return "redirect:/home	";
	}
}
