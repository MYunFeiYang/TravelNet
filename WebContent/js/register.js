function myFunction(){
	var x,y,z;
var x=document.getElementById("username");
var y=document.getElementById("password");
var z=document.getElementById("e_mail");
if(x.value=="")
	{
	alert("用户名不能为空！");
	x.focus();
	return false;
	}
	if(y.value=="")
	{
	alert("密码不能为空！");
	y.focus();
	return false;
	}
	if(z.value=="")
	{
	alert("邮箱不能为空！");
	z.focus();
	return false;
	}
}//JavaScriptDocument