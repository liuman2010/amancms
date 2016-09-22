<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends ThemeController {
	public function _empty($name)
	{	
		// 模板名称白名单   过滤其它字符
		$whiteList = array('head','head2','index','footer'); 
		if(!in_array($name,$whiteList)) $this->error('警告！你的IP地理位置信息已被记录！请停止你的入侵行为！<br>刑法第285条第2款明确规定，犯非法获取计算机信息系统数据罪的，处三年以下有期徒刑或者拘役，并处或者单处罚金；情节特别严重的，处三年以上七年以下有期徒刑，并处罚金。','',60);
		$this->assign("kefu",session('kefu'));
		$this->display($name);
	}
}//c