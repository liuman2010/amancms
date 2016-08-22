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

<div class="col-xs-12"><p></p></div>

<div class="col-xs-12">
	<h4 style='float:left;'>&nbsp;&nbsp;&nbsp;您好！<?php echo (session('currentUserName')); ?>,欢迎登录！<span id="time">正在加载中......</span></h4>
</div>


<div class="col-xs-12 box">

		<div class="col-xs-12">
		   <h5>广州天气：<span class="label label-warning">穿衣指数:<?php echo ($tipt1); ?>  感冒指数:<?php echo ($tipt2); ?></span></h5>
		</div>

		<div class="col-xs-12">
				<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "$empty" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class='weather'>
						<p>日期：<?php echo ($vo["date"]); ?></p>
						<p>白天：<img height='30' width='42' src="<?php echo ($vo["dayPictureUrl"]); ?>" alt=""></p>
						<p>晚上：<img height='30' width='42' src="<?php echo ($vo["nightPictureUrl"]); ?>" alt=""></p>
						<p>天气：<?php echo ($vo["weather"]); ?></p>
						<p>风力：<?php echo ($vo["wind"]); ?></p>
						<p>温度：<?php echo ($vo["temperature"]); ?></p>
					</div><?php endforeach; endif; else: echo "$empty" ;endif; ?>
		</div>

		<div class="col-xs-12"><h4>系统状态：</h4></div>

		<div class="col-xs-12">
				<div class="col-xs-6">
					<div class='system'>
						<ul class='status'>
							<li><p>前台首页：<span class='right'><a target="_blank" href="http://localhost/index.php">http://localhost/index.php</a></span></p></li>
							<li><p>上一次登录用户:<span class='right'><a target="_blank" href="">admin</a></span></p></li>
							<li><p>上一次登录地区：<span class='right'><a target="_blank" href="">广州市电信</a></span></p></li>
							<li><p>上一次登录IP：<span class='right'><a target="_blank" href="">192.168.1.1</a></span></p></li>
							<li><p>上一次登录时间：<span class='right'><a target="_blank" href="">2016-07-31 16:01:03</a></span></p></li>
							<li><p>我当前的登录次数：<span class='right'><a target="_blank" href="">289</a></span></p></li>
							<li><p>最大执行时间：<span class='right'>30</span></p></li>
							<li><p>最大上传限制：<span class='right'>8M</span></p></li>
							<li><p>注册会员总数：<span class='right'>65468</p></li>
							
						</ul>
					</div>
				</div>

				<div class="col-xs-6">
					<div class='system'>
						<ul class='status'>
						<li><p>PHP语言版本：  <span class='right'> <a href="/aman.php/System/phpinfo">5.3.29</a></span></p></li>
						<li><p>Mysql版本：<span class='right'>5.1.69</span></p></li>
						<li><p>操作系统：<span class='right'>Linux</span></p></li>
						<li><p>GD库版本：<span class='right'>bundled (2.1.0 compatible)</span></p></li>
						<li><p>cURL函数：<span class='right'><span class="glyphicon glyphicon-ok"></span> 支持</span></p></li>
						<li><p>远程文件获取：<span class='right'><span class="glyphicon glyphicon-ok"></span> 支持</span></p></li>
						<li><p>Web服务器：<span class='right'>Apache</span></p></li>
						<li><p>Web服务器：<span class='right'>Apache</span></p></li>
						<li><p>上一次数据库备份：<span class='right'><span class="label label-danger">没有备份过数据！</span></span></p></li>

						</ul>
					</div>
				</div>

		</div>
</div>

<script type="text/javascript">
// add a zero in front of numbers<10 今天是：2015 年 9 月 21 日 12:03:00
function getNowFormatDate() {
	var weekday=new Array(7)
		weekday[0]="星期天"
		weekday[1]="星期一"
		weekday[2]="星期二"
		weekday[3]="星期三"
		weekday[4]="星期四"
		weekday[5]="星期五"
		weekday[6]="星期六"
    var date = new Date();
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = "今天是: "+date.getFullYear() + " 年" + month + "月" + strDate
            + "日 " + date.getHours() + "时" + date.getMinutes()
            + "分" + date.getSeconds() + "秒 " + weekday[date.getDay()];
    return currentdate;
}
var time =  getNowFormatDate();
	$("#time").html(time);

setInterval(function(){
	var time =  getNowFormatDate();
	$("#time").html(time);
},1000);

</script>