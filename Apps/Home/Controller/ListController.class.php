<?php
namespace Home\Controller;
use Think\Controller;
class ListController extends ThemeController {
    public function index(){
    	$pid   = I("get.pid");
    	$count  = M("Article")->where( array("pid"=>$pid) )->field('id,thumbpic,title')->count();
        // 实例化分页类
        $page  = new \Think\Page($count,9);
        $page->setConfig('header','<li class="rows">共<b>%TOTAL_ROW%</b>条记录&nbsp;&nbsp;第<b>%NOW_PAGE%</b>页/共<b>%TOTAL_PAGE%</b>页</li>');
        $page->setConfig('prev','上一页');
        $page->setConfig('next','下一页');
        $page->setConfig('last','末页');
        $page->setConfig('first','首页');
        $page->setConfig('theme','%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% %HEADER%');  

        // 分页显示输出
        $show  = $page->show();
        // 这个栏目下的文章数据
        $data  = M("Article")->where( array("pid"=>$pid) )->field('id,thumbpic,title')->limit( $page->firstRow.','.$page->listRows )->select();
    	// 分页数据
    	$this->assign("data",$data);

        // 如果不存在这个栏目的信息 提示错误
        $columnData = M("Column")->where( array('id'=>$pid) )->find();
        if( empty($columnData) or !is_numeric($pid) ) $this->error('警告！你的IP地理位置信息已被记录！请停止你的入侵行为！<br>刑法第285条第2款明确规定，犯非法获取计算机信息系统数据罪的，处三年以下有期徒刑或者拘役，并处或者单处罚金；情节特别严重的，处三年以上七年以下有期徒刑，并处罚金。','',60);

        // 面包屑导航
        $position = '<a href="/">首页</a> / <a href="/index.php/list/index/pid/'.$data['pid'].'">'.$columnData['title'].'</a>';
        $this->assign("position",$position);
        
    	// 分页导航
    	$this->assign("page",$show);
    	// 栏目页标题
    	$this->assign("title",$columnData['title']);
    	// 显示模板
        $this->assign("kefu",session('kefu'));
    	$this->display('list');
    }//f



}//c