package com.fdm.controller;

import java.util.List;
import java.util.Scanner;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.fdm.model.EProduct;

public class ProductController {
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "ServletTrial" );	    
    EntityManager em = emfactory.createEntityManager( );
    Scanner sc = new Scanner(System.in);
    
    public void showProducts(){
    	Query query = em.createNamedQuery("EProduct.findAllProducts");
		List<EProduct> products = query.getResultList();
		
		for(EProduct pro: products){
			System.out.println(pro.getProductId() + ". "+ pro.getProductName()+ " "+ pro.getProductPrice()+ " "+pro.getImagePath()+" "+pro.getDetails() );
		}		
		
    }	
    
    public void addProductDetails(){
    	System.out.println("Enter product name:");
    	String productName = sc.nextLine();
    	System.out.println("Add Currency:");
    	String currency = sc.nextLine();
    	System.out.println("Add details: ");
    	String details = sc.nextLine();
    	System.out.println("Enter product price: ");
    	double productPrice = sc.nextDouble();
    	
    	
    	addProducts(productName, productPrice, currency, details);
    	
    }
    
    public void addProducts(String productName, double productPrice, String ImagePath, String details ){
    	EProduct pr1 = new EProduct(productName, productPrice, ImagePath, details, null);

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("JpaEcom");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		
		em.persist(pr1);
		
		em.getTransaction().commit();
    	
    }
    
    public void removeProduct(String productName) {
    	
		/*
		 * EProduct pr1 = new EProduct(productName, productPrice, ImagePath, details,
		 * null);
		 * 
		 * EntityManagerFactory emf = Persistence.createEntityManagerFactory("JpaEcom");
		 * EntityManager em = emf.createEntityManager();
		 * 
		 * em.getTransaction().begin();
		 * 
		 * em.persist(pr1);
		 * 
		 * em.getTransaction().commit();
		 */
    	
    	
    }

}
