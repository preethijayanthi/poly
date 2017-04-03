package com.shop.model.dao;

import java.util.List;

import com.shop.model.entity.Register;
import com.shop.model.entity.Role;

public interface RegisterDao {
	public void add(Register register);
	public void addrole(Role role);
	public void edit(Register register);
	public void delete(/*int registerId*/Register register);
	public Register getRegister(int registerId);
	public List getAllRegister();
	public List<Register> getUserByName(String username);
}
