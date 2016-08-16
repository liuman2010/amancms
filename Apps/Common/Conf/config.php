<?php
return array(


    // 模板渲染配置
	'TMPL_L_DELIM'=>'{',
	'TEMP_R_DELIM'=>'}',


	//数据库配置信息
	'DB_TYPE'   => 'mysqli', // 数据库类型
	'DB_HOST'   => 'localhost', // 服务器地址
	'DB_NAME'   => 'amancms', // 数据库名
	'DB_USER'   => 'root', // 用户名
	'DB_PWD'    => '123qwe', // 密码
	'DB_PORT'   => 3306, // 端口
	// 'DB_PARAMS' =>  array(), // 数据库连接参数
	'DB_PREFIX' => 'nx_', // 数据库表前缀 
	'DB_CHARSET'=> 'utf8', // 字符集
	'DB_DEBUG'  =>  TRUE, // 数据库调试模式 开启后可以记录SQL日志


	// 模板路径替换规则
	'TMPL_PARSE_STRING'  =>array(
	     '__JS__'     => '/Public/static/js', // 增加新的JS类库路径替换规则
	     '__CSS__'     => '/Public/static/css',
	     '__UPS__'     => '/Public/static/uploads',
	     '__IMG__'     => '/Public/static/images',
	     '__PLUS__'     => '/Public/static/plus',
	),


	// 缓存设置
	'HTML_CACHE_ON'     =>    true, // 开启静态缓存
	'HTML_CACHE_TIME'   =>    60,   // 全局静态缓存有效期（秒）
	'HTML_FILE_SUFFIX'  =>    '.shtml', // 设置静态缓存文件后缀
	'HTML_CACHE_RULES'  =>     array(  // 定义静态缓存规则
	     // 定义格式1 数组方式
	     // '静态地址'    =>     array('静态规则', '有效期', '附加规则'), 
	     // 定义格式2 字符串方式
	     // '静态地址'    =>     '静态规则', 
	),

	// RBAC权限管理配置
	'USER_AUTH_ON'				=>	true,
	'USER_AUTH_TYPE'			=>	1,							// 默认认证类型 1 登录认证 2 实时认证
	'USER_AUTH_KEY'			    =>	'authId',					// 用户认证SESSION标记
    'ADMIN_AUTH_KEY'			=>	'admin',					// 超级管理员
	'USER_AUTH_MODEL'		    =>	'User',						// 默认验证数据表模型
	'AUTH_PWD_ENCODER'		    =>	'md5',						// 用户认证密码加密方式
	'USER_AUTH_GATEWAY'	        =>	'/Public/login',			// 默认认证网关
	'NOT_AUTH_MODULE'		    =>	'Public',					// 默认无需认证模块
	'REQUIRE_AUTH_MODULE'       =>	'',							// 默认需要认证模块
	'NOT_AUTH_ACTION'		    =>	'insert',					// 默认无需认证操作 登录、检查登录、退出登录、验证码
	'REQUIRE_AUTH_ACTION'       =>	'',							// 默认需要认证操作
    'GUEST_AUTH_ON'             =>	false,    					// 是否开启游客授权访问
    'GUEST_AUTH_ID'             =>	0,     						// 游客的用户ID
    'RBAC_ERROR_PAGE' 			=>	'/Public/Forbidden.html',   // 定义错误提示页面
    "RBAC_ROLE_TABLE" 			=>	'nx_role',            		// 角色表名称(必配)
    "RBAC_USER_TABLE"		    =>	'nx_role_user',       		// 用户角色中间表名称(必配)
    "RBAC_ACCESS_TABLE" 		=>	'nx_access',        		// 权限表名称(必配)
    "RBAC_NODE_TABLE" 			=>	'nx_node',            		// 节点表名称(必配)

);

