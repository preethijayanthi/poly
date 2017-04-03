package com.shop.model.service;

import com.shop.model.entity.Cart;
import com.shop.model.entity.Orders;

public interface PaymentService {
	public void orderadd(Orders orders);
	public void Cartitems();
	public void add(Cart carts);
}
