package com.shop.model.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.entity.Cart;
import com.shop.model.entity.Orders;
import com.shop.model.service.AddressService;

@Repository
@Transactional
public class PaymentDaoImpl implements PaymentDao {
	@Autowired
	SessionFactory sessionFactory;
	
	
	
	@Override
	public void add(Cart carts) {
	 
	sessionFactory.getCurrentSession().save(carts);

		
	}



	@Override
	public void orderadd(Orders orders) {
		sessionFactory.getCurrentSession().save(orders);
	}



	@Override
	public void Cartitems() {
		
		
	}


}
