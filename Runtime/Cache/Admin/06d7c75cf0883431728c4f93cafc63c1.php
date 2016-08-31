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
		<div class="col-sm-4">
			<h1>栏目列表</h1>
		</div><div class="col-sm-4"></div>
	</div>
	<div class="col-sm-12">
		<div class="col-sm-11">
				<form action="/admin.php/Column/del" method='post' >
				<table class='table   table-bordered  table-hover'>
						<caption></caption>
						<tr>
							<th><a href="javascript:void(0);" id='selectAll'>全选</a>/<a href="javascript:void(0);" class='un_select'>反选</a></th><th>栏目名称</th><th>栏目简介</th><th>是否显示</th><th>创建时间</th><th>操　　作</th>
						</tr>
						

					<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><tr>
							<td style="width:80px;"><input id='id' type="checkbox" class='id attr removeAttr' name='ids[]' value='<?php echo ($list["id"]); ?>' /></td>
							<td><a href="/admin.php/Column/mod/id/<?php echo ($list["id"]); ?>"><?php echo ($list["title"]); ?></a></td>
							<td><?php echo ($list["description"]); ?></td>
							<td class='display'> 
								<script>var a = <?php echo ($list["display"]); ?> ; if(a === 1){document.write('<span class="glyphicon glyphicon-ok"></span>')}else{document.write('<span class="glyphicon glyphicon-remove"></span>')}</script></td>
							<td><?php echo (date("Y-m-d",$list["ctime"])); ?></td>
								<td><span class='glyphicon glyphicon-pencil'></span> <a href="/admin.php/Column/mod/id/<?php echo ($list["id"]); ?>">修改</a>&nbsp;｜&nbsp;<span class='glyphicon glyphicon-trash'></span> <a href="/admin.php/Column/del/id/<?php echo ($list["id"]); ?>">删除</a>&nbsp;｜&nbsp;<span class='glyphicon glyphicon-globe'></span> <a href="/admin.php/Article/index/id/<?php echo ($list["id"]); ?>">文章列表</a></td>
						</tr><?php endforeach; endif; else: echo "" ;endif; ?>
				</table>
					<button class='btn btn-primary'>删除已选</button>
				</form>

			</div>
			
		</div>
			
		<div class="col-sm-1"></div>
	</div>
	
<script>
			$(function(){
			    $('#selectAll').click(function(){
			         $("[type='checkbox']").attr("checked",'true');//全选
			    });

			    $('.un_select').click(function(){
			    	$("[type='checkbox']").removeAttr("checked");//取消全选
			    });
			});
</script>
</body>
</html>