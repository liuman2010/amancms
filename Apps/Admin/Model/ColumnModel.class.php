<?php 
namespace Admin\Model;
use Think\Model;
class ColumnModel extends Model {

	// 自动验证
	protected $_validate = array(
			array('title','require','栏目名称不能为空！'),
		);

	
	// 返回格式化后的栏目数据
	public function getColumns()
	{
		$data = M("Column")->field("id,pid,path,title,concat(path,'-',id) as amanpath")->order('amanpath')->select();
        for ($i=0; $i < count($data); $i++) 
        {
          // 有多少个-横杆就复制多少个空格
          $n    = substr_count($data[$i]["amanpath"], '-');
          $nbsp = str_repeat('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-', $n-1);
          $data[$i]["title"] = $nbsp.$data[$i]["title"];
        }
		return $data;
	}
	

	// 检查被删除的ID有没有存在子栏目
	public function checkSonColumn($id)
	{	
		$error = '';
		$n = strpos($id,',');
		if( is_int($n) )
		{
			$arrs = explode(',', $id);
			for ($i=0; $i < count($arrs)-1; $i++) { 
				$status = M("Column")->where(array("pid"=>$arrs[$i]))->select();
				if($status) $error=1;
			}
		}
		else
		{
			$status = M("Column")->where(array("pid"=>$id))->select();
			if($status) $error=1;
		}
		return $error;
	}//f

}//c