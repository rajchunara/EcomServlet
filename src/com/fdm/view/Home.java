package com.fdm.view;

public class Home {
	
	public void ShowMainMenu(){
		System.out.println("Choose options from below:");
		System.out.println("0. Exit Application");
		System.out.println("1. Login as user");
		System.out.println("2. Regester as new user");
		System.out.println("3. Login as admin");
	}
	
	public void showMenuForAdmin(){
		System.out.println("0. Logout");
		System.out.println("1. Show Products");
		System.out.println("2. Show Users");
		System.out.println("3. Add Products");
	}
	
	
	public void showMenuForUser(){
		System.out.println("0. Logout");
		System.out.println("1. Show Products");
		System.out.println("2. Add Products to cart");
		System.out.println("3. See Products in cart");
	}
	
	public void LogOut() {
		System.out.println("You have successfully logged out!!");
	}
	
	public void LogIn(){
		System.out.println("You are Logged In!!!");
	}
	
	public void exitApplication(){
		System.out.println("Have a great day, bye!!!");
	}

}
