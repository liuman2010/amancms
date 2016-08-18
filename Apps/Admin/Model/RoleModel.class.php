<?php 
namespace Admin\Model;
use Think\Model;
class RoleModel extends Model {
	
	// 表单提交过来自动验证
	protected $_validate = array(
			array('remark','require','用户组标记不能为空！'),
			array('remark','unique','用户组标记已经存在！',0,'unique',1),
			array('name','require','组别名不能为空！'),
			array('name','/^[a-z]{1,18}$/i','组名只能是英文字母！不能有中文、数字和符号！',),
			array('name','unique','组别名已经存在！',0,'unique',1),
		);


	/**
	 * @Function  获取所有角色
	 * @return    string $html 
	 */
	public function getRoles()
	{
		$html =  '';
    	$data = M("Role")->field('id,remark')->select();
    	if(empty($data)) return null;
	    for ($i=0; $i < count($data); $i++) 
        { 
	    	$html .= '<option value="'.$data[$i]['id'].'">'.$data[$i]['remark'].'</option>';
	    }

    	return $html;
	}

	

	public function test()
	{
		echo '测试模型！';
	}


}//c