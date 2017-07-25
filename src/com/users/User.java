package com.users;

public class User {
	private int id;
    private String username;///用户名
    private String email;//邮箱
    private String password;//密码
    private String password1;//验证密码
    private String realname;
    private String uclass;
    private String num;
    
    
    
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
    
    public String getPassword1() {
        return password1;
    }

    public void setPassword1(String password1) {
        this.password1 = password1;
    }
    
    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }
    
    public String getUclass() {
        return uclass;
    }

    public void setUclass(String uclass) {
        this.uclass = uclass;
    }
    
    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }
    
    public User(String username,String realname,String num, String uclass) {
        super();
       
        this.username = username;
        this.realname = realname;
        this.num = num;
        this.uclass=uclass;
        
        
    }
    
    public User(String username, String password,String email) {
        super();
        this.username = username;
        this.email = email;
        this.password = password;
    }
    public User() {
        super();
        // TODO Auto-generated constructor stub
    }
}
