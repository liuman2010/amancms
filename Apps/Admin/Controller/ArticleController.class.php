<?php

    /**
     * @author   刘满 
     * @E-mail   635549913@qq.com
     * @Data     2016-08-31 15:52:00
     * @Function 文章管理类
     * @Vsersion 3.0
     */

namespace Admin\Controller;
use Think\Controller;
class ArticleController extends CommonController 
{
  	
  	// 显示文章列表
  	public function index()
  	{
  		echo '显示文章列表';
  	}

  	// 显示添加文章界面
    public function add()
    {
      $this->assign('data',D("Column")->getColumns());
    	$this->display();
    }

    // 显示修改文章界面
    public function mod()
    {
    	echo '修改文章';
    }


    // 新增或修改文章内容
    public function insert()
    {
      if(!IS_POST) $this->error("非法访问！");
      session('article_column_pid',I("post.pid"));
      $type                = I("post.type");
      $id                  = I("post.id");
      $data["title"]       = I("post.title");
      $data["pid"]         = I("post.pid");
      $data["thumbpic"]    = I("post.thumbpic");
      $data["author"]      = I("post.author");
      $data["summary"]     = I("post.summary");
      $data["content"]     = I("post.editorValue");

      // 验证数据
      $article = D("Article");
      // if( !$article->create($data) ) $this->error( $article->getError() );
      // 检测是否有图片上传
      if($_FILES['uppic']['error'] === 0 )
      {
        $data["thumbpic"] = $_FILES["uppic"]["name"];
      }
      else
      {
        if( empty(I("post.thumbpic")) )
        {
          $data["thumbpic"] = '/Public/static/images/admin/default_thumbpic.gif';
        }
      }
      
      var_dump($data);exit;
      // 添加文章
      if($type === 'add')
      {
        $result = $article->add();
      }
        
      // 修改文章
      if($type === 'mod')
      {
        $result = $article->where( array('id'=>$id) )->save($data);
      }

      if(false === $result)
      {
        $this->error("添加失败！");
      }
      else
      {
        $this->success("添加成功！");
      }

    }//f


    // 删除一个或多个文章
    public function del()
    {
    	echo '删除一个或多个文章';
    }




}//c