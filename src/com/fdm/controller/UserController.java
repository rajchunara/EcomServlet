package com.fdm.controller;

import java.util.List;
import java.util.Scanner;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.fdm.model.EcomUsers;
import com.fdm.model.SessionUser;
import com.fdm.view.Home;

public class UserController {
	
	Scanner sc = new Scanner(System.in);
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("ServletTrial");
	EntityManager em = emf.createEntityManager();
	
	//loginUser
	public void loginUser(int choice){
		System.out.println("Enter username:");
		String username = sc.nextLine();
		System.out.println("Enter Password");
		String password = sc.nextLine();		
		//checkUser(username, password, choice);
		
	}
	
	
	//Check if user is already present and login if present
	public List<EcomUsers> checkUser(String username, String password){
		Home ho = new Home();
		
		//Query query = em.createQuery("SELECT e FROM EcomUsers e WHERE EXISTS" + ("Select e from EcomUsers e where e.Username = :name and e.Password = :password");
		
		Query query = em.createNamedQuery("EcomUsers.findUser");
		
		query.setParameter("name", username);
		query.setParameter("password", password);
		List<EcomUsers> founduser = (List<EcomUsers>) query.getResultList();
		
		if(!founduser.isEmpty()){
			//ho.LogIn();	
//			ProductController pc = new ProductController();	
//			SessionUser su = new SessionUser();
//			su.setCurrentUser(founduser);
			//pc.showProducts();	
//			if(choice == 1){
//				//user
//				System.out.println("Logged in as User");
//				
//			}else if(choice == 3){
//				//Admin
//				System.out.println("Logged in as Admin");	
//				adminFunction();
//			}	
//			
			return founduser;				
					
		}else {			
			System.out.println("Wrong username or password");
//			loginUser(choice);						
		}
		
		return null;	
		
	}
	
	
	//Get all the users 
	
	public List<EcomUsers> getAllUsers(){
		Home ho = new Home();
		
		Query query = em.createQuery("SELECT e FROM EcomUsers e WHERE e.type = :type");
		
		
		query.setParameter("type", "User");
		List<EcomUsers> founduser = (List<EcomUsers>) query.getResultList();
		
		if(!founduser.isEmpty()){
			
			return founduser;				
					
		}else {			
			System.out.println("Wrong username or password");
//			loginUser(choice);						
		}
		
		return null;	
	}
	
	
	
	
	
	
	//view when admin login
	public void adminFunction(){
	Home ho = new Home();
	AdminController ac= new AdminController();
	ProductController pc = new ProductController();
	NavigationController nc = new NavigationController();
	SessionUser su = new SessionUser();
	
		
		//Add Choices for admin
		ho.showMenuForAdmin();
		int adChoice = ac.adminChoice();
		
		
		if(adChoice == 0){
			//Logout
			System.out.println("logout");
			su.setCurrentUser(null);
			nc.startMenu();
		}else if(adChoice == 1){
			//See products
			pc.showProducts();
			adminFunction();
		}else if(adChoice == 2){
			//See Users
			System.out.println("See users");
			adminFunction();
		}else if(adChoice == 3){
			//Add Products	
			pc.addProductDetails();
			adminFunction();
		}		
	}
	
	//view when user login
	public void userFunction(){
		SessionUser su = new SessionUser();
		NavigationController nc = new NavigationController();
		ProductController pc = new ProductController();
		
		
		
		
		//Add Choices for users
		
		
		//See Products list
		pc.showProducts();
		adminFunction();
		
		
		
		
		//Add products to cart
		
		//Logout
		System.out.println("logout");
		su.setCurrentUser(null);
		nc.startMenu();
		
		
	}
	
	
	
	
	

}
