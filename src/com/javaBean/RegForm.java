package com.javaBean;
import java.util.Map;
import java.util.HashMap;
public class RegForm {
	private String username;///用户名
    private String email;//邮箱
    private String password;//密码
    private String password1;//验证密码
    
    
    private Map<String, String> errors = new HashMap<String, String>();

    public Map<String, String> getErrors() {
        return errors;
    }

    public void setErrors(Map<String, String> errors) {
        this.errors = errors;
    }

    public boolean isValidate(){
        boolean flag = true ;
        if(this.username.isEmpty()){
            flag = false ;
            this.errors.put("errname","请输入用户名。") ;
        }
        else if(!this.username.matches("\\w{6,15}")){
            flag = false ;
            this.username = "" ;    // 清空原本的username内容
            this.errors.put("errname","用户名是6~15位的字母或数字。") ;
        }
        
        if(this.email.isEmpty()){
            flag = false ;
            this.errors.put("erremail","请输入email。") ;
        }
        else if(!this.email.matches("\\w+@\\w+\\.\\w+\\.?\\w*")){
            flag = false ;
            this.email = "" ;    // 清空原本的email内容
            this.errors.put("erremail","输入的email地址不合法。") ;
        }
        
        if(this.password.isEmpty()){
        	 flag = false ;
            this.errors.put("errpsw1","请设置登陆密码。") ;
        }
        else if(!this.password.matches("\\w{6,15}")){
            flag = false ;
            this.password = "" ;    // 清空原本的pasword1内容
            this.errors.put("errpsw1","密码是6~15位的字母或数字。") ;
        }
        
        if(this.password1.isEmpty()){
       	    flag = false ;
            this.errors.put("errpsw2","请确认密码。") ;
        }
        else if(!this.password.equals(password1)){
        	flag = false ;
        	this.errors.put("errpsw2","两次密码不一致。") ;
        }
        if (flag==true) {
			
		}
        return flag ;
    }
    
  /* public String getErrorMsg(String key){
        String value = this.errors.get(key) ;
        return value==null?"":value ;
    }*/


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

    public void setPassword1(String password) {
        this.password1 = password;
    }
}

