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

	<div class="row">
		<div class="col-xs-12">
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-5">
						<h2 class="text-center">选择要操作的数据表</h2>
						<hr>
						<div class="row">
							<div class="col-xs-12">
								<select  class='form-control select_column'>
									<option value="all" class="form-control">在所有数据表中</option>
									<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><option value="<?php echo ($list["tables_in_amancms"]); ?>" class="form-control">在<?php echo ($list["tables_in_amancms"]); ?>表中</option><?php endforeach; endif; else: echo "" ;endif; ?>
								</select>

							</div>
						</div>
				<br>
					<div class="row">
						<div class="col-xs-12">
							<form action='/admin.php/index/replaceData' method='post' class="form-horizontal" role="form">
							<input type="hidden" class='tableName' name="tableName" value="<?php echo ($firstTableName); ?>" />
							<div class="form-group">
							      <label for="column" class="col-xs-3 control-label">替换的字段：</label>
								      <div class="col-xs-9">
								        	<select name="columnName" id="column" class='form-control'>
								        		<?php if(is_array($firstData)): $i = 0; $__LIST__ = $firstData;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><option value="<?php echo ($list); ?>"><?php echo ($list); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
								        	</select>
								      </div>
							   </div>

							   <div class="form-group like_v">
							      <label for="after" class="col-xs-3 control-label">查找并替换：</label>
								      <div class="col-xs-9">
								   			<input type="text" class="form-control like" name='like'   
							            placeholder="例如：@qq.com  匹配所有QQ邮箱">
							      	  </div>
							   </div>

							   <div class="form-group before_v">
							      <label for="before" class="col-xs-3 control-label">替　换　前：</label>
							      <div class="col-xs-9">
							         <input type="text" class="form-control" name='before' id="before" 
							            placeholder="替换前的内容">
							      </div>
							   </div>


								<div class="form-group after_v">
							      <label for="after" class="col-xs-3 control-label">替　换　后：</label>
								      <div class="col-xs-9">
								   			<input type="text" class="form-control" name='after' id="after" 
							            placeholder="替换后的内容">
							      	  </div>
							   </div>

							   
							   <div class="form-group">
							      <div class="col-xs-offset-2 col-xs-10">
							         <button type="submit" class="btn btn-success"><span class='glyphicon glyphicon-ok'></span> 提交</button>
							         <a href="<?php echo U('Index/showTables');?>" type="reset"  class="btn btn-info"><span class='glyphicon glyphicon-refresh'></span> 重置</a>
							      </div>
							   </div>

							</form>
						</div>

					</div>
				</div>

				<div class="col-xs-6">
					<!-- 数据库备份、还原 -->
				</div>
			</div>
		</div>
</div>

<!-- 动态加载数据表字段  -->
<script>
	$(".like").focus(function(){
		$(".before_v").fadeOut("slow");
	});

	$("#before").focus(function(){
		$(".like_v").fadeOut("slow");
	});


	$(".select_column").change(function(data){
		var tableName = $(this).val();
		$(".tableName").val(tableName);
		// 获取该数据表的所有字段
		$.post("/admin.php/index/replaceData",{"tableName":tableName},
					function(data)
					{
						var options;
						for (var i = 0 ; i <= data.length - 1; i++) {
							options += "<option value='"+data[i]+"'>"+data[i]+"</option>"
						};
						$("#column").html(options);
					}
			  );
	});
</script>