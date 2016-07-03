package com.niit.shopcart.dao;

import java.util.List;
import java.util.ListIterator;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopcart.model.Category;

@Repository
public class CategoryImpl implements CategoryDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public CategoryImpl( SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public List<Category> list() {
		//@SuppressWarnings("unchecked")
		
		@SuppressWarnings("unchecked")
		//String hql= "from category";
		//Query query= sessionFactory.openSession().createQuery(hql);
		//List<Category> listCategory = (List<Category>) query.list();
		List<Category> listCategory = (List<Category>) sessionFactory.getCurrentSession().createCriteria(Category.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		ListIterator<Category> itr = listCategory.listIterator();
		while(itr.hasNext()){
			System.out.println(itr.next().toString());
		}
		return listCategory;
	}

	
	
	
}
