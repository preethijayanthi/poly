package com.shop.model.dao;

import java.util.List;

import com.shop.model.entity.Product;




public interface ProductDao {
	public void add(Product product);
	public void edit(Product product);
	public void delete(int productId);
	public Product getProduct(int productId);
	public List<Product> getAllProduct();
	public List getAllProductfromcategory(String id);
}
