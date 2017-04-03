package com.shop.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.dao.CartDao;
import com.shop.model.dao.ProductDao;
import com.shop.model.entity.Cart;
import com.shop.model.entity.Cartitems;
import com.shop.model.entity.Product;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	CartDao cartDao;
	@Transactional
	public void add(Cartitems cart) {
		cartDao.add(cart);
	}
	
	@Transactional
	public void delete(int id) {
		cartDao.delete(id);
	}

	@Transactional
	public Cartitems getcartitem(int cartitemid) {
		return cartDao.getcartitem(cartitemid);
	}
	@Transactional
	public List getAllCartitems() {
		// TODO Auto-generated method stub
		return cartDao.getAllCartitems();
	}
	@Transactional
	public int cartLength(int id) {
		return cartDao.cartLength(id);
	}
	@Transactional
	public List getbyuserid(int id) {
		return cartDao.getbyuserid(id);
	}

	@Override
	public void update(Cartitems cart) {
		cartDao.update(cart);
		
	}
}
