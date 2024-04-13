package com.spring.mvc.project;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;


@Component
public class ProductDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int create(Product product)
	{
		int n = (int)hibernateTemplate.save(product);
		return n;
	}
	
	public List<Product> getProducts()
	{
		List<Product> products = hibernateTemplate.loadAll(Product.class);
		
		return products;
	}
	
	@Transactional
	public void delete(int id)
	{
		Product p = hibernateTemplate.load(Product.class,id);
		hibernateTemplate.delete(p);
	}
	
	public Product getProduct(int id)
	{
		return hibernateTemplate.get(Product.class, id);
	}
	
	@Transactional
	public void updateProduct(Product product)
	{
		hibernateTemplate.update(product);
	}
}
