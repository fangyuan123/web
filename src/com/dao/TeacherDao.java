package com.dao;
import java.sql.SQLException;
import java.util.List;

import com.users.Teacher;

public interface TeacherDao {
	 public void add(Teacher t)throws SQLException;
	    
	    //更新方法
	    public void update(Teacher t)throws SQLException;
	    
	    //删除方法
	    public void delete(int id)throws SQLException;
	    
	    //查找方法
	    public Teacher findById(int id)throws SQLException;
	    
	    public boolean findByUsernameAndPassword(String username,String password) throws SQLException;
	    
	    public Teacher findByUsername(String usrename) throws SQLException;
	    //查找所有
	    public List<Teacher> findAll()throws SQLException;
	    
	    public Teacher findTeacher() throws SQLException;

}
