package com.users;

public class Teacher {
	private int id;
    private String username;///用户名
    private String email;//邮箱
    private String password;//密码
    private String realname;
    private String address;
    private String telnum;
    
    
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }
    
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    public String getTelnum() {
        return telnum;
    }

    public void setTelnum(String telnum) {
        this.telnum = telnum;
    }
    
    public Teacher(String username,String realname,String telnum, String address) {
        super();
       
        this.username = username;
        this.realname = realname;
        this.telnum = telnum;
        this.address=address;
        
        
    }
    
   /* public User(String username, String password,String email) {
        super();
        this.username = username;
        this.email = email;
        this.password = password;
    }*/
    public Teacher() {
        super();
        // TODO Auto-generated constructor stub
    }

}
