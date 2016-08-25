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
					$this->error('cookie中的密码错误！请重新登录吧！',U("Public/login"));
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

			// 调用 检查用户信息 方法 
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
			$userInfo = M('User')->where( array( 'username'=>$username ) )->field( 'status' )->find(); 

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

					// 保存当前登录成功的用户名
					$_SESSION['currentUserName'] = $authInfo['username'];
					// 缓存访问权限
					$s = Rbac::saveAccessList(); 
					$this->success('登录成功！',U('Index/index'),1);
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

	public function create()
	{
		// 模拟提交	 
		set_time_limit(0);
		for ($i=0; $i < 1; $i++) 
		{ 
			// 初始化
			$ch = curl_init();
			// 请求的网址
			$url    = "www.zhihu.com/collection/create";
			$cookie = 'l_n_c=1; q_c1=deb55da3eb5b43bf926bf922c0968326|1472114937000|1472114937000; _xsrf=7a7aae68eef04d38dce7b55ef4a1d883; cap_id="YjU3OTE0MjQ5NDYyNGU1ZGFiN2UxMTg3N2NmZWFjZjA=|1472114937|3bfe581d0ecf51a83b6517d8fa7ace0c2e90c737"; l_cap_id="YjEwNjc0MGE3MzBkNDBkMGE3MGQyNDlkMDQ1NDNiMTg=|1472114937|c85f4a13cdb5c91f731f61e87134297b2050fe4b"; d_c0="AABAw4BMcAqPTvQ5iyY6watBY_rsMtP_ELA=|1472114939"; _zap=a621b57f-78ff-4c2d-98e4-1382562847dc; _za=d93e6d9d-2576-4120-9f01-5150a726a386; __utma=51854390.1293169976.1472114912.1472114912.1472114912.1; __utmb=51854390.12.9.1472115259392; __utmc=51854390; __utmz=51854390.1472114912.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); __utmv=51854390.100--|2=registration_date=20160824=1^3=entry_date=20160824=1; __utmt=1; login="ODVkYzcxY2QxYTRkNGQ2MWE4OWNjMzFiNDkwNzc0Y2I=|1472115242|e3431a76a82ddae0c02a19b64f2b672f8c09ad64"; a_t="2.0AHBAozJibwoXAAAAWD_mVwBwQKMyYm8KAABAw4BMcAoXAAAAYQJVTSo_5lcAhL9B0_ik9iA4MdNbieOfx7KVLwURnbC_1c4e0QzE5nvT8Sv8vcWzoA=="; z_c0=Mi4wQUhCQW96Smlid29BQUVERGdFeHdDaGNBQUFCaEFsVk5Lal9tVndDRXYwSFQtS1QySURneDAxdUo0NV9Ic3BVdkJR|1472115288|99109375d455f3843c7a23dd52d69b3d48fa70a1';
			$data   = 'title=zhongyi4&description=zhongyi4&is_public=1&answer_id=42977126&_xsrf=7a7aae68eef04d38dce7b55ef4a1d883';
			curl_setopt($ch, CURLOPT_URL, $url);
			curl_setopt($ch, CURLOPT_HEADER,1);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			$rand = mt_rand(0,254);
			$c =  "CLIENT-IP:58.".mt_rand(0,254).".".mt_rand(0,254).".".mt_rand(0,254)."";
			$x =  "X-FORWARDED-FOR:58.".mt_rand(0,254).".".mt_rand(0,254).".".mt_rand(0,254)."";
			curl_setopt($ch1, CURLOPT_HTTPHEADER, array($c,$x,"X-Requested-With: XMLHttpRequest","application/x-www-form-urlencoded; charset=UTF-8", "Content-length: ".strlen($data)));
			curl_setopt($ch, CURLOPT_COOKIE, $cookie);
			curl_setopt($ch, CURLOPT_POST, true);
			curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
			curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0');
			curl_setopt($ch, CURLOPT_REFERER, 'https://www.zhihu.com/people/xiao-qiu-29-75');
			$s = curl_exec($ch);
			echo($s);
		}
		echo 'ok';
	}






}//c