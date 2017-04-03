package com.shop.model.dao;

import com.shop.model.entity.Cart;
import com.shop.model.entity.Orders;

public interface PaymentDao {
	public void add(Cart carts);
	public void orderadd(Orders orders);
	public void Cartitems();
}
