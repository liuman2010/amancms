<?php 
namespace Admin\Model;
use Think\Model;
class ColumnModel extends Model {
	
	// 返回格式化后的栏目数据
	public function getColumns()
	{
		$data = M("Column")->field("id,pid,path,title,concat(path,'-',id) as amanpath")->order('amanpath')->select();
        for ($i=0; $i < count($data); $i++) 
        {
          // 有多少个-横杆就复制多少个空格
          $n    = substr_count($data[$i]["amanpath"], '-');
          $nbsp = str_repeat('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-', $n-1);
          $data[$i]["title"] = $nbsp.$data[$i]["title"];
        }
		return $data;
	}
	

}//c