$(function ($) {
		//弹出登录
		$("#Login").hover(function () {
			$(this).stop().animate({
				opacity: '1'
			}, 600);
		}, function () {
			$(this).stop().animate({
				opacity: '0.6'
			}, 1000);
		}).on('click', function () {
			$("body").append("<div id='mask'></div>");
			$("#mask").addClass("mask").fadeIn("slow");
			$("#LoginBox").fadeIn("slow");
		});
		//
		//按钮的透明度
		$("#loginbtn").hover(function () {
			$(this).stop().animate({
				opacity: '1'
			}, 600);
		}, function () {
			$(this).stop().animate({
				opacity: '0.8'
			}, 1000);
		});
		//文本框不允许为空---按钮触发
		$("#loginbtn").on('click', function () {
			var username = $("#username").val();
			var password = $("#password").val();
			if (username == "" || username == undefined || username == null) {
				if (password == "" || password == undefined || password == null) {
					$(".warning").css({ display: 'block' });
					alert("请输入用户名")
				}
				else {
					$("#warn").css({ display: 'block' });
					$("#warn2").css({ display: 'none' });
				}
			}
			else {
				if (password == "" || password == undefined || password == null) {
					$("#warn").css({ display: 'none' });
					$(".warn2").css({ display: 'block' });
					alert("请输入密码")
				}
				else {
					$(".warning").css({ display: 'none' });
				}
			}
		});
		//文本框不允许为空---单个文本触发
		$("#username").on('blur', function () {
			var username = $("#username").val();
			if (username == "" || username == undefined || username == null) {
				$("#warn").css({ display: 'block' });
			}
			else {
				$("#warn").css({ display: 'none' });
			}
		});
		$("#username").on('focus', function () {
			$("#warn").css({ display: 'none' });
		});
		//
		$("#password").on('blur', function () {
			var username = $("#password").val();
			if (username == "" || username == undefined || username == null) {
				$("#warn2").css({ display: 'block' });
			}
			else {
				$("#warn2").css({ display: 'none' });
			}
		});
		$("#password").on('focus', function () {
			$("#warn2").css({ display: 'none' });
		});
		//关闭
		$(".close_btn").hover(function () { $(this).css({ color: 'black' }) }, function () { $(this).css({ color: '#999' }) }).on('click', function () {
			$("#LoginBox").fadeOut("fast");
			$("#mask").css({ display: 'none' });
		});
	});