package com.fdm.controller;

import java.util.List;
import java.util.Scanner;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.fdm.model.EcomUsers;
import com.fdm.view.Home;

public class RegisterUser {
	Scanner sc = new Scanner(System.in);
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "ServletTrial" );    
	EntityManager em = emfactory.createEntityManager( );
	
	public void enterDetails(){
		System.out.println("Enter Username:");
		String username = sc.nextLine();
		
		if(checkUsername(username).isEmpty()){
			System.out.println("Enter Email Address:");
			String email = sc.nextLine();
			System.out.println("Enter Password");
			String password = sc.nextLine();
			System.out.println("Enter your address:");
			String address = sc.nextLine();
			String Type = "User";
			
			pushToDatabase(username, email, password, address, Type);
			
			System.out.println("Hi "+username);
			
			ProductController pc = new ProductController();
			pc.showProducts();
			
			
		}else{
			System.out.println("username already exists");
			enterDetails();
		}	
		
		
	}
	
	public void pushToDatabase(String username, String email, String password,  String address, String type){
		UserController uc = new UserController();
		EcomUsers user1 = new EcomUsers(username, email, password, address, type, null);
		
		em.getTransaction().begin();
		
		em.persist(user1);
		
		em.getTransaction().commit();
		
		em.close();
		emfactory.close();
		System.out.println("Check database");			
	}
	
	public List<EcomUsers> checkUsername(String username){
		Home ho = new Home();
		
		//Query query = em.createQuery("SELECT e FROM EcomUsers e WHERE EXISTS" + ("Select e from EcomUsers e where e.Username = :name and e.Password = :password");
		
		Query query = em.createNamedQuery("EcomUsers.findUsername");
		query.setParameter("name", username);
		
		List<EcomUsers> founduser = (List<EcomUsers>) query.getResultList();		
		return founduser;				
	}
	

}
