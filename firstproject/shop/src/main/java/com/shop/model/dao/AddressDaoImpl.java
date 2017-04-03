package com.shop.model.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.entity.BillingAddress;
@Repository
@Transactional
public class AddressDaoImpl implements AddressDao {
	@Autowired
	 private SessionFactory session;
@Override
	public void add(BillingAddress address) {
		session.getCurrentSession().save(address);
	}
@Override
public List getbyid(int id) {
	String query="from BillingAddress where userid=:output";
	List image=session.getCurrentSession().createQuery(query).setParameter("output",id).list();
	return image;
}
}
