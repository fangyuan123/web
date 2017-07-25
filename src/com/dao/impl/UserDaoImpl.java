package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.utils.JDBCUtils;
import com.dao.UserDao;
import com.users.User;



public class UserDaoImpl implements UserDao{

    /**
     * 实现添加方法
     */
    @Override
    public void add(User u) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "insert into students(stu_name,stu_pwd,stu_email)values(?,?,?)";
        try{
            conn = JDBCUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getPassword());
            ps.setString(3, u.getEmail());
            ps.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
            throw new SQLException("添加数据失败");
        }finally{
            JDBCUtils.close(null, ps, conn);
        }
    }

    /**
     * 更新方法
     */
    @Override
    public void update(User u) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "update students set stu_realname=?,stu_num=?,stu_class=? where stu_name='"+u.getUsername()+"'";
        try{
            conn = JDBCUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, u.getRealname());
            ps.setString(2, u.getNum());
            ps.setString(3, u.getUclass());
            ps.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
            throw new SQLException("更新数据失败");
        }finally{
            JDBCUtils.close(null, ps, conn);
        }        
    }

    /**
     * 删除方法
     */
    @Override
    public void delete(String username) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "delete from students where stu_name='"+username+"'";
        try{
            conn = JDBCUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
            throw new SQLException("删除数据失败");
        }finally{
            JDBCUtils.close(null, ps, conn);
        }        
    }
    
    @Override
    public boolean findByUsernameAndPassword(String username,String password) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        boolean flage=false;
        String sql = "select * from students where stu_name='"+username+"' and stu_pwd='"+ password + "'";
        try{
            conn = JDBCUtils.getConnection();
            ps = conn.prepareStatement(sql);
           
            rs = ps.executeQuery();
            if(rs.next()){
            	flage=true;
            }
        }catch(SQLException e){
            e.printStackTrace();
            throw new SQLException("根据用户名和密码查询数据失败");
        }finally{
            JDBCUtils.close(rs, ps, conn);
        }
        return flage;
    }
    
    
    @Override
    public User findByUsername(String usrename) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        User u = null;
        String sql = "select stu_name,stu_pwd,stu_email,stu_realname,stu_num,stu_class from students where stu_name=?";
        try{
            conn = JDBCUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, usrename);
            rs = ps.executeQuery();
            if(rs.next()){
                u = new User();
                u.setUsername(rs.getString(1));
                u.setPassword(rs.getString(2));
                u.setEmail(rs.getString(3));
                u.setRealname(rs.getString(4));
                u.setNum(rs.getString(5));
                u.setUclass(rs.getString(6));
            }
        }catch(SQLException e){
            e.printStackTrace();
            throw new SQLException("根据用户名查询数据失败");
        }finally{
            JDBCUtils.close(rs, ps, conn);
        }
        return u;
    }

    /**
     * 根据ID查询一个对象
     */
    @Override
    public User findById(int id) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        User u = null;
        String sql = "select stu_name,stu_pwd,stu_email from students where stu_id=?";
        try{
            conn = JDBCUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if(rs.next()){
                u = new User();
                u.setId(id);
                u.setUsername(rs.getString(1));
                u.setPassword(rs.getString(2));
                u.setEmail(rs.getString(3));
            }
        }catch(SQLException e){
            e.printStackTrace();
            throw new SQLException("根据ID查询数据失败");
        }finally{
            JDBCUtils.close(rs, ps, conn);
        }
        return u;
    }

    /**
     * 查询所有数据
     */
    @Override
    public List<User> findAll() throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        User u = null;
        List<User> Users = new ArrayList<User>();
        String sql = "select stu_name,stu_realname,stu_num,stu_class,stu_email from students";
        try{
            conn = JDBCUtils.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                u = new User();
                u.setUsername(rs.getString(1));
                u.setRealname(rs.getString(2));
                u.setNum(rs.getString(3));
                u.setUclass(rs.getString(4));
                u.setEmail(rs.getString(5));
                Users.add(u);
            }
        }catch(SQLException e){
            e.printStackTrace();
            throw new SQLException("查询所有数据失败");
        }finally{
            JDBCUtils.close(rs, ps, conn);
        }
        return Users;
    }

}