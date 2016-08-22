<?php

namespace Admin\Controller;
use Think\Controller;
class MessageController extends CommonController 
{
  	
  	// 显示我的留言版
  	public function index()
  	{
  		echo '显示我的留言版';
  	}


    // 显示未处理的留言
    public function showMessage()
    {
      echo '显示未处理的留言';
    }


    



}//c