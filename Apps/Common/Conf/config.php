<?php
return array(
  
	// 自定义配置     
	'DOMAINS'=>'localhost',
	'IP_ADDER'=>'192.168.2.254',
	'DEFAULT_TPL'=>'default',
	'WATER_MARK'=>'false',
	'WATER_POSITION'=>'5',
	'ALLOW_TYPE'=>'gif|png|jpg|jpeg',
	'IMG_WIDTH'=>'320',
	'IMG_HEIGHT'=>'180',
	'MAX_SIZE'=>'20480',


    // 系统配置
	'TMPL_L_DELIM'=>'{',
	'TEMP_R_DELIM'=>'}',
	// 'SHOW_PAGE_TRACE' =>true,


	//数据库配置信息
	'DB_TYPE'=>'mysqli', // 数据库类型
	'DB_HOST'=>'127.0.0.1', // 服务器地址
	'DB_NAME'=>'amancms', // 数据库名
	'DB_USER'=>'root', // 用户名
	'DB_PWD'=>'123qwe', // 密码
	'DB_PORT'   => 3306, // 端口
	// 'DB_PARAMS' =>  array(), // 数据库连接参数
	'DB_PREFIX'=>'nx_', // 数据库表前缀 
	'DB_CHARSET'=>'utf8', // 字符集
	'DB_DEBUG'=>'true', // 数据库调试模式 开启后可以记录SQL日志


	// 模板路径替换规则
	'TMPL_PARSE_STRING'  =>array(
	     '__JS__'     => '/Public/static/js', // 增加新的JS类库路径替换规则
	     '__CSS__'     => '/Public/static/css',
	     '__UPS__'     => '/Public/uploads',
	     '__IMG__'     => '/Public/static/images',
	     '__PLUS__'     => '/Public/static/plus',
	),


	// 缓存设置
	'HTML_CACHE_ON'=>'true', // 开启静态缓存
	'HTML_CACHE_TIME'   =>    60,   // 全局静态缓存有效期（秒）
	'HTML_FILE_SUFFIX'=>'.shtml', // 设置静态缓存文件后缀
	'HTML_CACHE_RULES'  =>     array(  // 定义静态缓存规则
	),


// RBAC权限配置
	'USER_AUTH_ON'				=>	'true',
	'USER_AUTH_TYPE'			=> 1,							// 默认认证类型 1 登录认证 2 实时认证
	'USER_AUTH_KEY'			    =>	'authId',					// 用户认证SESSION标记
    'ADMIN_AUTH_KEY'			=>	'admin',					// 超级管理员
	'USER_AUTH_MODEL'		    =>	'User',						// 默认验证数据表模型
	'AUTH_PWD_ENCODER'		    =>	'md5',						// 用户认证密码加密方式
	'USER_AUTH_GATEWAY'	        =>	'/Public/login',			// 默认认证网关
	'NOT_AUTH_MODULE'		    =>	'Public',					// 默认无需认证模块
	'REQUIRE_AUTH_MODULE'       =>	'',							// 默认需要认证模块
	'NOT_AUTH_ACTION'		    =>	'',							// 默认无需认证操作 登录、检查登录、退出登录、验证码
	'REQUIRE_AUTH_ACTION'       =>	'',							// 默认需要认证操作
    'GUEST_AUTH_ON'             =>  false,					    // 是否开启游客授权访问
       'GUEST_AUTH_ID'			=>	0,     						// 游客的用户ID
    'RBAC_ERROR_PAGE' 			=>	'/Public/Forbidden.html',   // 定义错误提示页面
    "RBAC_ROLE_TABLE" 			=>	'nx_role',            		// 角色表名称(必配)
    "RBAC_USER_TABLE"		    =>	'nx_role_user',       		// 用户角色中间表名称(必配)
    "RBAC_ACCESS_TABLE" 		=>	'nx_access',        		// 权限表名称(必配)
    "RBAC_NODE_TABLE" 			=>	'nx_node',            		// 节点表名称(必配)



);

