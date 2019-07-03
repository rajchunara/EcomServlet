package com.serv.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fdm.controller.UserController;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		
		 System.out.println(request.getParameter("password"));
		 String password= request.getParameter("password");
		 
		 UserController uc = new UserController();
		 
		if(!uc.checkUser(username, password).isEmpty()){
			boolean success = true;
			String user = uc.checkUser(username, password).get(0).getType();
			System.out.println(user);
			request.setAttribute("success", success);
			request.setAttribute("type", user);
			
			if(user.equals("Admin")){
				request.getRequestDispatcher("src/components/Admin.jsp").forward(request, response);
				
			}else if(user.equals("User")){
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		}
				
		
		 
		
		doGet(request, response);
	}

}
