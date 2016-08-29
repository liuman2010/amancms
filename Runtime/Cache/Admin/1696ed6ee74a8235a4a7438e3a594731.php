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
          留言管理
        </a>
      </h4>
    </div>

    <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">
        <ul class="list-group">
    			<li class="list-group-item"><a href="/admin.php/Message/index" target="main">我的访客留言</a></li>
    			<li class="list-group-item"><a href="/admin.php/Message/showMessage/status/0" target="main">未处理的访客留言</a></li>
    			<li class="list-group-item"><a href="/admin.php/Message/showMessage/status/1" target="main">已处理的访客留言</a></li>
  		</ul>
      </div>
    </div>
  </div>


</div>