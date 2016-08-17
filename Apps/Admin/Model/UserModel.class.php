<?php 
namespace Admin\Model;
use Think\Model;
class UserModel extends Model {
	
	// 自动验证
	protected $_validate = array(
			array('username','unique','账号名称已经存在！',0,'unique',1),
			array('username','require','用户名不能为空！'),
			array('groupid','require','请选择所属用户组！'),
			array('password','require','密码不能为空！'),
			array('repassword','password','确认密码不相同！',0,'confirm'),
			array('email','email','邮箱格式不正确！'),
		);


}//c