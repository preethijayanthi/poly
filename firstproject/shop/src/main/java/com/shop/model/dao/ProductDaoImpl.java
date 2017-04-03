	
package com.shop.model.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.model.entity.Product;





@Repository
public class ProductDaoImpl implements ProductDao {
	@Autowired
	 private SessionFactory session;

	public void add(Product product) {
		session.getCurrentSession().save(product);
	}
	@Override
	public void edit(Product product) {
		session.getCurrentSession().update(product);
	}

	@Override
	public void delete(int productId) {
		session.getCurrentSession().delete(getProduct(productId));
		
	}

	public Product getProduct(int productId) {
		return (Product)session.getCurrentSession().get(Product.class, productId);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Product> getAllProduct() {
		
		return session.getCurrentSession().createQuery("from Product").list();
	}
	/*@Override
	public List getAllProductfromcategory(String id) {
		 return session.getCurrentSession().createQuery("from Product where CATEGORYNAME='"+ id +"'").list();
		
	}*/

	@Override
	public List getAllProductfromcategory(String id) {
		String qry="from Product where CATEGORYNAME =:val";
		List l= session.getCurrentSession().createQuery(qry).setParameter("val", id).list();
		return l;
	}
}


	

