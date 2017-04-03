package com.shop.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.dao.ProductDao;
import com.shop.model.entity.Product;


@Service
public class ProductServiceImpl implements ProductService{
		@Autowired
		 ProductDao productDao;

		@Transactional
		public void add(Product product) {
			productDao.add(product);
		}
		@Transactional
		public void edit(Product product) {
			productDao.edit(product);
			
		}

		@Transactional
		public void delete(int productId) {
			productDao.delete(productId);
		}

		@Transactional
		public Product getProduct(int productId) {
			return productDao.getProduct(productId);
		}


		@Transactional
		public List<Product> getAllProduct() {
			return productDao.getAllProduct();
		}
		@Transactional
		public List getAllProductfromcategory(String id) {
			return productDao.getAllProductfromcategory(id);
		}
}
