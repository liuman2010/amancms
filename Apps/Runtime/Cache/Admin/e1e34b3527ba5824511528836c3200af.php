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
		<div class="col-sm-3"></div>
		<div class="col-sm-6"><h1 style='text-align:center;'><?php echo ($username); echo ($remark); ?>的权限列表</h1></div>
		<div class="col-sm-3"></div>
	</div>
	<div class="col-lg-12">
		<div class="col-sm-1"></div>
		<div class="col-sm-10"><hr></div>
		<div class="col-sm-1"></div>
	</div>
	<div class="col-sm-12">
			<form action="/admin.php/User/updateAccess" method='post'>
		<table class='table table-bordered  table-hover'>
			<tr>
				<th>节点ID号</th><th>等级</th><th>父ID</th><th>操作名</th><th>备注</th> <th>开启状态</th><th>拥有权限</th><th>操作</th>
			</tr>
			<input type="hidden" name='username' value='<?php echo ($username); ?>'>
			<input type="hidden" name='group_id' value='<?php echo ($group_id); ?>'>
			<?php if(is_array($nodeInfo)): $i = 0; $__LIST__ = $nodeInfo;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><tr>
					<td><?php echo ($list["id"]); ?></td>
					<td>
						<?php switch($list["level"]): case "1": ?><span class="label label-warning">项目</span><?php break;?>
							<?php case "2": ?><span class="label label-info">模块</span><?php break;?>
							<?php case "3": ?><span class="label label-success">操作</span><?php break;?>
							<?php default: ?> 无法判断<?php endswitch;?>
					</td>
					<td><?php echo ($list["pid"]); ?></td>
					<td><?php echo ($list["name"]); ?></td><td><?php echo ($list["title"]); ?></td> <td>
						<?php switch($list["status"]): case "1": ?>已开启<?php break;?>
							<?php case "0": ?>已关闭<?php break;?>
							<?php default: ?>无法判断状态<?php endswitch;?>
					</td>
					<td>
						<label for="isTrue" class='control-label'></label>
						<label>
					      <input type="checkbox" name="ids[]" id="isTrue" 
					         value="<?php echo ($list["id"]); ?>" <?php echo ($list["checked"]); ?>>&nbsp;是
					   </label>
					</td>
					<td>
						<?php switch($list["status"]): case "0": ?><a href="/admin.php/User/changeNodeStatus/username/<?php echo ($username); ?>/status/<?php echo ($list["status"]); ?>/id/<?php echo ($list["id"]); ?>" class='btn btn-success btn-xs'>开启</a><?php break;?>
							<?php case "1": ?><a href="/admin.php/User/changeNodeStatus/username/<?php echo ($username); ?>/status/<?php echo ($list["status"]); ?>/id/<?php echo ($list["id"]); ?>" class='btn btn-danger btn-xs'>关闭</a><?php break;?>
							<?php default: ?>无法判断状态<?php endswitch;?>
					</td>
				</tr><?php endforeach; endif; else: echo "" ;endif; ?>
		</table>
	</div>
	<div class="col-sm-12">
		<button type="submit" class="btn btn-success"><span class='glyphicon glyphicon-ok'></span> 保存</button>
		<a href="/admin.php/User/index" class="btn btn-danger"><span class='glyphicon glyphicon-remove'></span> 返回</a>
	</div>
	<div class="col-sm-12"><hr></div>
</form>