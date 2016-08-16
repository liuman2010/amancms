<?php
 	/**
 	 * 用户登录类
 	 */
namespace Admin\Controller;
use Think\Controller;
use Org\Util\Rbac;
class PublicController extends Controller 
{
	// 访问公共模块显示登录首页
	public function index()
	{
		$this->display('login');
	}

	// 显示登录首页
	public function login()
	{	
		// 检查是否存在cookie
		if( isset( $_COOKIE["username"] ) )
		{
			$map["username"] = $_COOKIE["username"];
			$authInfo        = Rbac::authenticate($map);

			// 判断账户有没有被禁用
			$userInfo = M('User')->where( array( 'username'=>$_COOKIE["username"] ) )->field( 'status' )->find(); 
			
			if($userInfo['status'] === 0)
			{
				$this->error( '账户已被禁用！' );
			}
			else
			{
				// 比较 COOKIE的用户密码 和 查询数据库返回的用户密码
				if( $_COOKIE["password"] != $userInfo['password'] )
				{
					$this->error('cookie中的密码错误！请重新登录吧！',"Public/login");
				}

				$_SESSION[ C('USER_AUTH_KEY') ]  = $userInfo['id'];
				// 验证是不是超级管理员登录
				if( $userInfo["username"]  == 'admin' )
				{
					$_SESSION['admin'] = true;
				}

				// 缓存访问权限
				Rbac::saveAccessList();
				$this->success('您已经登录过了！正在跳转到后台首页....',U('Index/index'),3);

			}

		}
		else
		{
			// 不存在cookie就直接显示登录界面
			$this->display();
		}

	}


	// 检查登录
	public function checkLogin()
	{
		if(!IS_POST) $this->error( '非法访问！' );
		$username    = trim( I('post.username') );
		$password    = trim( I('post.password') );
		$code        = trim( I('post.code')     );

		// 如果存在空的参数
		if( $username === '' or $password === '' or $verify === '' )
		{
			$this->error("请填写完整的登录信息！");
		}
		else
		{
			$verify = new \Think\Verify();
			// 检查验证码是否正确
			if( false === $verify->check($code) ) $this->error( '验证码错误！','login',1);

			// 支持使用绑定账号登录
			$map 	         = array();
			$map["username"] = $username;
			$authInfo        = Rbac::authenticate($map);

			// 查询表单提交过来的用户名的用户信息
			$userInfo = M('User')->where( array( 'username'=>$_COOKIE["username"] ) )->field( 'status' )->find(); 
			
			// 判断账户有没有被禁用
			if( $userInfo['status'] === '0')
			{
				$this->error('账户已被禁用！');
			}
			else
			{
				// 检查是否存在改账户
				if( false === $authInfo )
				{
					$this->error('账户不存在！');
				}
				else
				{	
					// 检查密码是否匹配
					if( $authInfo['password'] != md5($password) )
					{
						$this->error("账户信息有误！");
					}

					if( $authInfo['username'] == 'admin' )
					{
						$_SESSION["admin"] = true;
					}
					
					$_SESSION[C('USER_AUTH_KEY')] = $authInfo['id'];
					// 缓存访问权限
					Rbac::saveAccessList(); 
					$this->success('登录成功！',U('Index/index'),1);
				}

			}
		}

	}//f


	// 退出登录
	public function loginout()
	{
		// 如果存在用户认证标识
		if( isset( $_SESSION[C('USER_AUTH_KEY')] ) )
		{
			// 销毁
			unset( $_SESSION[C('USER_AUTH_KEY')] );
			unset( $_SESSION );
			session_destroy();
			$this->success('退出成功！');
		}
		else
		{
			$this->error('您还没登录！3秒后转去登录页面','login',3);
		}
	}//f
  	

	// 输出验证码
	public function verify()
	{
		$verify = new \Think\Verify();

		// 启动随机背景图片
		// $verify->useImgBg = true;

		// 启动曲线干扰线
		$verify->useCurve = false;

		// length验证码位数
		$verify->length = 4;

		// 输出图像
		$verify->entry();
	}//f


    public function test()
    {
    	$info = M('User')->select();
    	var_dump($info);
    }


}//c