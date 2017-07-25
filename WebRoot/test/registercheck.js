function IsDigit(cCheck) 
{ 
return (('0'<=cCheck) && (cCheck<='9')); 
} 

function IsAlpha(cCheck) 
{ 
return ((('a'<=cCheck) && (cCheck<='z')) || (('A'<=cCheck) && (cCheck<='Z'))); 
} 

function IsValid() 
{ 
var struserName = reg.useruame.value; 
for (nIndex=0; nIndex<struserName.length; nIndex++) 
{ 
cCheck = struserName.charAt(nIndex); 
if (!(IsDigit(cCheck) || IsAlpha(cCheck))) 
{ 
return false; 
} 
} 
return true; 
} 
function chkEmail(str) 
{ 
return str.search(/[\w\-]{1,}@[\w\-]{1,}\.[\w\-]{1,}/)==0?true:false 
} 

function docheck() 
{ 
if(reg.username.value=="") 
{ 
alert("请填写用户名"); 
return false; 
}
else if(!IsValid()) 
{ 
alert("用户名只能由字母和数字组成"); 
return false; 
} 
else if(reg.password.value=="") 
{ 
alert("请填写密码"); 
return false; 
}
else if(reg.password.value.length<6||reg.password.value.length>10)
{
	alert("密码长度为6~10个字符");
}
else if(reg.cpassword.value=="") 
{ 
alert("请确认密码"); 
return false; 
} 
else if(reg.password.value != reg.cpassword.value) 
{ 
alert("两次密码不一致"); 
return false; 
} 
else if(reg.email.value =="") 
{ 
alert("请填写邮箱"); 
return false; 
} 
else if(!chkEmail(reg.email.value)) 
{ 
alert("请填写有效的Email地址"); 
return false; 
} 
else 
{ 
return true; 
} 
} 