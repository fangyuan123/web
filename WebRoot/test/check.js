
	function show() 
   { 
    //弹出一个提示框 
    window.alert("hh"); 
   } 
   //将show方法绑定到按钮上 
   window.onload=function() 
   { 
    //定位到按钮 
    var buttonElement=document.forms[0].mybtn; 
    //动态绑定show方法 
    buttonElement.onclick=show; 
    //show如果加()则一加载网页就弹出提示框 
   }
   function validateForm() 
   { 
    var loginform=document.forms[1]; 
    var username=trim(loginform.username.value); 
    var password=trim(loginform.password.value); 
    var email=trim(loginform.email.value); 
//    alert("替代前长度："+username.length); 
//    username=trim(username); 
 //   alert("替代后长度："+username.length); 
    //判断用户名必填： 
    if(username.length==0) 
    { 
     alert("用户必填"); 
    } 
    else if(!/^[a-zA-Z0-9]+$/.test(username)) 
    { 
     alert("用户名必须是英文字母"); 
    } 
    else if(password.length==0) 
    { 
     alert("密码必填"); 
    } 
    else if(!/^[0-9]{6}$/.test(password)) 
    { 
     alert("密码必须为6位数字"); 
    } 
    else if(email.length==0) 
    { 
     alert("邮箱必填"); 
    } 
    else if(!/^\w+@\w+(\.\w+)+$/.test(email)) 
    { 
     alert("邮箱格式不正确"); 
    } 
    return false; 
   } 
   //自定义一个去空格的参数 
   function trim(s) 
   { 
    //s.REPLACE(正则表达式,替换的字符) 
    s=s.replace(/^\s*$/,""); 
    return s; 
   } 

   
   
   
   