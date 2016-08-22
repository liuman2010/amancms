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

<form action="/admin.php/Index/setConfig" method='post' >
<div class="col-sm-12">
	<div class="col-sm-1"></div>
	<div class="col-sm-8">
		<table class="table table-bordered">
		   <caption><h3><span class='label label-success'>基本配置</span></h3></caption>
		   <thead>
		      <tr>
		         <th>配置项</th>
		         <th>配置值</th>
		      </tr>
		   </thead>
		   <tbody>
		      <tr>
		         <td><h4>网站域名:</h4></td>
		         <td><input type="text" class="form-control" name='DOMAINS' value="<?php echo ($data["DOMAINS"]); ?>"></td>
		      </tr>

		      <tr>
		         <td><h4>IP地址:</h4></td>
		         <td><input type="text" class="form-control" name='IP_ADDER' value="<?php echo ($data["IP_ADDER"]); ?>"></td>
		      </tr>	

		      <tr>
		         <td><h4>前台默认模板:</h4></td>
		         <td><input type="text" class="form-control" name='DEFAULT_TPL' value="<?php echo ($data["DEFAULT_TPL"]); ?>"></td>
		      </tr>	

		      <tr>
		         <td><h4>开启静态缓存:</h4></td>
		         <td><input type="text" class="form-control" name='HTML_CACHE_ON' value="<?php echo ($data["HTML_CACHE_ON"]); ?>"></td>
		      </tr>	
		      
		     <tr>
		         <td><h4>缓存有效期(秒):</h4></td>
		         <td><input type="text" class="form-control" name='HTML_CACHE_TIME' value="<?php echo ($data["HTML_CACHE_TIME"]); ?>"></td>
		      </tr>	
			<tr>
		         <td><h4>缓存文件后缀:</h4></td>
		         <td><input type="text" class="form-control" name='HTML_FILE_SUFFIX' value="<?php echo ($data["HTML_FILE_SUFFIX"]); ?>"></td>
		      </tr>	



		   </tbody>
		</table>
	</div>
</div>









<div class="col-sm-12">
	<div class="col-sm-1"></div>
	<div class="col-sm-8">
<table class="table table-bordered">
		   <caption><h3><span class='label label-success'>链接配置</span></h3></caption>
		   <thead>
		      <tr>
		         <th>配置项</th>
		         <th>配置值</th>
		      </tr>
		   </thead>
		   <tbody>
		      <tr>
		         <td><h4>链接类型:</h4></td>
		         <td><input type="text" class="form-control" name='DB_TYPE' value="<?php echo ($data["DB_TYPE"]); ?>"></td>
		      </tr>
		      <tr>
		         <td><h4>服务器:</h4></td>
		         <td><input type="text" class="form-control" name='DB_HOST' value="<?php echo ($data["DB_HOST"]); ?>"></td>
		      </tr>

		      <tr>
		         <td><h4>用户名:</h4></td>
		         <td><input type="text" class="form-control" name='DB_USER' value="<?php echo ($data["DB_USER"]); ?>"></td>
		      </tr>	

		      <tr>
		         <td><h4>数据库名:</h4></td>
		         <td><input type="text" class="form-control" name='DB_NAME' value="<?php echo ($data["DB_NAME"]); ?>"></td>
		      </tr>	

		      <tr>
		         <td><h4>密码:</h4></td>
		         <td><input type="text" class="form-control" name='DB_PWD' value="<?php echo ($data["DB_PWD"]); ?>"></td>
		      </tr>

		      <tr>
		         <td><h4>端口:</h4></td>
		         <td><input type="text" class="form-control" name='DB_ROOT' value="<?php echo ($data["DB_ROOT"]); ?>"></td>
		      </tr>

		      <tr>
		         <td><h4>前缀:</h4></td>
		         <td><input type="text" class="form-control" name='DB_PREFIX' value="<?php echo ($data["DB_PREFIX"]); ?>"></td>
		      </tr>

		      <tr>
		         <td><h4>链接编码:</h4></td>
		         <td><input type="text" class="form-control" name='DB_CHARSET' value="<?php echo ($data["DB_CHARSET"]); ?>"></td>
		      </tr>

		      <tr>
		         <td><h4>调试模式:</h4></td>
		               <td>
		         	<?php switch($data["DB_DEBUG"]): case "true": ?><label>
						      <input type="radio" name="DEBUG" id="DEBUG" 
						         value="1" checked> 开启
						   </label>
						   	<label>
						      <input type="radio" name="DEBUG" id="DEBUG" 
						         value="0"> 关闭
						   </label><?php break;?>
		         		<?php default: ?>
						   	<label>
						      <input type="radio" name="DEBUG" id="DEBUG" 
						         value="1" > 开启
						   </label>
						   	<label>
						      <input type="radio" name="DEBUG" id="DEBUG" 
						         value="0" checked> 关闭
						   </label><?php endswitch;?>
					</td>
		      </tr>

		   </tbody>
		</table>
	</div>
