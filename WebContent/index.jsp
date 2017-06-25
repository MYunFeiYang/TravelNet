<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<title>游行侠</title>
</head>
<link rel="stylesheet" type="text/css" href="css/title.css">
<link rel="stylesheet" type="text/css" href="css/background.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap-theme.css">
<style type="text/css">
.myCarousel {
	width: 60%;
	margin-bottom: 100px;
}

img {
	width: 100%;
}

.carousel-caption {
	margin-top: 20px;
}

#LoginBox {
	display: none;
}
</style>
<body id="body">
	<marquee id="title" behavior="alternate" direction="left"
		scrollamount="3px" scrolldelay="1">游行侠</marquee>
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
	<!--站内搜索-->
	<div class="container">
		<form class="navbar-form navbar-left" role="search">
			<button type="submit" class="btn btn-default">Submit</button>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<!-- 改变背景色 -->
		<select name="select" class="btn btn-default btn-lg dropdown-toggle"
			style="margin-top: 5px; float:right; margin-right: 50px;"
			onclick="changeBgImg(this)">
			<option value="images/background.jpg"
				style="background-image: url(images/background.jpg)">one</option>
			<option value="images/background1.jpg"
				style="background-image: url(images/background.jpg)">two</option>
			<option value="images/background2.jpg" selected="selected"
				style="background-image: url(images/background.jpg)">three</option>
			<option value="images/background3.jpg"
				style="background-image: url(images/background.jpg)">four</option>
			<option value="images/background4.jpg"
				style="background-image: url(images/background.jpg)">five</option>
			<option value="images/background5.jpg"
				style="background-image: url(images/background.jpg)">six</option>
		</select>
	</div>
	<!-- 用户登录 -->
	<div id="LoginBox">
		<form action="traveller.do?choose=login" method="post">
			<div class="row1">
				登录DIY账号窗口<a href="javascript:void(0)" title="关闭窗口" class="close_btn"
					id="closeBtn">×</a>
			</div>
			<div class="row">
				用户名: <span class="inputBox"> <input type="text" id="username"
					placeholder="账号" />
				</span><a href="javascript:void(0)" title="提示" class="warning" id="warn">*</a>
			</div>
			<div class="row">
				密&nbsp;&nbsp;&nbsp;&nbsp;码: <span class="inputBox"> <input
					type="text" id="password" placeholder="密码" />
				</span><a href="javascript:void(0)" title="提示" class="warning" id="warn2">*</a>
			</div>
			<div class="row">
				<input type="submit" id="loginbtn" value="登录">
			</div>
		</form>
	</div>
	<!-- 轮播图片 -->
	<div class="container myCarousel">
		<div id="carousel-example-generic" class="carousel slide">
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
				<li data-target="#carousel-example-generic" data-slide-to="4"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/01.jpg" />
					<div class="carousel-caption">
						<h3>游行1</h3>
						<p></p>
					</div>
				</div>
				<div class="item">
					<img src="images/02.jpg" />
					<div class="carousel-caption">
						<h3>游行2</h3>
						<p></p>
					</div>
				</div>
				<div class="item">
					<img src="images/03.jpg" />
					<div class="carousel-caption">
						<h3>游行3</h3>
						<p></p>
					</div>
				</div>
				<div class="item">
					<img src="images/04.jpg" />
					<div class="carousel-caption">
						<h3>游行4</h3>
						<p></p>
					</div>
				</div>
				<div class="item">
					<img src="images/05.jpg" />
					<div class="carousel-caption">
						<h3>游行5</h3>
						<p></p>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#carousel-example-generic"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<script>
		//设置图片切换时间，默认是5秒；  
		$(".carousel").carousel({
			interval : 2000
		})
	</script>
	<!-- 设置页脚 -->
	<div id="footer" class="container">
		<nav class="navbar navbar-default navbar-fixed-bottom">
			<div class="navbar-inner navbar-content-center">
				<p class="text-muted credit"
					style="text-align: center; height: 20px; line-height: 20px">
					Written by <a href="mailto:2728363142@qq.con">YunFeiYang</a>.<br>
				</p>
				<p class="text-muted credit"
					style="text-align: center; height: 20px; line-height: 20px">
					about us <a href="about_us.html">about us</a>.<br>
				</p>

			</div>
		</nav>
	</div>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="bootstrap/js/npm.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
	<script type="text/javascript" src="js/background.js"></script>
</body>
</html>