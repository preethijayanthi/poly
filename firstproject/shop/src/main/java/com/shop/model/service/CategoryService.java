package com.shop.model.service;

import java.util.List;

import com.shop.model.entity.Category;


public interface CategoryService {
	public void add(Category category);
	public void edit(Category category);
	public void delete(Category category);
	public Category getCategory(int categoryId);
	public List getAllCategory();
}
