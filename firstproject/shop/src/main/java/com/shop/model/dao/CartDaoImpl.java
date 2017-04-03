package com.shop.model.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.entity.Cart;
import com.shop.model.entity.Cartitems;
import com.shop.model.entity.Product;
import com.shop.model.entity.Register;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {
	@Autowired
	 private SessionFactory session;
@Override
	public void add(Cartitems cart) {
		session.getCurrentSession().save(cart);
	}
@Override
public void delete(int cartitemid) {
	session.getCurrentSession().delete(getcartitem(cartitemid));
	
}

public Cartitems getcartitem(int cartitemid) {
	return (Cartitems)session.getCurrentSession().get(Cartitems.class, cartitemid);
}

@Override
public List getAllCartitems() {
	return session.getCurrentSession().createQuery("from Cartitems").list();
}

@Override
public List getbyuserid(int id)
{
	String Query="from Cartitems where userid='"+id+"'";
	@SuppressWarnings("unchecked")
	List<Register> crtitem = session.getCurrentSession().createQuery(Query).list();
	return crtitem;
}
@Override
public int cartLength(int id) {
	
	String Query="from Cartitems where userid='"+id+"'";
	@SuppressWarnings("unchecked")
	List<Register> crtitems = session.getCurrentSession().createQuery(Query).list();
	return crtitems.size();
}
@Override
public void update(Cartitems cart) {
	session.getCurrentSession().update(cart);
	
}
}


