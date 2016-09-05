<?php

    /**
     * @author   刘满 
     * @E-mail   635549913@qq.com
     * @Data     2016-09-04 09:31:00
     * @Function 微信视频分享系统
     * @Vsersion 3.0
     */

namespace Admin\Controller;
use Think\Controller;
class VideoController extends Controller 
{   
  	
    // 显示系统首页
	public function index()
    {   if( I("get.type") == 'all' )
        {
            $data = M("Video")->order("id desc")->select();
            $n    = count($data);
            $this->assign("n",$n);
            $this->assign("data",$data);
            $this->display("all");
        }
        else
        {
            $data = M("Video")->order("id desc")->select();
            $this->assign("data",$data);
            $this->display();   
        }
    }


    // 生成视频链接
    public function create()
    {
        $id          = I("post.id");
        $id          = $id ? $id : I("get.id");
        $searchTitle = I("post.search_title");

        if( $id == 'null' and $searchTitle == '' ) $this->error("请选择一个视频或者搜索内容！"); 

        // 如果有要搜索的内容 则去搜索
        if(!empty($searchTitle))
        {
            $map['title'] = array("like","%{$searchTitle}%");
            $data = M("Video")->where($map)->select();
            $n = count($data);
            $this->assign("n",$n);
            $this->assign("data",$data);
            $this->assign("searchTitle",$searchTitle);
            return $this->display('result');
        }

        if(!empty($id))
        {
            
            // 获取这个视频的信息
            $videoInfo = M("video")->where( array("id"=>$id) )->find();

            // 如果已经存在链接，说明已经被生成过了
            if(!empty($videoInfo['link'])) 
            {   
                $this->assign("path", $videoInfo['link']);
                $this->assign("title",$videoInfo['title']);
                return $this->display("success");
            }
            
            // 读取模板
            $html = file_get_contents('./Public/weixin_video/tmp.html');

            // 替换数据
            $html = str_replace('{aman_title}', $videoInfo["title"], $html);
            $html = str_replace('{aman_url}',   $videoInfo["url"],   $html);

            // 保存文件
            $saveFilePath = './Public/weixin_video/html/'.date("Ymd_H_i_s",time()).'.html';
            $status       = file_put_contents($saveFilePath,$html);
            
            if($status)
            {   
                // 保存生成的绝对路径
                $path = 'http://weixin-shipin.com'.ltrim($saveFilePath,'.');

                // 保存生成时间信息
                $createInfo['ctime'] = time();
                $createInfo['link']  = $path;
                M("video")->where( array('id'=>$id) )->save($createInfo);

                // 赋值到模板
                $this->assign("path",$path);
                $this->assign("title",$videoInfo['title']);
                $this->display("success");
            }
            else
            {
                $this->error("fileWriteError看到此提示请联系我");
            }
        }
    }//f


    // 显示添加视频资源页面
    public function add()
    {
        $this->display();
    }


    // 插入视频资源数据
    public function insert()
    {
        $data['title'] = I("post.title");

        if(empty($data['title'])) $this->error("不能没有标题！");

        $info          = upload('video');

        if(empty($info)) $this->error("请检查视频格式是否正确！并且大小不能超过100M！");

        $data['url'] = '/Public/uploads/'.$info['upVideo']['savepath'].$info['upVideo']['savename'];

        if( M('video')->data($data)->add() )
        {
            $this->success("添加成功！","index",2);
        }
        else
        { 
            $this->error("看到此提示请联系我");
        }
    }


    // 显示修改视频信息的页面
    public function mod()
    {
        $id = I("get.id");
        $data = M("Video")->where(array("id"=>$id))->find();

        $info['link']  = '';
        $info['ctime'] = '';
        M("video")->where(array('id'=>$id))->save($info);

        $this->assign("data",$data);
        $this->display();
    }


    // 修改视频信息
    public function update()
    {
        $id = I("post.id");
        $data['title'] = I("post.title");
        if( M("video")->where(array('id'=>$id))->save($data) )
        {
            $this->success("修改成功！",U("Video/index",array("type"=>"all")) );
        }
        else
        {
            $this->error("看到此提示请联系我");
        }
    }

    // 生成的历史  
    public function histroy()
    {
        $map['ctime'] = array("neq",'');
        $data = M('video')->where($map)->order('ctime desc')->select();
        $this->assign('data',$data);
        $this->display();
    }







}//c