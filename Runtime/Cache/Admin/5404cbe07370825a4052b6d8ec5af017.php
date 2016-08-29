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

<nav class="navbar navbar-inverse" role="navigation">
   <div class="navbar-header">
      <a class="navbar-brand" href="<?php echo U('Index/index');?>" target="_top"><span class="glyphicon glyphicon-home"></span></a>
   </div>
   <div>
      <ul class="nav navbar-nav">
         <li class="active"><a href="<?php echo U('Index/sysMenu');?>" target="menu" >系统管理</a></li>
         <li><a href="<?php echo U('Index/siteMenu');?>" target="menu">网站管理</a></li>
         <li><a href="<?php echo U('Index/kefuMenu');?>" target="menu">在线客服</a></li>
         <li><a href="<?php echo U('Index/msgMenu');?>" target="menu">留言系统</a></li>
         <li><a href="<?php echo U('Public/loginout');?>" target="_top">安全退出</a></li>
       <!--   <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">admin<b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
               <li><a href="#">退出</a></li>
            </ul>
         </li> -->
      </ul>
   </div>
</nav>


</body>
</html>