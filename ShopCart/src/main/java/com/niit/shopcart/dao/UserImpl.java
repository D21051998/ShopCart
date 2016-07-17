package com.niit.shopcart.dao;

import java.security.Principal;
import java.util.List;


import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopcart.model.User;

@Repository
public class UserImpl implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	@Transactional
	public boolean isValidUser(String id, String password, boolean isAdmin) {
	    System.out.println(id+password+isAdmin);
		String hql = "from User where id='"+id+"' and "+"password='"+password+"' and isAdmin="+isAdmin+"";
		//Query query=sessionFactory.getCurrentSession().createQuery(hql);
		Query query=sessionFactory.openSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();
		//System.out.println(list.get(0).toString());
		if(list!=null && !list.isEmpty()){
			return true;
		}
		return false;
	}

	@Transactional
	public User getByName(String name){
	    String hql="from User where username='"+name+"'";
	    Query query = sessionFactory.openSession().createQuery(hql);
	    @SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) query.list();
	    System.out.println(listUser);
	    if(listUser!=null && !listUser.isEmpty())
	    	{return listUser.get(0);
	    	}
	    return null;
	}
	
	 
}
