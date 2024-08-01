package com.login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.login.dao.LoginDao;


public class Login extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String user = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		LoginDao dao = new LoginDao();
		
		if(dao.check(user, pass)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", user);
			response.sendRedirect("welcome.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	}
}
