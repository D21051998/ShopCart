package com.niit.shopcart.model;

import java.util.List;

import javax.persistence.*;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Cart {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cartId;
	
	private String item__id;
	
	@OneToOne 
	@JoinColumn(name="user_id", nullable=false, updatable=false, insertable=false)
	private User user;
	
	public User getUser(){
		return user;
	}
    
	public void setUser(User user){
		this.user = user;
	}
	
	@OneToMany
	@JoinColumn(name="item_id", nullable=false, updatable=false, insertable=false)
	List<Item> item;
	public int getCartId(){
	return cartId;
	}
	
	public void setCartId(int cartId){
		this.cartId = cartId;
	}
	
	public List<Item> getItem(){
		return item;
	}

	public void setItem(List<Item> item){
		this.item = item;
	}

	public String getItem__id() {
		return item__id;
	}

	public void setItem__id(String item__id) {
		this.item__id = item__id;
	}
	
}
