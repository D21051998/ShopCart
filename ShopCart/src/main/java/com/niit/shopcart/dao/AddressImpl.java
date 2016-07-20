package com.niit.shopcart.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopcart.model.Address;

public class AddressImpl {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session  getSession(){
		return sessionFactory.openSession();
	}
	
	@Transactional
	public void saveOrUpdate(Address address){
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(address);
		tx.commit();
	}
	
}
