package com.shop.model.dao;

import java.util.List;

import com.shop.model.entity.BillingAddress;

public interface AddressDao {
	public void add(BillingAddress address);
	public List getbyid(int id);
}
