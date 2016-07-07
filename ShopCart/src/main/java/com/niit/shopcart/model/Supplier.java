package com.niit.shopcart.model;

import javax.persistence.*;
import org.springframework.stereotype.Component;

@Entity
@Table(name="Supplier")
@Component
public class Supplier {
	
	@Id
	private String id;
	private String name;
	private String address;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Supplier [id=" + id + ", name=" + name + ", address=" + address + "]";
	}
	
	
	
}
