package com.shop.model.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.entity.Register;
import com.shop.model.entity.Role;

@Repository
@Transactional
public class RegisterDaoImpl implements RegisterDao {
	@Autowired
	 private SessionFactory session;

	@Override
	public void add(Register register) {
		session.getCurrentSession().save(register);
	}

	@Override
	public void edit(Register register) {
		session.getCurrentSession().update(register);
	}

	@Override
	public void delete(/*int registerId*/Register register) {
		session.getCurrentSession().delete(/*getRegister(registerId)*/register);
		
	}


	@Override
	public Register getRegister(int registerId) {
		return (Register)session.getCurrentSession().get(Register.class, registerId);
	}

	@Override
	public List getAllRegister() {
		return session.getCurrentSession().createQuery("from Register").list();
	}

	@Override
	public void addrole(Role role) {
		session.getCurrentSession().save(role);
	}

	@Override
	public List<Register> getUserByName(String username) {
		
		  String Query="from Register where username='"+username+"'";
	  @SuppressWarnings("unchecked")
		  List<Register> productList = session.getCurrentSession().createQuery(Query).list();
		 
		  return productList;
	}
}
