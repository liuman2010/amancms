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


<div class="col-lg-11">
	<div class="col-lg-12">
		<table class='table table-bordered  table-hover'>
			<caption><h1>用户组列表</h1></caption>
			<tr><th>组ID号</th><th>组名</th><th>备注</th><th>状态</th><th>创建日期</th><th>操作</th></tr>
			<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><tr>
					<td><?php echo ($list["id"]); ?></td>
					<td><?php echo ($list["name"]); ?></td>
					<td><?php echo ($list["remark"]); ?></td>
					<td>
						<?php switch($list["status"]): case "1": ?>已开启<?php break;?>
							<?php case "0": ?>已禁用<?php break;?>
							<?php default: ?>无法判断状态<?php endswitch;?>
					</td>
					<td><?php echo (date("Y-m-d",$list["ctime"])); ?></td>
					<td>
						<a href="/admin.php/User/modAccess/username/<?php echo ($list["name"]); ?>/group_id/<?php echo ($list["id"]); ?>/remark/<?php echo ($list["remark"]); ?>" class='btn btn-warning btn-xs'>编辑权限</a> | 
						<a href="/admin.php/User/modGroup/id/<?php echo ($list["id"]); ?>" class='btn btn-info btn-xs'>修改信息</a> | 
						<a href="/admin.php/User/delGroup/id/<?php echo ($list["id"]); ?>" class='btn btn-danger btn-xs'>删除</a>
					</td>
				</tr><?php endforeach; endif; else: echo "" ;endif; ?>
		</table>
	</div>
</div>