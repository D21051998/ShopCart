package com.niit.shopcart.dao;

import java.security.Principal;

import org.hibernate.SessionFactory;

import com.niit.shopcart.model.User;

public interface UserDao {
	
	
	public boolean isValidUser(String id, String password, boolean isAdmin);
	
	//public User getByName(String name, Principal px);
}
