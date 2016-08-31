<?php 
namespace Admin\Model;
use Think\Model;
class ArticleModel extends Model {

	// 自动验证
	protected $_validate = array(
			array('title','require','文档标题不能为空！'),
			array('editorValue','require','文档内容不能为空！'),
	);
	

}//c