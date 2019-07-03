package com.serv.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fdm.controller.RegisterUser;

/**
 * Servlet implementation class Regester
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println(request.getParameter("username"));
		String username= request.getParameter("username");
		
		System.out.println(request.getParameter("email"));
		String email= request.getParameter("email");
		
		System.out.println(request.getParameter("password"));
		String password= request.getParameter("password");
		
		System.out.println(request.getParameter("address"));
		String address= request.getParameter("address");
		
		RegisterUser ru = new RegisterUser();
		
		ru.pushToDatabase(username, email, password, address, "User");
		
		doGet(request, response);
	}

}
