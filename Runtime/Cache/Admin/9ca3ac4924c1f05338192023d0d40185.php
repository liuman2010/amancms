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

<div padding-rigt='10' class="panel-group" id="accordion">

  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" 
          href="#collapseOne">
         系统设置
        </a>
      </h4>
    </div>

    <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">
        <ul class="list-group">
  			<li class="list-group-item"><a href="<?php echo U('Index/main');?>" target="main">系统状态</a></li>
        <li class="list-group-item"><a href="<?php echo U('Index/sysconfig');?>" target="main">系统设置</a></li>
        <li class="list-group-item"><a href="<?php echo U('Index/showTables');?>" target="main">数据批量替换</a></li>
        <li class="list-group-item"><a href="<?php echo U('Index/refresh');?>" target="main">更新网站缓存</a></li>
  		</ul>
      </div>
    </div>
  </div>


</div>

    <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" 
          href="#collapseSix">
          用户管理
        </a>
      </h4>
    </div>
    <div id="collapseSix" class="panel-collapse collapse in">
      <div class="panel-body">
    		<ul class="list-group">
           <li class="list-group-item"><a href="<?php echo U('User/add');?>" target="main">添加成员</a></li>
           <li class="list-group-item"><a href="<?php echo U('User/index');?>" target="main">用户列表</a></li>
    			 <li class="list-group-item"><a href="<?php echo U('User/addGroup');?>" target="main">添加用户组</a></li>
    			 <li class="list-group-item"><a href="<?php echo U('User/group');?>" target="main">用户组管理</a></li>
    		</ul>

      </div>
    </div>
  </div>