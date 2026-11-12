package com.vcube.controller;

import java.io.IOException;

import com.vcube.dao.StudentDAO;
import com.vcube.dao.StudentInterfaceDAO;
import com.vcube.model.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/Studentcontroller")
public class Studentcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public Studentcontroller() {
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Welcome to advance java");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String uname=request.getParameter("uname");
		String password=request.getParameter("password");
		
		Student s=new Student();
		s.setFname(fname);
		s.setLname(lname);
		s.setPassword(password);
		s.setUname(uname);
		

		
		StudentInterfaceDAO sd=new StudentDAO();
		
		String status=sd.insertStudent(s);
		if(status.equals("success")) {
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}

}
