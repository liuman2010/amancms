<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="x-ua-compatible" content="ie=edge">
   <title>诺信网站管理系统 V2.0</title>
   <script type="text/javascript" src="/Public/static/js/jquery.min.js"></script>
   <script type="text/javascript" src="/Public/static/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="/Public/static/css/main.css" />
   <link rel="stylesheet" type="text/css" href="/Public/static/css/bootstrap.min.css" />
</head>
<body>

<link rel="stylesheet" type="text/css" href="/Public/static/css/supersized.css" />
<link rel="stylesheet" type="text/css" href="/Public/static/css/login.css" />
<style>
	body{
		color:#fff;
	}
</style>
<div class="page-container">
	<div class="main_box">
		<div class="login_box">
			<div class="login_logo">
				<h1>诺信网站管理系统后台登录</h1>
			</div>
		
			<div class="login_form">
				<form action="/admin.php/Public/checkLogin" id="login_form" method="post">
					<div class="form-group">
						<label for="j_username" class="t">用户名：</label> 
						<input id="j_username"  name="username" type="text" class="form-control x319 in" >
					</div>
					<div class="form-group">
						<label for="j_password" class="t">密　码：</label> 
						<input id="password"  name="password" type="password" 
						class="password form-control x319 in">
					</div>
					<div class="form-group">
						<label for="j_captcha" class="t">验证码：</label>
						 <input id="j_captcha" name="code" type="text" class="form-control x164 in">
						<img id="captcha_img" alt="点击更换" title="点击更换" onclick="this.src='/admin.php/Public/verify/'+Math.random()" src="/admin.php/Public/verify" class="m">
					</div>
					<div class="form-group">
						<label class="t"></label>
						<label for="j_remember" class="m">
						<input id="j_remember" type="checkbox" name='remember' value="true">&nbsp;记住登陆账号!</label>
					</div>
					<div class="form-group space">
						<label class="t"></label>　　　
						<input type="submit"  id="submit_btn"  class="btn btn-primary btn-lg" value="&nbsp;登&nbsp;录&nbsp;" />  
						<input type="reset" value="&nbsp;重&nbsp;置&nbsp;" class="btn btn-danger btn-lg" />
					</div>
				</form>
			</div>
		</div>
		<div class="bottom">Copyright &copy; 2014 - 2016 诺信网站管理系统 V3.0 正式版</div>
	</div>
</div>

<!-- Javascript -->

<script src="/Public/static/js/supersized.3.2.7.min.js"></script>
<script>
	
	jQuery(function($){

    $.supersized({

        // Functionality
        slide_interval     : 4000,    // Length between transitions
        transition         : 1,    // 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
        transition_speed   : 1000,    // Speed of transition
        performance        : 1,    // 0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)

        // Size & Position
        min_width          : 0,    // Min width allowed (in pixels)
        min_height         : 0,    // Min height allowed (in pixels)
        vertical_center    : 1,    // Vertically center background
        horizontal_center  : 1,    // Horizontally center background
        fit_always         : 0,    // Image will never exceed browser width or height (Ignores min. dimensions)
        fit_portrait       : 1,    // Portrait images will not exceed browser height
        fit_landscape      : 0,    // Landscape images will not exceed browser width

        // Components
        slide_links        : 'blank',    // Individual links for each slide (Options: false, 'num', 'name', 'blank')
        slides             : [    // Slideshow Images
                                 {image : '/Public/static/backgrounds/0.jpg'},
                                 {image : '/Public/static/backgrounds/1.jpg'},
                                 {image : '/Public/static/backgrounds/2.jpg'},
								 {image : '/Public/static/backgrounds/3.jpg'}
                       ]

    });

});





</script>
</body>
</html>