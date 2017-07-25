package com.dao;

import java.sql.SQLException;
import java.util.List;

import com.users.User;;

public interface UserDao {
	//添加方法
    public void add(User u)throws SQLException;
    
    //更新方法
    public void update(User u)throws SQLException;
    
    //删除方法
    public void delete(String username)throws SQLException;
    
    //查找方法
    public User findById(int id)throws SQLException;
    
    public boolean findByUsernameAndPassword(String username,String password) throws SQLException;
    
    public User findByUsername(String usrename) throws SQLException;
    //查找所有
    public List<User> findAll()throws SQLException;


}
