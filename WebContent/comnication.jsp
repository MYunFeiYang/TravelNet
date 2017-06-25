<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>用户交流</title>
</head>
<link href="umeditor/themes/default/css/umeditor.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap-theme.css">
<style type="text/css">
.container {
	width: 60%;
}
</style>
<body>
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
				<li><a href="background.html">我的背景色</a></li>
				<li><a href="identification.html">我的认证信息</a></li>
			</ul></li>
		<li role="presentation" class="dropdown"><a
			class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
			aria-haspopup="true" aria-expanded="false"> 关于我们 <span
				class="caret"></span>
		</a>
			<ul class="dropdown-menu">
				<li><a href="index.jsp">首页</a></li>
				<li><a href="map.html">行程</a></li>
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
			aria-haspopup="true" aria-expanded="false"> 注册 <span
				class="caret"></span>
		</a>
			<ul class="dropdown-menu">
				<li><a href="register.jsp">注册</a></li>
			</ul></li>
	</ul>
	<!--用户交流-->
	<form>
		<div class="container">
			<div class="form-group">
				<h1>comnication</h1>
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">@</span> <input
						type="text" class="form-control" placeholder="Username"
						aria-describedby="basic-addon1">
				</div>
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">@</span> <input
						type="text" class="form-control" placeholder="title"
						aria-describedby="basic-addon1">
				</div>
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Recipient's username" aria-describedby="basic-addon2">
					<span class="input-group-addon" id="basic-addon2">@qq.com</span>
				</div>

				<script type="text/plain" id="myEditor"
					style="width: 100%; height: 8rem;"></script>

			</div>
			<div class="form-group">
				<label for="exampleInputFile">File input</label> <input type="file"
					id="exampleInputFile">
				<p class="help-block">Example block-level help text here.</p>
			</div>

			<div class="checkbox">
				<label> <input type="checkbox"> Check me out
				</label>
			</div>
			<button type="submit" class="btn btn-default">Submit</button>

			<button type="reset" class="btn btn-default">reset</button>
		</div>
	</form>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="bootstrap/js/npm.js"></script>
	<!-- umeditor js -->
	<script type="text/javascript" src="umeditor/third-party/jquery.min.js"></script>
	<script type="text/javascript"
		src="umeditor/third-party/template.min.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="umeditor/umeditor.config.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="umeditor/umeditor.min.js"></script>
	<script type="text/javascript" src="umeditor/lang/zh-cn/zh-cn.js"></script>
	<script type="text/javascript">
		$(function() {
			// 初始化消息输入框
			var um = UM.getEditor('myEditor');
			// 使昵称框获取焦点
			$('#nickname')[0].focus();
		});
	</script>
</body>
</html>