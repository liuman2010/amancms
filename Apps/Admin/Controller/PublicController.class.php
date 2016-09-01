<?php
    /**
     * @author   刘满 
     * @email   635549913@qq.com
     * @Data     2016-08-26 11:40:45
     * @Function 后台登录控制器
     * @Vsersion 3.0
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

	// 显示登录界面
	public function login()
	{	
		// 检查session中的登录信息
		if( !empty($_SESSION["currentUserName"]) && !empty($_SESSION["currentPassWord"]))
		{	
			// 保存登录用户的位置信息
			$this->saveLoginInfo($_SESSION["currentUserName"]);
			$this->success('你已经登录过了！session有你的登录信息！正在跳转...',U('Index/index'),5);
		}
		else
		{
			$this->display();
		}
	}//f




	// 检查登录
	public function checkLogin()
	{
		if(!IS_POST) $this->error( '非法访问！' );

		$username    = trim( I('post.username') );
		$code        = trim( I('post.code'));
		$password    = md5(trim( I('post.password') ));

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
			// 调用 检查用户信息
			$this->checkUser($username,$password);
		}
	}//f


	// 检查用户信息
	public function checkUser($username,$password)
	{	
			// 支持使用绑定账号登录
			$map 	         = array();
			$map["username"] = $username;
			$authInfo        = Rbac::authenticate($map);

			// 查询表单提交过来的用户名的用户信息
			$userInfo = M('User')->where( array( 'username'=>$username ) )->field( 'status,num' )->find(); 
			$_SESSION["oldNum"] = $userInfo['num'];

			// 判断账户有没有被禁用
			if( $userInfo['status'] === '0')
			{
				$this->error('您的账户已被禁用！');
			}
			else
			{
				// 检查是否存在该账户
				if( false === $authInfo )
				{
					$this->error('账户不存在！');
				}
				else
				{	
					// 检查密码是否匹配
					if( $authInfo['password'] != $password )
					{
						$this->error("账户信息有误！");
					}

					if( $authInfo['username'] == 'admin' )
					{
						$_SESSION["admin"] = true;
					}
					
					$_SESSION[C('USER_AUTH_KEY')] = $authInfo['id'];

					// 保存当前的用户名密码到当前回话中，超过一个月就过期 3600*24*7*4
					cookie("PHPSESSID",$_COOKIE["PHPSESSID"],3600*8);
					session(array('name'=>'currentUserName','expire'=>3600*8));
					session(array('name'=>'currentPassWord','expire'=>3600*8));
					session("currentUserName",$username);
					session("currentPassWord",$password);

					// 缓存访问权限
					Rbac::saveAccessList(); 

					// 保存登录用户的位置信息
					$this->saveLoginInfo($username);
					$this->success('登录成功！',U('Index/index'),1);
				}

			}
	}//f


	// 保存登录用户的位置信息
	public function saveLoginInfo($username)
	{
		/**
		 * @param  $url     string 请求的地址
		 * @param  $data    array  请求的数据
		 * @param  $cookie  string 请求的cookie
		 * @param  $timeout int    请求超时秒数 默认5
		 * @return curl_exec的结果
		 */
		// 获得当次的登录信息
		$url  = 'http://api.map.baidu.com/location/ip?ak=4c9dcc281e73f6511fa0107a1502266c&coor=bd09ll';
		$addrInfo = curl($url,'',true);
		$data['last_time']    = time();
		$data['last_ip']      = getIp() ;
		$data['last_area']    = $addrInfo['content']['address'];
		$data['login_status'] = 1;
		if(isset($_SESSION["oldNum"]))
		{
			$data['num']      = $_SESSION["oldNum"] + 1;
		} 
		M('User')->where( array("username"=>$username) )->save($data);
	}//f


	// 退出登录
	public function loginout()
	{	
		// 如果存在用户认证标识
		if( isset( $_SESSION[C('USER_AUTH_KEY')] ) )
		{
			// 更改用户的登录状态
			$data['login_status'] = 0;
			M('User')->where( array("id"=>$_SESSION['authId']) )->save($data);

			// 销毁并释放 SESSION
			session(null);
			session_destroy();

			// 销毁 COOKIE
			cookie(null);
			
			$this->success('退出成功！',U("Public/login",1));
		}
		else
		{
			$this->error('您还没登录！3秒后转去登录页面',U("Public/login",1));
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
		upload();
	}


}//c