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


<div class="col-sm-12">
		<h1>添加一个新用户</h1>
		<hr>
	<div class="col-sm-6">
		<form action='/admin.php/User/insert' method='post' class="form-horizontal" role="form">

		   <div class="form-group">
		      <label for="username" class="col-sm-3 control-label">用户名(必填)</label>
		      <div class="col-sm-6">
		         <input type="text" class="form-control" name='username' id="username" 
		            placeholder="隔壁老王">
		      </div>
		   </div>

			<div class="form-group">
		      <label for="lastname" class="col-sm-3 control-label">用户组(必选)</label>
			      <div class="col-sm-6">
			         <select name="groupid" id="" class='form-control'>
			         	<?php echo ($options); ?>
			         </select>
			      </div>
		   </div>
		   
		   <div class="form-group">
		      <label for="password" class="col-sm-3 control-label">密码(必填)</label>
		      <div class="col-sm-6">
		         <input type="password" class="form-control" name='password' id="password" 
		            placeholder="请输入密码">
		      </div>
		   </div>

		   <div class="form-group">
		      <label for="repassword" class="col-sm-3 control-label">重复密码</label>
		      <div class="col-sm-6">
		         <input type="password" class="form-control" name='repassword' id="repassword" 
		            placeholder="再次输入密码">
		      </div>
		   </div>
			

			<div class="form-group">
		      <label for="sex" class="col-sm-3 control-label">性别(可选)</label>
		       <div class="radio col-sm-8">
				   <div class="col-sm-2">
					   	<label>
					      <input type="radio" name="sex" id="sex" 
					         value="1" checked> 男
					   </label>
				   </div>

				   <div class="col-sm-2">
					   	<label>
					      <input type="radio" name="sex" id="sex" 
					         value="0"> 女
					   </label>
				   </div>
				</div>
		   </div>
			
			<div class="form-group">
		      <label for="email" class="col-sm-3 control-label">邮箱(可选)</label>
			      <div class="col-sm-6">
			         <input type="text" class="form-control" name='email' placeholder='隔壁老王@qq.com' id="email">
			      </div>
		   </div>

			


		   <div class="form-group">
		      <div class="col-sm-offset-2 col-sm-10">
		         <button type="submit" class="btn btn-success"><span class='glyphicon glyphicon-ok'></span> 提交</button>
		         <button type="reset" class="btn btn-info"><span class='glyphicon glyphicon-refresh'></span> 重置</button>
		      </div>
		   </div>

		</form>
	</div>
</div>