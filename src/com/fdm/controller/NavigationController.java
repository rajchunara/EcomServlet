package com.fdm.controller;

import java.util.Scanner;

import com.fdm.view.Home;

public class NavigationController {
	Scanner sc = new Scanner(System.in);
	Home ho = new Home();		
	UserController uc = new UserController();
	
	RegisterUser ru= new RegisterUser(); 
		
	public int userChoice(){
		System.out.println("Enter your Choice:");
		int ch = sc.nextInt();		
		return ch;		
	}
	
	
	public void startMenu(){
		ho.ShowMainMenu();
		int userChoice = userChoice();
		if(userChoice == 0){
			ho.exitApplication();
		}else if(userChoice == 1 ){
			uc.loginUser(userChoice);
		}else if( userChoice == 2){
			ru.enterDetails();
		}else if( userChoice == 3){
			uc.loginUser(userChoice);
		}
	}	
}
