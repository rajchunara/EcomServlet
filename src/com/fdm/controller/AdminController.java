package com.fdm.controller;

import java.util.Scanner;

public class AdminController {
	Scanner sc = new Scanner(System.in);
	
	public int adminChoice(){
		System.out.println("Enter your choice");
		int adChoice = sc.nextInt();
		return adChoice;
	}

}
