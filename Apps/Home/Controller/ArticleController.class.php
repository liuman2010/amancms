<?php
namespace Home\Controller;
use Think\Controller;
class ArticleController extends ThemeController {
    public function index()
    {   
        // 文章数据
        $id   = I("get.aid");
        $data = array("a"=>"aaaa","b"=>"bbbbb","c"=>"vccccc");
        $data = M("Article")->where( array('id'=>$id) )->find();
        if( empty($data) or !is_numeric($id) ) $this->error('警告！你的IP地理位置信息已被记录！请停止你的入侵行为！<br>刑法第285条第2款明确规定，犯非法获取计算机信息系统数据罪的，处三年以下有期徒刑或者拘役，并处或者单处罚金；情节特别严重的，处三年以上七年以下有期徒刑，并处罚金。','',60);
        $data['content'] = htmlspecialchars_decode($data['content']);
        // var_dump($data);

        // 面包屑导航
        $columnData = M("Column")->where( array('id'=>$data["pid"]) )->find();
        $position   = '<a href="/">首页</a> / <a href="/index.php/list/index/pid/'.$data['pid'].'">'.$columnData['title'].'</a> / <a href="/index.php/article/index/aid/'.$data['id'].'">'.$data['title'].'</a>';

        // 上一篇
        $prevData = M("Article")->where( array('pid'=>$data["pid"],'id'=>array('lt',$id) ) )->limit(1)->order('id desc')->find();
        $prev     = empty($prevData) ? "没有了" : '<a href="/index.php/Article/index/aid/'.$prevData['id'].'">'.$prevData['title'].'</a>';
        
        // 下一篇
        $nextData = M("Article")->where( array('pid'=>$data["pid"],'id'=>array('gt',$id) ) )->limit(1)->order('id asc')->find();
        $next     = empty($nextData) ? "没有了" : '<a href="/index.php/Article/index/aid/'.$nextData['id'].'">'.$nextData['title'].'</a>';

        // 浏览次数自增1
        $updateData["views"] = $data["views"]+1;
        M("Article")->where( array('id'=>$id) )->save($updateData);
        $this->assign("prev",$prev);
        $this->assign("next",$next);
        $this->assign("data",$data);
        $this->assign("title",$data["title"]);
        $this->assign("kefu",session('kefu'));
        $this->assign("position",$position);
        $this->display('article');
    }//f









}//c