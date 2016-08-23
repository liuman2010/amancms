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
									<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><option value="<?php echo ($list["tables_in_amancms"]); ?>" class="form-control"><?php echo ($list["tables_in_amancms"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
								</select>
									<script>
									$(".select_column").change(function(data){
										var tableName = $(this).val();
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
							</div>
						</div>
				<br>
					<div class="row">
						<div class="col-xs-12">
							<form action='/admin.php/index/doReplace' method='post' class="form-horizontal" role="form">
							<input type="hidden" id='tableName' name="tableName" value="" />
							<div class="form-group">
							      <label for="column" class="col-xs-3 control-label">替换的字段：</label>
								      <div class="col-xs-9">
								        	<select name="column" id="column" class='form-control'>
								        		<option value="null">请选择数据表</option>
								        	</select>
								      </div>
							   </div>


							   <div class="form-group">
							      <label for="before" class="col-xs-3 control-label">替　换　前：</label>
							      <div class="col-xs-9">
							         <input type="text" class="form-control" name='before' id="before" 
							            placeholder="替换前的内容">
							      </div>
							   </div>


								<div class="form-group">
							      <label for="after" class="col-xs-3 control-label">替　换　后：</label>
								      <div class="col-xs-9">
								   			<input type="text" class="form-control" name='after' id="after" 
							            placeholder="替换后的内容">
							      	  </div>
							   </div>
							   
							   <div class="form-group">
							      <div class="col-xs-offset-2 col-xs-10">
							         <button type="submit" class="btn btn-success"><span class='glyphicon glyphicon-ok'></span> 提交</button>
							         <button type="reset"  class="btn btn-info"><span class='glyphicon glyphicon-refresh'></span> 重置</button>
							      </div>
							   </div>

							</form>
						</div>

					</div>
				</div>

				<div class="col-xs-6">
					数据库备份、还原
				</div>
			</div>
		</div>
</div>