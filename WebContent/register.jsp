<%@page contentType="text/html;charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>用户注册</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="css/title.css">
<link rel="stylesheet" type="text/css" href="css/background.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap-theme.css">
</head>
<style type="text/css">
.container {
	width: 40%;
	margin-top: 50px;
}
</style>
<script type="text/javascript">
$("#check").click(function() {
	alert("1");
	$.post("queryuser.do", {username : $('#username').val()}, function(data) {
		if (data == "true") {
			$("#username").placeholder("（已被注册！）");
		} else {
			$("#username").placeholder("（未被注册！）");
		}
	    });
        });

</script>
<body>
	<marquee id="title" behavior="alternate" direction="left"
		scrollamount="2px" scrolldelay="1">游行侠</marquee>
	<!--导航栏-->
	<ul class="nav nav-tabs">

		<li role="presentation" class="dropdown"><a
			class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
			aria-haspopup="true" aria-expanded="false"> 首页 <span
				class="caret"></span>
		</a>
			<ul class="dropdown-menu">
				<li><a href="index.jsp">首页</a></li>
				<li><a href="map.html">行程</a></li>
			</ul></li>
		<li role="presentation" class="dropdown"><a
			class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
			aria-haspopup="true" aria-expanded="false"> 个人中心 <span
				class="caret"></span>
		</a>
			<ul class="dropdown-menu">
				<li><a href="chat.jsp">联系客服</a></li>
				<li><a href="video.html">我的视频</a></li>
				<li><a href="audio.html">我的音乐</a></li>
				<li><a href="identification.html">我的认证信息</a></li>
			</ul></li>
		<li role="presentation" class="dropdown"><a
			class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
			aria-haspopup="true" aria-expanded="false"> 用户交流 <span
				class="caret"></span>
		</a>
			<ul class="dropdown-menu">
				<li><a href="comnication.jsp">用户交流</a></li>
			</ul></li>
		<li role="presentation" class="dropdown" style="float: right"><a
			class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
			aria-haspopup="true" aria-expanded="false" id="Login"> 登录 <span
				class="caret"></span>
		</a></li>
		<li role="presentation" class="dropdown" style="float: right"><a
			class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
			aria-haspopup="true" aria-expanded="false"> 注册 <span
				class="caret"></span>
		</a>
			<ul class="dropdown-menu">
				<li><a href="register.jsp">注册</a></li>
			</ul></li>
	</ul>
	<div class="container">
		<form id="form1" name="form1" method="post"
			action="traveller.do?choose=register">
			<div id="register">
				<div id="text">用户注册</div>
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">@</span> <input
						type="text" name="username" id="username" class="form-control"
						placeholder="Username" aria-describedby="basic-addon1"> <span
						class="input-group-addon" id="basic-addon2" id="check">check</span>
				</div>
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">@</span> <input
						type="text" name="password" id="password" class="form-control"
						placeholder="password" aria-describedby="basic-addon1">
				</div>
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">@</span> <input
						type="text" class="form-control" placeholder="once password"
						aria-describedby="basic-addon1">
				</div>
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">@</span> <input
						type="text" name="telephone" class="form-control"
						placeholder="telephone" aria-describedby="basic-addon1">
				</div>
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Recipient's username" name="e_mail" id="e_mail"
						aria-describedby="basic-addon2" placeholder="e_mail"> <span
						class="input-group-addon" id="basic-addon2">@qq.com</span>
				</div>
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">@</span> <input
						type="text" name="youbian" class="form-control"
						placeholder="youbian" aria-describedby="basic-addon1">
				</div>
				<div class="btn-group" role="group" aria-label="...">
					<input type="submit" class="btn btn-default" value="Login"
						onclick="myFunction()"> <input type="reset"
						class="btn btn-default" value="Reset">
				</div>
			</div>
		</form>
	</div>
</body>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/js/npm.js"></script>
<script type="text/javascript" src="js/register.js"></script>
</html>