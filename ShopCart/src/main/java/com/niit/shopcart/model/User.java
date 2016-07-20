package com.niit.shopcart.model;

import javax.persistence.*;

import org.hibernate.annotations.ColumnDefault;
import org.springframework.stereotype.Component;

@Entity
@Table(name="user")
@Component
public class User {
	
	@Id
	private String id;
	private String username;
	private String name;
	private String password;
	private String email;
	private boolean isAdmin;
	private String role;
	private boolean enabled;
	private String contact;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isAdmin() {
		return isAdmin;
	}
	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	

	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", name=" + name + ", password=" + password + ", email="
				+ email + ", isAdmin=" + isAdmin + ", role=" + role + ", enabled=" + enabled + ", contact=" + contact
				+ "]";
	}
	
	
	
}
