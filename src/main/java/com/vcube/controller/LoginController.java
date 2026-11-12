package com.vcube.controller;

import java.io.IOException;

import com.vcube.dao.StudentDAO;
import com.vcube.model.StudentLogin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String password=request.getParameter("password");
		
		StudentLogin sl=new StudentLogin();
		sl.setUname(uname);
		sl.setPassword(password);
		
		StudentDAO sd=new  StudentDAO();
		String status=sd.getStudent(sl);
		
		if(status.equals("success")) {
			
			//request.setAttribute("uname", uname);
			
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			
			RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
			rd.forward(request,response);
		}else {
			RequestDispatcher rd= request.getRequestDispatcher("login.jsp");
			rd.forward(request,response);
		}
	}

}
