<?php

namespace Admin\Controller;
use Think\Controller;
class ColumnController extends CommonController 
{
  	
  	// 显示栏目列表
  	public function index()
  	{ 
  		$data = M("Column")->field("id,pid,path,title,description,display,concat(path,'-',id) as amanpath")->order('amanpath')->select();
      $this->assign("data",$data);
      $this->display();
  	}

  	// 显示添加栏目界面
    public function add()
    {
      $data = M("Column")->field("id,pid,path,title,concat(path,'-',id) as amanpath")->order('amanpath')->select();
        for ($i=0; $i < count($data); $i++) 
        {
          // 有多少个-横杆就复制多少个空格
          $n    = substr_count($data[$i]["amanpath"], '-');
          $nbsp = str_repeat('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-', $n-1);
          $data[$i]["title"] = $nbsp.$data[$i]["title"];
        }
      $this->assign('data',$data);
      $this->display();
    }

    // 显示修改栏目界面
    public function mod()
    {
      $this->display();
    }


    // 新增或修改栏目内容
    public function insert()
    { 
      // 提交类型
      $type = I("post.type");
      // 如果是添加栏目
      if($type == 'add')
      {
        // 表单提交过来的已经选择的父栏目id
        $data['pid']          = I("post.pid");
        // 根据表单提交过来的父栏目id查找他的路径
        $parentData          = M("Column")->where(array("id"=>$data['pid']))->find();
        $data['path']        = $parentData['path'].'-'.$data['pid'];
        $data['title']       = I("post.title");
        $data['description'] = I("post.description");
        $data['display']     = I("post.display");
        $result = M("Column")->data($data)->add();
        if( false === $result)
        {
          $this->error("创建栏目失败！");
        }
        else
        {
          $this->success("创建栏目成功！");
        }
      }

      // 修改栏目信息
      if($type == 'mod')
      {

      }

    }//f


    // 删除一个或多个栏目
    public function del()
    {
      $id  = I("get.id");
      $ids = I("post.ids");
      if( is_array($ids) && !empty($ids) ) $id = implode(',', $ids);
      if(M("Column")->delete($id))
      {
        $this->success("删除成功！");
      }
      else
      {
        $this->error("删除失败！");
      }
    }//f




}//c