$(function(){
	$(".pics ul li").mouseover(function(){
		var index ;
		index = $(this).index();
		$(".pics ul li a").eq(index).stop().animate({marginTop: '-280px'}, "fast");
	});

	$(".pics ul li").mouseout(function(){
		var index ;
		index = $(this).index();
		$(".pics ul li a").eq(index).stop().animate({marginTop: '0px'}, "fast");
	});

	//获取菜单栏的高度
	var navHeight;
	navHeight = $(".nav").height();
	// alert("菜单栏高度"+navHeight);
	var scrollHeight;
	scrollHeight = $(body).scrollTop();
	// alert("滚动条的高度");

	// 获取滚动条到顶部的高度
	// 判断，如果滚动条据顶部的高度 大于 菜单栏的高度，则，将菜单栏变成透明
	// 判断，如果滚动条据顶部的高度 小于 菜单栏的高度，则，将菜单栏变成不透明

}); //END

