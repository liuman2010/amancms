<?php
    /**
     * @author   刘满 
     * @email   635549913@qq.com
     * @Data     2016-08-20 11:40:45
     * @Function 初始化
     * @Vsersion 3.0
     */
namespace Admin\Controller;
use Think\Controller;
use Org\Util\Rbac;
class CommonController extends Controller 
{
  	// public function _initialize()
  	// {
  	// 	// 用户权限检查 如果当前的模块 不属于 默认无需认证模块
  	// 	if( C('USER_AUTH_ON') && !in_array( MODULE_NAME ,explode( ',',C('NOT_AUTH_MODULE') ) ) )
  	// 	{	
  	// 		// 如果需要验证
  	// 		if( !Rbac::AccessDecision() )
  	// 		{
  	// 			// 如果没有用户认证SESSION标记
  	// 			if( !$_SESSION[C('USER_AUTH_KEY')] )
  	// 			{
  	// 				// 如果游客可访问
  	// 				if( C('GUEST_AUTH_ON') )
  	// 				{
  	// 					if( !isset( $_SESSION["_ACCESS_LIST"] ) )
  	// 					{
  	// 						Rbac::saveAccessList( C('GUEST_AUTH_ID') );
  	// 					}
  	// 				}
  	// 				else
  	// 				{
  	// 					// 无登陆，禁止游客访问，无权限页面  直接跳转到认证网关
  	// 					redirect(PHP_FILE.C('USER_AUTH_GATEWAY'));
  	// 				}

  	// 			}
  	// 		}
  	// 	}
  	// }//f


    // public function _initialize()
    // {
    //   // 用户权限检查
    //   if( C('USER_AUTH_ON') && !in_array( MODULE_NAME,explode(',',C('NOT_AUTH_MODULE') )) )
    //   {

    //     // 1.如果需要验证
    //     if( !Rbac::AccessDecision() )
    //     {
    //         // 2.没有登陆
    //         if( !$_SESSION[C('USER_AUTH_KEY')] )
    //         {
    //             // 3.游客可访问
    //             if( C('GUEST_AUTH_ON') )
    //             {
    //                 // 4.游客授权
    //                   if( !isset($_SESSION['_ACCESS_LIST']) )
    //                   {
    //                     Rbac::saveAccessList( C('GUEST_AUTH_ID') );
    //                   }
    //             }
    //             else
    //             {
    //               // 5无登录，禁止游客访问，跳到登陆页面
    //               redirect(PHP_FILE.C('USER_AUTH_GATEWAY'));
    //             }//3

    //         }//2

    //         // 6.登陆，没有权限， 如果有错误页面则定向
    //         if( C('RBAC_ERROR_PAGE') )
    //         {
    //           redirect ( C ( 'RBAC_ERROR_PAGE' ) );
    //         }
    //         else
    //         {
    //           // 7无登录，禁止游客访问，跳到登陆页面
    //           redirect(PHP_FILE.C('USER_AUTH_GATEWAY'));
    //         }


    //     }//1


    //   }
    // }//f
    

        public function _initialize() {
        // var_dump(C ( 'NOT_AUTH_MODULE' ));exit;
      // 用户权限检查
      if (C ( 'USER_AUTH_ON' ) && ! in_array ( MODULE_NAME, explode ( ',', C ( 'NOT_AUTH_MODULE' ) ) )) {
        //1.如果需要验证
        if (!Rbac::AccessDecision ()) {
          // 2.没有登陆
          if (! $_SESSION [C ( 'USER_AUTH_KEY' )]) {
            // 3.游客可访问
              if(C('GUEST_AUTH_ON')) {
                // 4.游客授权
                if(!isset($_SESSION['_ACCESS_LIST']))
                  // 保存游客权限
                  Rbac::saveAccessList(C('GUEST_AUTH_ID'));
              }else{
                // 5.无登陆，禁止游客访问，无权限页面
                  // $this->redirect('您还没登录！3秒后转去登录页面','login',3);
                  redirect(PHP_FILE.C('USER_AUTH_GATEWAY'));
                  // $this->error ( L ( '_VALID_ACCESS_' ) );
              }
          }
          // 6.登陆，没有权限， 如果有错误页面则定向
          if (C ( 'RBAC_ERROR_PAGE' )) {
            // 定义权限错误页面
            redirect ( C ( 'RBAC_ERROR_PAGE' ) );
          } 
          //7.没有定义错误页面定向，跳到登陆页面
          else{
            redirect(PHP_FILE.C('USER_AUTH_GATEWAY'));
          }
        }
      }

  }//f

  


}//c