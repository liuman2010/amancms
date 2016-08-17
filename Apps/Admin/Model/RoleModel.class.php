<?php 
namespace Admin\Model;
use Think\Model;
class RoleModel extends Model {
	
	// 自动验证
	protected $_validate = array(
			array('remark','require','用户组标记不能为空！'),
			array('remark','unique','用户组标记已经存在！',0,'unique',1),
			array('name','require','组别名不能为空！'),
			array('name','/^[a-z]{1,18}$/i','组名只能是英文字母！不能有中文、数字和符号！',),
			array('name','unique','组别名已经存在！',0,'unique',1),
		);

	public function test()
	{
		echo '测试模型！';
	}

}//c