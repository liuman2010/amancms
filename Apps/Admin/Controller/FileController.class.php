<?php

namespace Admin\Controller;
use Think\Controller;
class FileController extends Controller 
{
  	
  	// 根目录文件管理
  	public function index()
  	{
  		echo '根目录文件管理';
  	}


    // 显示上传文件的界面
    public function upFileForm()
    {
      echo  '显示上传文件的界面';
    }

    // 上传一个文件
    public function upload()
    {
      echo '上传一个文件';
    }


    // 在线压缩界面
    public function showZip()
    {
      echo '在线压缩界面';
    }

    // 在线解压界面
    public function showUnzip()
    {
      echo '在线解压界面';
    }


    // 在线压缩
    public function zip()
    {
      echo '在线压缩';
    }

    // 在线解压
    public function unzip()
    {
      echo '在线解压';
    }




}//c