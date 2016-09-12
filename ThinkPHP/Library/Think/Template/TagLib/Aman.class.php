<?php 
namespace Think\Template\Taglib;
use Think\Template\TagLib;
Class Aman extends TagLib{
		protected $tags   =  array(
		  // 定义标签
		 'article'    =>    array('attr'=>'typeid,row,order','close'=>0), // article标签
		 'textarea' =>    array('attr'=>'name,id'),
		 );



		// article标签解析
		public function _article($tag,$content)   {
		    $typeid   =   $tag['typeid'];
		    $row   =   $tag['row'];
		    $order   =   $this->autoBuildVar($tag['order']);
		    $str = "处理后的数据".$typeid;
		    return $str;
		}


		// textarea标签解析
		public function _textarea($tag,$content)   {
		    $name  =   $tag['name'];
		    $id    =   $tag['id'];
		    $str   =   '<textarea id="'.$id.'" name="'.$name.'">'.$content.'</textarea>';
		    return $str;
		}













}
 ?>