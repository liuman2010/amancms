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
	<div class="col-sm-5">
		<h1>添加栏目</h1>
		<hr>
			<form action='/admin.php/Column/insert' method='post' class="form-horizontal" role="form">
				<input type="hidden" name='type' value='add'>
			   <div class="form-group">
			      <label for="firstname" class="col-sm-4 control-label">选择父栏目</label>
			      <div class="col-sm-6">
			      	<!-- 这是老豆的路径 -->
				      <select class="form-control" name='pid'>
					        <option value="0">|--根目录--</option>
					      	<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><option value="<?php echo ($list["id"]); ?>">|-<?php echo ($list["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
				      </select>
			      </div>
			      
			   </div>

			   <div class="form-group">
			      <label for="firstname" class="col-sm-4 control-label">栏目名称</label>
			      <div class="col-sm-6">
			         <input type="text" class="form-control" name='title' id="firstname" 
			            placeholder="请输入栏目名称">
			      </div>
			   </div>

			   <div class="form-group">
			      <label for="firstname" class="col-sm-4 control-label">栏目描述</label>
			      <div class="col-sm-8">
			          <textarea class="form-control" name='description' rows="3" placeholder="请输入栏目介绍"></textarea>
			      </div>
			   </div>
  

			   <div class="form-group">
			      <div class="col-sm-offset-2 col-sm-12">
			          <div class="checkbox">
					      	<div class="col-sm-4"> 
					      		<label for="remeber"></label>
					      		<label >
					      			<input type="checkbox" <?php echo (session('checked')); ?> name='remeber' value='true'>记住父栏目
					      		</label> 
					      	</div>

					      	<div class="col-sm-4"> 
					      		<label for="remeber"></label>
					      		<label >
					      			<input type="checkbox" checked name='display' value='1'>是否显示
					      		</label> 
					      	</div>
					   </div>
			      </div>
			   </div>

			   <div class="form-group">
			      <div class="col-sm-offset-2 col-sm-10">
			         <button type="submit" class="btn btn-primary">添加</button>
			      </div>
			   </div>

			</form>
		
	</div>

</div>