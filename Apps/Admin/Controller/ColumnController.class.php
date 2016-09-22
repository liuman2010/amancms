<?php

namespace Admin\Controller;
use Think\Controller;
class ColumnController extends CommonController 
{
  	
  	// 显示栏目列表
  	public function index()
  	{ 
  		$data = M("Column")->field("id,pid,path,title,ctime,description,display,concat(path,'-',id) as amanpath")->order('amanpath')->select();
      $this->assign("data",$data);
      $this->display();
  	}


  	// 显示添加栏目界面
    public function add()
    {
      $this->assign('data',D("Column")->getColumns());
      $this->display();
    }

    // 显示修改栏目界面
    public function mod()
    {
      $column = D("column");

      $id   =  I("get.id");
      // 要操作的栏目的信息
      $data = $column->where(array("id"=>$id))->find();
      // 根据他的父id去查新信息
      $ParentData = $column->where( array('id'=>$data['pid']) )->find();


      if($data['pid'] == 0)
      {
        $ParentData['id']       = 0;
        $ParentData['title']    = '根目录';
      }
      $this->assign('data',$data);
      $this->assign('select_id',$data['pid']);
      $this->assign('cloumnsData',$column->getColumns());
      $this->display();
    }


    // 新增或修改栏目内容
    public function insert()
    { 
      $column = D("column");
      // 提交类型
      $type    = I("post.type");

      // 如果是添加栏目
      if($type == 'add')
      {
        // 表单提交过来的已经选择的栏目id
        $id                  = I("post.id");
        $data['ctime']       = time();
        $data['title']       = I("post.title");
        $data['description'] = I("post.description");
        $data['display']     = I("post.display");

        // 根据表单提交过来的栏目id查找他父栏目的路径
        $parentData          = $column->where(array("id"=>$id))->find();
        if($id == 0)
        {
          $data['pid']       = '0';
          $data['path']      = '0';
        }
        else
        {
          $data['pid']       = $id;
          $data['path']      = $parentData['path'].'-'.$id;
        }

        if( I("post.remeber_select_column") == 'true')
        {
          session("remeber_select_column","checked");
          session("remeber_select_id",$id);
        }
        else
        {
          session("remeber_select_column",null);
          session("remeber_select_id",null);
        }
        if(!$column->create($data))
        {
          // 不通过提示错误信息
          $this->error($column->getError());
          
        }
        
        $result = $column->add();

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
        $id      = I('post.id'); 
        $data['description'] = I("post.description");
        $data['title']       = I('post.title');

        if($column->where(array("id"=>$id))->save($data))
        {
          $this->success("修改栏目信息成功！");
         }
       else
        {
          $this->error("修改栏目信息失败！");
        }
      }

    }//f


    // 删除一个或多个栏目
    public function del()
    {
      $id  = I("get.id");
      $ids = I("post.ids");

      if( is_array($ids) && !empty($ids) ) $id = implode(',', $ids);
      if(empty($id)) $this->error("不能为空！请选择要删除的栏目！");

      $Column = D("Column");
      // 检查被删除的id有没有存在子栏目
      $errorStatus = $Column->checkSonColumn($id);
      if($errorStatus) $this->error("还存在子栏目！请先删除子栏目！");

      if($Column->delete($id))
      {
        $this->success("删除成功！");
      }
      else
      {
        $this->error("删除失败！");
      }
    }//f




}//c