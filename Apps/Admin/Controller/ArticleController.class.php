<?php

namespace Admin\Controller;
use Think\Controller;
class ArticleController extends Controller 
{
  	
  	// 显示文章列表
  	public function index()
  	{
  		echo '显示文章列表';
  	}

  	// 显示添加文章界面
    public function add()
    {
    	echo '添加文章';
    }

    // 显示修改文章界面
    public function mod()
    {
    	echo '修改文章';
    }


    // 新增或修改文章内容
    public function insert()
    {
    	echo '插入文章';
    }


    // 删除一个或多个文章
    public function del()
    {
    	echo '删除一个或多个文章';
    }




}//c