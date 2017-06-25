/**
 * 
 */
$(document).ready(function() {
		$(".content ul").hide();
		$("#daohang li").hover(function() {
			$(this).toggleClass('hover');
			$(".content").find("ul").eq($(this).index()).show();
		}, function() {
			$(this).toggleClass('hover');
			$(".content").find("ul").eq($(this).index()).hide();
		});
		$(".content ul").hover(function() {
			$(this).show();
		}, function() {
			$(this).hide();
		});
	});