package com.shop.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.dao.AddressDao;
import com.shop.model.entity.BillingAddress;
@Service
public class AddressServiceimpl implements AddressService {
	@Autowired
	 AddressDao addressdao;

	@Transactional
	public void add(BillingAddress address) {
		addressdao.add(address);
	}
}
