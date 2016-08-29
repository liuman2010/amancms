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
    }//f


    // 显示添加用户的界面
    public function add()
    {   
        // 获取所有角色
        $html = D('Role')->getRoles();
        // 如果没有用户角色数据
        if( empty($html) )
        {
            $this->error('还没有创建角色！','addGroup',3);
        }
    	$this->assign('options',$html);
    	$this->display();
    }//f


    // 插入添加的用户数据
    public function insert()
    {
        if(!IS_POST) $this->error("非法访问！");
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
	  		$newUserId = $user->add();
	  		if( $newUserId !== false )
	  		{
	  			$newUserData['role_id']  = $data["groupid"];
	  			$newUserData['user_id']  = $newUserId;
	  			
	  			// 得到了新增的用户ID，然后将它放到role_user关系对应表里面 添加失败返回false
	  			$status = M('Role_user')->add($newUserData);
	  			if($status === false)
	  			{
	  			 	$this->error("添加角色用户关系对应表role_user时发生错误！");
	  			}
	  			$this->success("添加新用户成功！用户ID号:{$newUserId}",'index',1);
	  		}
	  		else
	  		{
	  			$this->error("添加用户失败！");
	  		}
	  	}

    }//f


    // 改变用户状态
    public function changeStatus()
    {
    	if(!IS_GET) $this->error("非法访问！");
    	$userid         = I("get.id");
    	$data['status'] = I("get.status") ? 0 : 1;
		$result = M('User')->where(array('id'=>$userid))->save($data);
		if($result === false){
            $this->error('操作失败！','',1);
        }else{
            $this->success('操作成功','',1);
        }
    }//f



    // 删除用户
    public function del()
    {
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


    // 显示用户组管理界面
    public function group()
    {
        $data = M("Role")->select();
        $this->assign('data',$data);
        $this->display();
    }


    // 显示添加用户组的界面
    public function addGroup()
    {
        $this->display();
    }


    // 插入添加的用户组数据
    public function insertgroup()
    {
        if(!IS_POST) $this->error("非法访问！");
        $data["name"]   = I("post.name");
        $data["remark"] = I("post.remark");
        $data["status"] = I("post.status");
        $data["ctime"]  = time();

        // 在 RoleModel 模型 验证数据
        $Role   = D("Role");
        $result = $Role->create($data);
        if($result === false)
        {   
            $this->error($Role->getError());            
        }
        else
        {   
            $Role->add();
            $this->success("添加用户组成功！","group",1);
        }
    }//f


    // 删除用户组
    public function delGroup()
    {
        if(!IS_GET) $this->error("非法访问！");
        $groupid = I("get.id");
        if( M('Role')->delete($groupid) )
        {
            $this->success("删除用户组成功！");
            // 删除用户组后要删除该用户组的权限表数据
            M("Access")->where( array("role_id"=>$groupid) )->delete();
        }
        else
        {
            $this->error("删除用户组失败！");
        }

    }



    // 查询该用户id对应的角色id
    private function getRoleId($userId)
    {
        $userInfo = M('Role_user')->where( array('user_id'=>$userId) )->find();
        $roleId   = $userInfo['role_id'];
        return $roleId;
    }

    // 查询该角色的信息
    private function getRoleInfo($Role_id)
    {
        $roleInfo = M('Role')->where( array('role_id'=>$Role_id) )->find();
        return $roleInfo;
    }

    // 编辑用户组权限
    public function modAccess()
    {

        // 角色ID
        $roleId   = I("get.role_id");
        // 角色标识符
        $remark   = I("get.remark");

        $node = M("Node");
        // 所有的操作节点
        $allNodeData = $node->order('id')->select();


        // 查询角色权限对应表access 该角色拥有的权限 返回一个node_id操作节点数组
        $userNodeData = M('Access')->where( array('role_id'=>$roleId) )->field('node_id')->select();

        $userIds = array_column($userNodeData,'node_id');
        $nodeIds = array_column($allNodeData,'id');

        // 得到用户没有的权限id  array_diff 比较数组的差集
        $ids = array_values(array_diff($nodeIds, $userIds));

        // 遍历节点id 
        for ($i=0; $i < count($allNodeData); $i++) 
        {   
            if( in_array($allNodeData[$i]['id'],$ids) )
            {
                $allNodeData[$i]['checked'] = '';
            }
            else
            {
                $allNodeData[$i]['checked'] = 'checked';
            }   
        }

        $this->assign('data',$allNodeData);
        $this->assign('groupName',$remark);
        $this->assign('roleId',$roleId);
        $this->display();         
    }//f


    // ajax方式更新用户组权限
    public function updateAccess()
    {   
        if(!IS_AJAX or !IS_POST) $this->error("非法请求！");
        $node   = M("Node");
        $roleId = I("post.role_id");
        $nodeId = I("post.node_id");

        // 查询权限表里是否存在
        $nodeIdStatus = M("Access")->where( array('role_id'=>$roleId , 'node_id'=>$nodeId) )->find();

        if(!empty($nodeIdStatus))
        {   
            $result = M("Access")->where( array('role_id'=>$roleId, 'node_id'=>$nodeId) )->delete();
            if($result == 0) echo 0;
        }
        else
        {
            // 查询该节点的信息
            $nodeInfo = $node->where( array("id"=>$nodeId) )->find();

            // 新增的权限对应关系数据
            $data['role_id'] = $roleId;
            $data['node_id'] = $nodeId;
            $data['level']   = $nodeInfo['level'];
            $data['pid']     = $nodeInfo['pid'];

            // 插入到数据库
            $result = M("Access")->data($data)->add();
            if($result == 0) echo 0;
        } 
        echo 1;
    }//f

    // 更改操作节点状态
    public function changeNodeStatus()
    {
       $id = I("get.id");
       $data["status"] = I("get.status");
       if(M("Node")->where(array("id"=>$id))->save($data))
       {
         $this->success('操作成功！');
       }
    }


    // 显示修改用户组信息模板
    public function  modGroup()
    {   
        $data = M("Role")->where( array("id"=>I("get.role_id")) )->find();
        $this->assign("data",$data);
        $this->display();
    }


    // 修改用户信息
    public function updateGroup()
    {

    }

}//c