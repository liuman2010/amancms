<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends ThemeController {
	
	public function head()
	{
		$this->display();
	}

	public function head2()
	{
		$this->display();
	}


    public function index()
    {
        $this->display('head');
    }


	public function footer()
	{
		$this->display();
	}

































}//c