<?php

    /**
     * @author   刘满 
     * @E-mail   635549913@qq.com
     * @Data     2016-08-16 13:57
     * @Function 用户权限处理类
     * @Vsersion 3.0
     */

namespace Admin\Controller;
use Think\Controller;
class UserController extends CommonController 
{
  	
	// 显示所有用户信息
    public function index()
    {
    	$data = M('User')->select();
    	$this->assign('data',$data);
    	$this->display();
    }

    // 显示添加用户的界面
    public function add()
    {
    	$html =  '';
    	$data = M("Role")->field('id,remark')->select();
    	// 如果没有用户角色数据
    	if( empty($data) )
    	{
    		$html = '<option value="null">请检查Role表是否存在！</option>';
    	}
    	else
    	{
	    	for ($i=0; $i < count($data); $i++) { 
	    		$html .= '<option value="'.$data[$i]['id'].'">'.$data[$i]['remark'].'</option>';
	    	}
    	}
    	$this->assign('options',$html);
    	$this->display();
    }


    // 插入添加的用户数据
    public function insert()
    {
	  	$data['username']	=	I("post.username");
	  	$data['groupid']	=	I("post.groupid");
	  	$data['password']	=	md5(I("post.password"));
	  	$data['repassword'] =   md5(I('post.repassword'));
	  	$data['sex']		=	I("post.sex");
	  	$data['email']		=	I("post.email");
	  	$data['ctime']      =   time();

	  	$user = D("User");

	  	// 自动验证数据 默认create方法是对表单提交的POST数据进行自动验证，如果数据来源不是表单post，也可以进行自动验证，方法改进如下
	  	if( !$user->create($data) )
	  	{
	  		// 不通过提示错误信息
	  		$this->error($user->getError());
	  	}
	  	else
	  	{	
	  		// 新用户的id号
	  		// var_dump($data);exit;
	  		$newUserId = $user->add();
	  		if($newUserId !== false)
	  		{
	  			$newUserData['role_id']  = $data["groupid"];
	  			$newUserData['user_id']  = $newUserId;
	  			
	  			// 得到了新增的用户ID，然后将它放到role_user关系对应表里面 添加失败返回false
	  			$status = M('Role_user')->add($newUserData);
	  			if($status === false)
	  			{
	  			 	$this->error("添加角色用户关系对应表role_user时发生错误！");
	  			}
	  			$this->success("添加新用户成功！用户ID号:{$newUserId}",'index',5);
	  		}
	  		else
	  		{
	  			$this->error("添加用户失败！");
	  		}
	  	}

    }


    public function del()
    {
    	// 批量删除用户
    	// $ids = array(14,15,16,34,66,234234,18,19,20,21,234);
    	// $ids = implode(",",$ids);

    	if(!IS_GET) $this->error('非法访问！');

    	// 删除单个用户
    	$id = I('get.id');

    	// 检查是不是数字 id只能是数字，否则提示非法的操作！
    	if(!is_numeric($id)) $this->error('非法操作！');

    	//delete方法的返回值是删除的记录数，如果返回值是false则表示SQL出错，返回值如果为0表示没有删除任何数据。
    	$status = M("User")->delete($id);
    	if($status > 0 )
    	{
    		$this->success("删除 {$status} 个用户成功！");
    	}
    	else
    	{
    		if($status === false)
    		{
    			$this->error("SQL出错！");
    		}
    		else
    		{
    			$this->error("没有数据被删除！");
    		}
    	}
    }//f


    // 禁止访问不存在的方法
    public function _empty($name)
    {
    	echo "没有{$name}这个操作！";
    }



}//c