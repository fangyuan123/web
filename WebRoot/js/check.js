function IsDigit(cCheck) { 
	return (('0'<=cCheck) && (cCheck<='9')); 
} 

function IsAlpha(cCheck) { 
	return ((('a'<=cCheck) && (cCheck<='z')) || (('A'<=cCheck) && (cCheck<='Z'))); 
} 

function IsValid() { 
	var struserName =document.getElementById("username").value; 
    for (nIndex=0; nIndex<struserName.length; nIndex++) { 
    	cCheck = struserName.charAt(nIndex); 
    	if (!(IsDigit(cCheck) || IsAlpha(cCheck))) { 
    		return false; 
    	} 
    } 
    return true; 
} 
function checkemail(str){
	return str.search(/[\w\-]{1,}@[\w\-]{1,}\.[\w\-]{1,}/)==0?true:false; 
}

function checkpsw(){
	var strupaw=document.getElementById("password1").value; 
    for (nIndex=0; nIndex<strupaw.length; nIndex++) { 
    	cCheck = strupaw.charAt(nIndex); 
    	if (!(IsDigit(cCheck) || IsAlpha(cCheck))) { 
    		return false; 
    	} 
    } 
    return true; 
}

function check(){
	if(document.getElementById("username").value.length==0){
		alert ("用户名不能为空！");
		return false;
	}
	else if(!IsValid(document.getElementById("username").value)){
		alert("用户名只能由字母和数字组成！");
		return false;
	}
	else if(document.getElementById("email").value.length==0){
		alert("请填写邮箱！");
		return false;
	}
	else if(!checkemail(document.getElementById("email").value)){
		alert("请输入有效的邮箱地址！");
		return false;
	}
	else if(document.getElementById("password1").value.length==0){
		alert("请填写登陆密码！");
		return false;
	}
	else if(document.getElementById("password1").value.length<6||document.getElementById("password1").value.length>10){
		alert("密码长度只能为6-10个字符!");
		return false;
	}
	else if(!checkpsw()){
		alert("密码只能由字母和数字组成！");
		return false;
	}
	else if(document.getElementById("password2").value.length==0){
		alert("请确认密码！");
		return false;
	}
	else if(document.getElementById("password1").value!=document.getElementById("password2").value){
		alert ("两次密码不一致！");	
		return false;
	}
	else{
		alert ("注册成功，请登录！");	
		return true;
	}
}

	
