<?php

namespace Admin\Controller;
use Think\Controller;
class ColumnController extends CommonController 
{
  	
  	// 显示栏目列表
  	public function index()
  	{
  		echo '显示栏目列表';
  	}

  	// 显示添加栏目界面
    public function add()
    {
    	echo '添加栏目';
    }

    // 显示修改栏目界面
    public function mod()
    {
    	echo '修改栏目';
    }


    // 新增或修改栏目内容
    public function insert()
    {
    	echo '插入栏目';
    }


    // 删除一个或多个栏目
    public function del()
    {
    	echo '删除一个或多个栏目';
    }




}//c