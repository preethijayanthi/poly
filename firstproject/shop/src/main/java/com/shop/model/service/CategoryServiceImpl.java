package com.shop.model.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.dao.CategoryDao;
import com.shop.model.entity.Category;

@Service
public class CategoryServiceImpl implements CategoryService{
	@Autowired
	 CategoryDao categoryDao;

	@Transactional
	public void add(Category category) {
		categoryDao.add(category);
	}
	@Transactional
	public void edit(Category category) {
		categoryDao.edit(category);
		
	}

	@Transactional
	public void delete(Category category) {
		categoryDao.delete( category);
	}

	@Transactional
	public Category getCategory(int categoryId) {
		return categoryDao.getCategory(categoryId);
	}


	@Transactional
	public List getAllCategory() {
		return categoryDao.getAllCategory();
	}
}
