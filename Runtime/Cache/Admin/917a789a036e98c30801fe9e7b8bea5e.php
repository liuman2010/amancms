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

<link rel="stylesheet" type="text/css" href="/Public/static/css/admin.css" />
	<div class="col-sm-12">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<h2>文章列表</h2>
		</div>
	</div>
	<div class="col-sm-12"> <hr> </div>
	<div class="col-sm-2">
					<select name="pid" id="select" class='form-control' onchange="showArticle(this.value);">
						<option class='opt' value="all">所有文章</option>
						<?php if(is_array($columnsData)): $i = 0; $__LIST__ = $columnsData;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><option value="<?php echo ($list["id"]); ?>"><?php echo ($list["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
					</select>
					<script>
						function showArticle(pid){
							var url = "/admin.php/Article/index/pid/"+pid;
							window.location.href=url;
						}
					</script>
	</div>
	<div class="clear"></div><br><br><br><br><br><br><br><br>
	<div class="col-sm-12">
		<form action="/admin.php/Article/del" method='post' >
		<table class='table table-striped  table-bordered  table-hover'>
			<tr>
				<th><a href="javascript:void(0);" class='all_select'>全选</a>/<a class='del_select' href="javascript:void(0);">反选</a></th><th>产品ID</th><th>产品标题</th><th>栏目ID</th> <th>评论</th><th>审核</th><th>浏览量</th><th>操　　作</th><th>添加时间</th>
			</tr>
		
		<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "没有文章" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><tr class='list'>
				<td style="width:80px;"><input type="checkbox" class='id' name='ids[]' value='<?php echo ($list["id"]); ?>'></td><td><?php echo ($list["id"]); ?></td><td><a target='main' href="/admin.php/Article/mod/id/<?php echo ($list["id"]); ?>"><?php echo ($list["title"]); ?></a></td><td><?php echo ($list["pid"]); ?></td><td><span class='glyphicon glyphicon-ok'></span></td><td><span class='glyphicon glyphicon-remove'></span></td><td><?php echo ($list["views"]); ?></td><td><span class='glyphicon glyphicon-pencil'></span> <a target='main' href="/admin.php/Article/mod/id/<?php echo ($list["id"]); ?>">修改</a>&nbsp;｜&nbsp;<span class='glyphicon glyphicon-trash'></span> <a href="/admin.php/Article/del/id/<?php echo ($list["id"]); ?>">删除</a>&nbsp;｜&nbsp;<span class='glyphicon glyphicon-globe'></span> <a target='_blank' href="/index.php/article/index/aid/<?php echo ($list["id"]); ?>">浏览</a></td><td><?php echo (date("y-m-d H:i:s",$list["posttime"])); ?></td>
			</tr><?php endforeach; endif; else: echo "没有文章" ;endif; ?>

	</table>
	<button class='btn btn-primary'>删除已选</button>
	</div>
	<div class="col-sm-12">
	    <div class="col-sm-4"></div>
	    <div class="col-sm-4 page"><?php echo ($page); ?></div>
	    <div class="col-sm-4"></div>
	</div>

<script>
			$(".all_select").click(function(){
					$(".id").attr("checked","checked");
			});

			$(".del_select").click(function(){
					$(".id").removeAttr("checked");
			});

</script>
	
</form>
</body>
</html>