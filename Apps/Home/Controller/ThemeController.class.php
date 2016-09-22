<?php

    /**
     * @author   刘满 
     * @E-mail   635549913@qq.com
     * @Data     2016-09-8 11:45:45
     * @Function 模板主题控制器
     * @Vsersion 3.0
     */

namespace Home\Controller;
use Think\Controller;
class ThemeController extends Controller {

	// 首先根据本次访问域名来设置相关的模板数据
	public function _initialize()
	{	
		// 获得模板名称  
		$templateName = $this->getTemplateName();

		// 只能是字符串 且不能为空
		if( empty( $templateName ) or !is_string( $templateName ) ) 
		{
			header("HTTP/1.1 404 Not Found");exit();
		}	

		// 设置模板主题
		C("DEFAULT_THEME",$templateName);

		// 模板目录
		$path = APP_PATH.MODULE_NAME.'/View/'.$templateName;

		if(!file_exists($path)) exit("模板不存在！");

		// 模板中资源的路径
		$resPath = trim( $path,"." ).'/Resource';
		C("TMPL_PARSE_STRING.__Res__",$resPath);

		$kefuInfo = M("User")->where(array("username"=>$templateName))->find();
		// 清空旧的，更新
		session("kefu",null);
		session("kefu",$kefuInfo);
	}//f


	// 返回当前的域名所对应的模板名称 只能是字符串 
	private function getTemplateName()
	{	
		// 域名模板对应关系
		$arrs 		  = C("TEMP_DOMAIN");
		$templateName = $arrs[$_SERVER["HTTP_HOST"]];
		if( empty($templateName) ) $templateName = C("DEFAULT_TPL");
		return $templateName;
	}//f



}//f