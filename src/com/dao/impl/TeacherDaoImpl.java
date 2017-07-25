package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.utils.JDBCUtils;
import com.dao.TeacherDao;
import com.users.Teacher;


public class TeacherDaoImpl implements TeacherDao{
	
	/**
     * 实现添加方法
     */
    @Override
    public void add(Teacher t) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "insert into admins(admin_name,admin_pwd,admin_email)values(?,?,?)";
        try{
            conn = JDBCUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, t.getUsername());
            ps.setString(2, t.getPassword());
            ps.setString(3, t.getEmail());
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
    public void update(Teacher t) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "update admins set admin_realname=?,admin_num=?,admin_class=? where admin_name='"+t.getUsername()+"'";
        try{
            conn = JDBCUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, t.getRealname());
            ps.setString(2, t.getTelnum());
            ps.setString(3, t.getAddress());
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
    public void delete(int id) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "delete from admins where id=?";
        try{
            conn = JDBCUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            ps.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
            throw new SQLException(" 删除数据失败");
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
        String sql = "select * from admins where admin_name='"+username+"' and admin_pwd='"+ password + "'";
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
    public Teacher findByUsername(String usrename) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Teacher t = null;
        String sql = "select admin_name,admin_pwd,admin_email,admin_realname,admin_telnum,admin_address from admins where admin_name=?";
        try{
            conn = JDBCUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, usrename);
            rs = ps.executeQuery();
            if(rs.next()){
                t = new Teacher();
                t.setUsername(rs.getString(1));
                t.setPassword(rs.getString(2));
                t.setEmail(rs.getString(3));
                t.setRealname(rs.getString(4));
                t.setTelnum(rs.getString(5));
                t.setAddress(rs.getString(6));
            }
        }catch(SQLException e){
            e.printStackTrace();
            throw new SQLException("根据用户名查询数据失败");
        }finally{
            JDBCUtils.close(rs, ps, conn);
        }
        return t;
    }

    /**
     * 根据ID查询一个对象
     */
    @Override
    public Teacher findById(int id) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Teacher t = null;
        String sql = "select admin_name,admin_pwd,admin_email from admins where admin_id=?";
        try{
            conn = JDBCUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if(rs.next()){
                t = new Teacher();
                t.setId(id);
                t.setUsername(rs.getString(1));
                t.setPassword(rs.getString(2));
                t.setEmail(rs.getString(3));
            }
        }catch(SQLException e){
            e.printStackTrace();
            throw new SQLException("根据ID查询数据失败");
        }finally{
            JDBCUtils.close(rs, ps, conn);
        }
        return t;
    }

    /**
     * 查询所有数据
     */
    @Override
    public List<Teacher> findAll() throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Teacher t = null;
        List<Teacher> Teacher = new ArrayList<Teacher>();
        String sql = "select * from admins";
        try{
            conn = JDBCUtils.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                t = new Teacher();
                t.setId(rs.getInt(1));
                t.setUsername(rs.getString(2));
                t.setPassword(rs.getString(3));
                t.setEmail(rs.getString(4));
                Teacher.add(t);
            }
        }catch(SQLException e){
            e.printStackTrace();
            throw new SQLException("查询所有数据失败");
        }finally{
            JDBCUtils.close(rs, ps, conn);
        }
        return Teacher;
    }
    
    
    @Override
    public Teacher findTeacher() throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Teacher t = null;
        String sql = "select admin_email,admin_realname,admin_telnum,admin_address from admins";
        try{
            conn = JDBCUtils.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                t = new Teacher();
                t.setEmail(rs.getString(1));
                t.setRealname(rs.getString(2));
                t.setTelnum(rs.getString(3));
                t.setAddress(rs.getString(4));
            }
        }catch(SQLException e){
            e.printStackTrace();
            throw new SQLException("查询教师信息失败");
        }finally{
            JDBCUtils.close(rs, ps, conn);
        }
        return t;
    }

}
