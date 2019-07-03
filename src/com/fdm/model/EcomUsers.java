package com.fdm.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import java.util.Set;

import javax.persistence.*;


@Entity
@Table
@NamedQueries({
	@NamedQuery(name = "EcomUsers.findUser", query ="Select i from EcomUsers i where i.Username = :name and i.Password = :password"),
	@NamedQuery(name = "EcomUsers.findUsername", query ="Select i from EcomUsers i where i.Username = :name")
})
public class EcomUsers {
	
	@Id
	@GeneratedValue( strategy = GenerationType.AUTO )
	private int UserId;
	
	private String Username;
	private String UserEmail;
	private String Password;
	private String UserAddress;
	private String Type;
	
	 @ManyToMany(targetEntity=EProduct.class)
	 @JoinTable(name="Ecom_Cart")
	 private Set Products;
	
	
	public EcomUsers() {
		super();
	}
	
	public EcomUsers(String username, String userEmail, String password, String userAddress, String Type,Set products) {
		super();
		Username = username;
		UserEmail = userEmail;
		Password = password;
		UserAddress = userAddress;
		this.Type = Type;
		this.Products = products;
	}
	
	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
	}

	@Override
	public String toString() {
		return "EcomUsers [UserId=" + UserId + ", Username=" + Username + ", UserEmail=" + UserEmail + ", Password="
				+ Password + ", UserAddress=" + UserAddress + "]";
	}  
	
	public int getUserId() {
		return UserId;
	}
	
	public void setUserId(int userId) {
		UserId = userId;
	}
	
	public String getUsername() {
		return Username;
	}
	
	public void setUsername(String username) {
		Username = username;
	}
	
	public String getUserEmail() {
		return UserEmail;
	}
	
	public void setUserEmail(String userEmail) {
		UserEmail = userEmail;
	}
	
	public String getPassword() {
		return Password;
	}
	
	public void setPassword(String password) {
		Password = password;
	}
	
	public String getUserAddress() {
		return UserAddress;
	}
	
	public void setUserAddress(String userAddress) {
		UserAddress = userAddress;
	}
}
