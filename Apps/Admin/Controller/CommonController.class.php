<?php
    /**
     * @author   刘满 
     * @email   635549913@qq.com
     * @Data     2015-04-25
     * @Function 初始化
     * @Vsersion 2.0
     */
namespace Admin\Controller;
use Think\Controller;
use Org\Util\Rbac;
class CommonController extends Controller 
{
  	public function _initialize()
  	{
  		// 用户权限检查 如果当前的模块 不属于 默认无需认证模块
  		if( C('USER_AUTH_ON') && !in_array( MODULE_NAME ,explode( ',',C('NOT_AUTH_MODULE') ) ) )
  		{	
  			// 如果需要验证
  			if( !Rbac::AccessDecision() )
  			{
  				// 如果没有用户认证SESSION标记
  				if( !$_SESSION[C('USER_AUTH_KEY')] )
  				{
  					// 如果游客可访问
  					if( C('GUEST_AUTH_ON') )
  					{
  						if( !isset( $_SESSION["_ACCESS_LIST"] ) )
  						{
  							Rbac::saveAccessList( C('GUEST_AUTH_ID') );
  						}
  					}
  					else
  					{
  						// 无登陆，禁止游客访问，无权限页面  直接跳转到认证网关
  						$this->redirect(C('USER_AUTH_GATEWAY'));
  					}

  				}
  			}
  		}
  	}
    



}//c