</div>





<div class="col-sm-12">
	<div class="col-sm-1"></div>
	<div class="col-sm-8">
		<table class="table table-bordered ">
		   <caption><h3><span class='label label-success'>上传设置</span></h3></caption>
		   <thead>
		      <tr>
		         <th>配置项</th>
		         <th>配置值</th>
		      </tr>
		   </thead>
		   <tbody>

		       <tr>
		         <td><h4>水印设置:</h4></td>
		         <td>
					   	
					   <?php switch($data["WATER_MARK"]): case "1": ?><label>
							      <input type="radio" name="WATER_MARK" id="WATER_MARK" 
							         value="1" checked> 开启
							   </label>
							   	<label>
							      <input type="radio" name="WATER_MARK" id="WATER_MARK" 
							         value="0"> 关闭
							   </label><?php break;?>

							<?php case "0": ?><label>
							      <input type="radio" name="WATER_MARK" id="WATER_MARK" 
							         value="1" > 开启
							   </label>
							   	<label>
							      <input type="radio" name="WATER_MARK" id="WATER_MARK" 
							         value="0" checked> 关闭
							   </label><?php break; endswitch;?>
				</td>
		      </tr>
		      <tr>
		         <td><h4>水印位置:</h4></td>
		         <td>
		         	<p>
		         		<label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="WATER_POSITION" id="WATER_POSITION" value="7">顶部左上</label><label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="WATER_POSITION" id="WATER_POSITION" value="8">顶部居中</label><label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="WATER_POSITION" id="WATER_POSITION" value="9">顶部右上</label>
		         	</p>
		         	<p>
		         		<label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="WATER_POSITION" id="WATER_POSITION" value="4">中部左边</label><label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="WATER_POSITION" id="WATER_POSITION" value="5">中部居中</label><label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="WATER_POSITION" id="WATER_POSITION" value="6">中部右边</label>
		         	</p>
		         	<p>
		         		<label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="WATER_POSITION" id="WATER_POSITION" value="1">底部左边</label><label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="WATER_POSITION" id="WATER_POSITION" value="2">底部居中</label><label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="WATER_POSITION" id="WATER_POSITION" value="3" checked>底部右边</label>
		         	</p>
		         </td>
		      </tr>
		      <tr>
		         <td><h4>允许上传的类型:</h4></td>
		         <td><input type="text" class="form-control" name='ALLOW_TYPE' value="jpg|gif|png"></td>
		      </tr>

		      <tr>
		         <td><h4>缩略图宽度:</h4></td>
		         <td><input type="text" class="form-control" name='IMG_WIDTH' value="<?php echo ($data["IMG_WIDTH"]); ?>"></td>
		      </tr>	

		      <tr>
		         <td><h4>缩略图高度:</h4></td>
		         <td><input type="text" class="form-control" name='IMG_HEIGHT' value="<?php echo ($data["IMG_HEIGHT"]); ?>"></td>
		      </tr>	

		      <tr>
		         <td><h4>最大上传限制(Kb):</h4></td>
		         <td><input type="text" class="form-control" name='MAX_SIZE' value="<?php echo ($data["MAX_SIZE"]); ?>"></td>
		      </tr>	
				
		   </tbody>
		</table>
	</div>
</div>







<div class="col-sm-12"><br><br></div>
<div class="col-sm-12 submit" style=' width: 100%;position: fixed;bottom: 0px;left: 0px;margin-bottom: 5px;'>
	<div class="col-sm-1"></div>
	<div class="col-sm-2">
		<button class='btn btn-success'>提交修改</button>　　<a href="/admin.php/Index/" class='btn btn-danger'>返回</a>
	</div>
</div>

<script>
	
</script>
	
</form>