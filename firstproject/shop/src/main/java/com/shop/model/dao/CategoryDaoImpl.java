package com.shop.model.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.model.entity.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao {
	@Autowired
	 private SessionFactory session;

	@Override
	public void add(Category category) {
		session.getCurrentSession().save(category);
	}

	@Override
	public void edit(Category category) {
		session.getCurrentSession().update(category);
	}

	@Override
	public void delete(Category category) {
		session.getCurrentSession().delete(category);
		
	}


	@Override
	public Category getCategory(int categoryId) {
		return (Category)session.getCurrentSession().get(Category.class, categoryId);
	}

	@Override
	public List getAllCategory() {
		return session.getCurrentSession().createQuery("from Category").list();
	}
}