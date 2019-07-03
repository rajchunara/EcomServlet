package com.fdm.model;

import java.util.List;

public class SessionUser {
	
	private List<EcomUsers> currentUser = null;

	public List<EcomUsers> getCurrentUser() {
		return currentUser;
	}

	public void setCurrentUser(List<EcomUsers> founduser) {
		this.currentUser = founduser;
	}
	
	
	
}
