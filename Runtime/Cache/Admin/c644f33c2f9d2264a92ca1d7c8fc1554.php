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
         文档栏目
        </a>
      </h4>
    </div>

    <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">
        <ul class="list-group">
        	<li class="list-group-item"><a href="/admin.php/Article/add" target="main">添加文章</a></li>
			<li class="list-group-item"><a href="/admin.php/Article" target="main">文章列表</a></li>
			<li class="list-group-item"><a href="/admin.php/Column/add" target="main">添加栏目</a></li>
			<li class="list-group-item"><a href="/admin.php/Column" target="main">栏目列表</a></li>
		</ul>
      </div>
    </div>
  </div>
</div>





  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" 
          href="#collapseThree">
          图片管理
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse in">
      <div class="panel-body">
	<ul class="list-group">
		<li class="list-group-item"><a href="/admin.php/Picture/upPicForm" target="main">上传图片</a></li>
    <li class="list-group-item"><a href="/admin.php/Picture/addAlbum" target="main">添加相册</a></li>
		<li class="list-group-item"><a href="/admin.php/Picture/Album" target="main">相册列表</a></li>
	</ul>

      </div>
    </div>
  </div>



    <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" 
          href="#collapseFiles">
          文件管理
        </a>
      </h4>
    </div>
    <div id="collapseFiles" class="panel-collapse collapse on">
      <div class="panel-body">
	<ul class="list-group">
    <li class="list-group-item"><a href="/admin.php/File/upFileForm" target="main">上传文件</a></li>
    <li class="list-group-item"><a href="/admin.php/File/zip" target="main">在线压缩</a></li>
    <li class="list-group-item"><a href="/admin.php/File/unzip" target="main">在线解压</a></li>
		<li class="list-group-item"><a href="/admin.php/File/index" target="main">网站根目录</a></li>
	</ul>

      </div>
    </div>
  </div>