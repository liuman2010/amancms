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
      $article = M("Article");
      $pid     = I("get.pid");
      session("a_column_id",$pid);
      if(empty($pid))
      {
        $count = $article->order('id desc')->count();
        $page = new \Think\Page($count,30);
        $data  = $article->order('id desc')->limit($page->firstRow.','.$page->listRows)->select();
      }
      else
      {
        $count = $article->where( array("pid"=>$pid) )->count();
        $page = new \Think\Page($count,30);
        $data  = $article->where( array("pid"=>$pid) )->order('id desc')->limit($page->firstRow.','.$page->listRows)->select();
      }
      $page->setConfig('prev','上一页');
      $page->setConfig('next','下一页');
      $page->setConfig('first','首页');
      $page->setConfig('last','尾页');
      $page->setConfig('theme',"%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% 共 %TOTAL_ROW% 篇文章");

      // 分页显示输出
      $show = $page->show();
      // 数据集
      $this->assign("data",$data); 
      // 赋值分页
      $this->assign("page",$show);
      $this->assign("columnsData",D("Column")->getColumns());
      $this->display();
  	}

  	// 显示添加文章界面
    public function add()
    { 
      i_array_column();
      $this->assign('data',D("Column")->getColumns());
    	$this->display();
    }

    // 显示修改文章界面
    public function mod()
    {
    	$id = I("get.id");
      $data = M("Article")->where(array('id'=>$id))->find();
      $data["content"]     = htmlspecialchars_decode($data["content"]);
      $this->assign("pid",$data['pid']);
      $this->assign("data",$data);
      $this->assign("columnsData",D("Column")->getColumns());
      $this->display();
    }


    // 新增或修改文章内容
    public function insert()
    {
      // var_dump($_POST);exit;

      if(!IS_POST) $this->error("非法访问！");
      $article = D("Article");
      session('article_column_pid',I("post.pid"));
      $thumbPath           = $article->getThumb( $_FILES["uppic"],I("post.thumbpic") );
      if(!$thumbPath)      $this->error("上传文件失败！请检查！");
      $data["thumbpic"]    = $thumbPath;
      $id                  = I("post.id");
      $type                = I("post.type");
      $data["pid"]         = I("post.pid");
      $data["title"]       = I("post.title");
      $data["author"]      = I("post.author");
      $data["summary"]     = I("post.summary");
      $data["content"]     = I("post.content");
      $data["ctime"]       = time();

      // 验证数据
      if( !$article->create($data) ) $this->error( $article->getError() );

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
        $this->error("操作失败！");
      }
      else
      {
        $this->success("操作成功！",'index');
      }

    }//f


    // 删除一个或多个文章
    public function del()
    {
      $id  = I("get.id");
      $ids = I("post.ids");
      if( is_array($ids) && !empty($ids) ) $id = implode(',', $ids);
      if( M("Article")->delete($id) )
      {
        $this->success("删除成功！");
      }
      else
      {
        $this->error("删除失败！");
      }
    }




}//c