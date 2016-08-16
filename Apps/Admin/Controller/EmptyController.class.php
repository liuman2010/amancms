<?php

namespace Admin\Controller;
use Think\Controller;
class EmptyController extends Controller 
{
  	
    public function _empty(){
    	$name = CONTROLLER_NAME;
        echo $name.'控制器不存在！';
    }



}//c