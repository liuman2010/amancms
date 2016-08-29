<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>诺信网站管理系统 V2.0</title>
</head>
	<frameset rows="45,*,25"  border='0'>

		<frame src="<?php echo U('Index/top');?>" scrolling='no' />
		
		<frameset cols='15%,80%'>
			<frame src="<?php echo U('Index/menu');?>"  name="menu" />
			<frame src="<?php echo U('Index/main');?>"  name='main'/>
		</frameset>

		<frame src="<?php echo U('Index/footer');?>" scrolling='no' />

	</frameset>

	<noframes>
		<body>您的浏览器无法处理框架！请下载谷歌浏览器！</body>
	</noframes>
</html>