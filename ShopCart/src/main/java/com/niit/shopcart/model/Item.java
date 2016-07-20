package com.niit.shopcart.model;

import javax.persistence.*;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Item {
	
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String name;
	
	private int quantity;
	
	private double price;
	
	private String product_id;

	@ManyToOne
	@JoinColumn(name="cartId")
	private Cart cart;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	
	@ManyToOne
	@JoinColumn(name="product_id", nullable=false, insertable=false, updatable=false)
	private Product product;
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
}
