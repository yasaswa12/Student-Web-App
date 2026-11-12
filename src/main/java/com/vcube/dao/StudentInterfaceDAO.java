package com.vcube.dao;

import java.util.List;

import com.vcube.model.Student;
import com.vcube.model.StudentLogin;

public interface StudentInterfaceDAO {
	
	public String insertStudent(Student s);
	
	public String getStudent(StudentLogin sl);
	
	public List<Student> getAllStudents();
}
