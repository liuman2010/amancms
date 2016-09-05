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

<br>
<div class="main" style="padding-left:68px;padding-right:30px;">
	<div class="row">
		<div class="col-xs-12">
			<div class="col-xs-10">
				<h4>您好！<?php echo (session('currentUserName')); ?>,欢迎登录！<span id="time">正在加载中......</span></h4>
			</div>
		</div>
	</div>
<div class="row"><div class="col-xs-12"><hr></div></div>
	   <div class="row">
			<div class="col-xs-12">

					<div class="col-xs-12">
					   <h5>广州天气：<span class="label label-warning">穿衣指数:<?php echo ($tipt1); ?>  感冒指数:<?php echo ($tipt2); ?></span></h5>
					</div>

					<div class="row">
						<div class="col-xs-12">
								<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "$empty" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="col-xs-3">
										<div class='weather'>
											<p>日期：<?php echo ($vo["date"]); ?></p>
											<p>白天：<img height='30' width='42' src="<?php echo ($vo["dayPictureUrl"]); ?>" alt=""></p>
											<p>晚上：<img height='30' width='42' src="<?php echo ($vo["nightPictureUrl"]); ?>" alt=""></p>
											<p>天气：<?php echo ($vo["weather"]); ?></p>
											<p>风力：<?php echo ($vo["wind"]); ?></p>
											<p>温度：<?php echo ($vo["temperature"]); ?></p>
										</div>
								    </div><?php endforeach; endif; else: echo "$empty" ;endif; ?>
						</div>
					</div>
			</div>
		</div>
</div>
<div class="row"><div class="col-xs-12"><hr></div></div>
<div class="main" style="padding-left:68px;padding-right:30px;">

				<div class="row">
						<div class="col-xs-12">
									<div class="col-xs-5">
										<ul class="system_info">
											<li><p>网站域名：<span class='right'><a target="_blank" href="http://<?php echo ($info["DOMAINS"]); ?>"><?php echo ($info["DOMAINS"]); ?></a></span></p></li>
											<li><p>服务器地址：<span class='right'><a target="_blank" href="http://<?php echo ($info["IP_ADDER"]); ?>"><?php echo ($info["IP_ADDER"]); ?></a></span></p></li>
											<li><p>我当前的登录次数：<span class='right'><?php echo ($info["num"]); ?></span></p></li>
											<li><p>注册会员总数：<span class='right'><a href="<?php echo U('User/index');?>"><?php echo ($info["userCount"]); ?></a></p></li>
											<li><p>上一次登录用户:<span class='right'><a target="_blank" href="">admin</a></span></p></li>
											<li><p>上一次登录地区：<span class='right'><a target="_blank" href="">广州市电信</a></span></p></li>
											<li><p>上一次登录时间：<span class='right'><a target="_blank" href="">2016-07-31 16:01:03</a></span></p></li>
											
										</ul>
								</div>

								<div class="col-xs-5">
										<ul class="system_info">
											<li><p>最大上传限制：<span class='right'><?php echo ($info["maxSize"]); ?></span></p></li>
											<li><p>最大执行时间：<span class='right'><?php echo ($info["maxExeTime"]); ?></span></p></li>
											<li><p>远程文件获取：<span class='right'><?php echo ($info["fileGetStatus"]); ?></span></p></li>
											<li><p>cURL函数：<span class='right'><?php echo ($info["curlStatus"]); ?></li>
											<li><p>Mysql版本：<span class='right'><?php echo ($info["mysqlVersion"]); ?></span></p></li>
											<li><p>GD库版本：<span class='right'><?php echo ($info["gdVersion"]); ?></span></p></li>
											<li><p>Web服务器：<span class='right'><?php echo ($info["PHP_OS"]); ?>/<?php echo ($info["SERVER_SOFTWARE"]); ?>/<?php echo ($info["phpVersion"]); ?></span></p></li>
										</ul>
								</div>
						</div>
				</div>
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