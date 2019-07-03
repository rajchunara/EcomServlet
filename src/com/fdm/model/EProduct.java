package com.fdm.model;

import java.util.Set;

import javax.persistence.*;

@Entity
@NamedQueries({
	@NamedQuery(name = "EProduct.findAllProducts", query ="Select i from EProduct i")
})
public class EProduct {
	
	@Id
	@SequenceGenerator(name="productseq", initialValue=4, allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "productseq" )
	private int productId;
	
	private String ProductName;
	private double ProductPrice;
	private String currency;
	private String details;
	
	@ManyToMany(targetEntity=EcomUsers.class)
	 private Set Users;	
	
	@Override
	public String toString() {
		return "EProduct [productId=" + productId + ", ProductName=" + ProductName + ", ProductPrice=" + ProductPrice
				+ ", currency=" + currency + ", details=" + details + "]";
	}
	public EProduct( String productName, double productPrice, String currency, String details, Set users) {
		super();
		ProductName = productName;
		ProductPrice = productPrice;
		this.currency = currency;
		this.details = details;
		this.Users =  users;
	}
	
	public EProduct() {
		super();
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	public double getProductPrice() {
		return ProductPrice;
	}
	public void setProductPrice(double productPrice) {
		ProductPrice = productPrice;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}

}
