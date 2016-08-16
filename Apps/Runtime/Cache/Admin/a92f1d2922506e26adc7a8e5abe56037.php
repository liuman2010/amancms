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
		<div class="col-sm-4"></div>
		<div class="col-sm-4"><h1 style='text-align:center;'>用户列表</h1></div>
		<div class="col-sm-4"></div>
	</div>
	<div class="col-lg-12">
		<div class="col-sm-1"></div>
		<div class="col-sm-10"><hr></div>
		<div class="col-sm-1"></div>
	</div>
	<div class="col-lg-12">
		<table class='table table-bordered  table-hover'>
			<tr>
				<th>用户名</th><th>性别</th><th>所属组别</th><th>登录次数</th><th>最后登录时间</th><th>最后登录IP</th><th>最后登录地区</th><th>注册日期</th><th>操作</th>
				
			</tr>
			<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><tr>
					<td><?php echo ($list["username"]); ?></td>

					<td>
						<?php switch($list["sex"]): case "0": ?>女<?php break;?>
							<?php case "1": ?>男<?php break;?>
							<?php default: ?>无法判断性别<?php endswitch;?>
					</td>

					<td>
						<?php switch($list["groupid"]): case "1": ?>管理员<?php break;?>
							<?php case "2": ?>网站编辑<?php break;?>
							<?php case "3": ?>客服<?php break; endswitch;?>
					</td>

					<td><?php echo ($list["num"]); ?></td> 

					<td>
						
						<?php switch($list["last_time"]): case "0": ?>新注册用户<?php break;?>
								<?php default: echo (date("Y-m-d H:i:s",$list["last_time"])); endswitch;?>
					</td> 

				<td><?php echo ($list["last_ip"]); ?></td> 
				<td><?php echo ($list["last_area"]); ?></td> 

				<td><?php echo (date("Y-m-d",$list["ctime"])); ?></td>

				<td><a class='btn btn-warning btn-xs' href="/admin.php/User/changeStatus/id/<?php echo ($list["id"]); ?>/status/<?php echo ($list["status"]); ?>" >
						<?php switch($list["status"]): case "0": ?>恢复<?php break;?>
							<?php case "1": ?>禁用<?php break;?>
							<?php default: ?>无法判断状态<?php endswitch;?>
					</a> | <a href="/admin.php/User/del/id/<?php echo ($list["id"]); ?>" class='btn btn-danger btn-xs'>删除</a>
				</td>

			</tr><?php endforeach; endif; else: echo "" ;endif; ?>
		</table>
	</div>