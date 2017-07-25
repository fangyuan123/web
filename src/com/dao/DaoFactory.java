package com.dao;

import com.dao.impl.UserDaoImpl;
import com.dao.impl.TeacherDaoImpl;

public class DaoFactory {
	
	public static UserDao getUserDaoInstance() {
		
		return new UserDaoImpl();
		
	}
public static TeacherDao getTeacherDaoInstance() {
		
		return new TeacherDaoImpl();
		
	}

}
