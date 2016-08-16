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


<div class="col-sm-10">
	<h1>添加一个用户组</h1>
	<hr>
	<div class="col-sm-4">
		<form action='/admin.php/User/insertGroup' method='post' class="form-horizontal" role="form">

		   <div class="form-group">
		      <label for="name" class="col-sm-3">组名：</label>
		      <div class="col-sm-9">
		         <input type="text" class="form-control" name='name' id="name" 
		            placeholder="输入组名 例如:webadmin">
		      </div>
		   </div>
			
			<div class="form-group">
		      <label for="remark" class="col-sm-3">备注：</label>
		      <div class="col-sm-9">
		         <input type="text" class="form-control" name='remark' id="remark" 
		            placeholder="输入备注 例如:管理员">
		      </div>
		   </div>

		   <div class="form-group">
		      <label for="status" class="col-sm-3">状态：</label>
			       <div class="col-sm-3">
						   	<label>
						      <input type="radio" name="status" id="status" 
						         value="1" checked> 开启
						   </label>
					   </div>

					   <div class="col-sm-3">
						   	<label>
						      <input type="radio" name="status" id="status" 
						         value="0"> 关闭
						   </label>
					</div>
		   </div>


		   <div class="form-group">
		      <div class="col-sm-11">
		      	<div class="col-sm-3"></div>
		      	<div class="col-sm-4">
			         <button type="submit" class="btn btn-success"><span class='glyphicon glyphicon-ok'></span> 提交</button>
		      	</div>
		      	<div class="col-sm-4">
			         <button type="reset" class="btn btn-info"><span class='glyphicon glyphicon-refresh'></span> 重置</button>
		      	</div>
		      </div>
		   </div>

		</form>
	</div>
</div>