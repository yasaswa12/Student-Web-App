package com.vcube.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.vcube.model.Student;
import com.vcube.model.StudentLogin;
import com.vcube.utility.DBConnection;

public class StudentDAO implements StudentInterfaceDAO{
	Connection con;
	String status="failed";

	
	@Override
	public String insertStudent(Student s) {
		
		con=DBConnection.getConnection();
				
		try {
			PreparedStatement ps=con.prepareStatement("insert into student values (?,?,?,?)");
			ps.setString(1, s.getFname());
			ps.setString(2, s.getLname());
			ps.setString(3,s.getUname());
			ps.setString(4,s.getPassword());
			int n=ps.executeUpdate();
			if(n>0) {
				status="success";
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}

	@Override
	public String getStudent(StudentLogin sl) {
		
		
		try {
			con=DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from student where uname= ? and s_password= ?");
			ps.setString(1, sl.getUname());
			ps.setString(2, sl.getPassword());
			
			ResultSet rs=ps.executeQuery();
			
			int count=0;
			while(rs.next()) {
				count++;
			}
			if(count >0) {
				status="success";
			}
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		
		return status;
	}

	@Override
	public List<Student> getAllStudents() {
		
		List<Student> list=new ArrayList<>();
		try {
			con=DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from student ");
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				Student s=new Student();
				
				s.setFname(rs.getString("fname"));
				s.setLname(rs.getString("lname"));
				s.setUname(rs.getString("uname"));
				s.setPassword(rs.getString("s_password"));
				
				list.add(s);
			}
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		return list;
	}

}
