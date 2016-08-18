<?php

namespace Admin\Controller;
use Think\Controller;
class PictureController extends Controller 
{
  	
  // 显示上传图片的界面
  public function upPicForm()
  {
    echo '显示上传图片的界面';
  }

	// 上传文件
  public function upload()
  {
    echo '上传文件';
	}   


  // 显示相册列表
  public function album()
  {
    echo '相册列表';
  }


  // 显示添加相册界面
  public function showAddAlbum()
  {
    echo '显示添加相册界面';
  }


  // 添加相册
  public function addAlbum()
  {
    echo '添加一个相册';
  }





}//c