<?php

/**
 * @author 刘满
 * @email  635549913@qq.com 
 * @date   2016-08-11 15:28:00
 * @info   后台首页控制器
 */

namespace Admin\Controller;
use Think\Controller;
class IndexController extends CommonController 
{

    // 显示后台首页模板
  	public function index()
    {
        $this->display();
    }


    // 显示后台顶部模板
    public function top()
    {
        $this->display();
    }


    // 显示后台底部信息栏
    public function footer() 
    {
        $this->display();
    }


    // 显示菜单容器
    public function menu() 
    {
        $this->display();
    }


    // 显示系统管理菜单
    public function sysMenu()
    {
        $this->display();
    }


    // 显示网站管理菜单
    public function siteMenu()
    {
        $this->display();
    }

    // 显示网站在线客服菜单
    public function kefuMenu()
    {
        $this->display();
    }

    // 显示网站留言系统菜单
    public function msgMenu()
    {
        $this->display();
    }


    // 显示系统设置模板
    public function sysconfig()
    {
        
        $data['DOMAINS']            =        C('DOMAINS');
        $data['IP_ADDER']           =        C('IP_ADDER');
        $data['DEFAULT_TPL']        =        C('DEFAULT_TPL');
        $data['WATER_MARK']         =        C('WATER_MARK');
        $data['HTML_CACHE_ON']      =        C('HTML_CACHE_ON');
        $this->assign('data',$data);
        $this->display();
    }

    // 系统设置
    public function setConfig()
    {
        // 公共配置文件
        $file = COMMON_PATH.'Conf/config.php';

        // 读取配置文件
        $configStr = file_get_contents('./Apps/Common/Conf/config.php');

        // 匹配各项配置
        $n = preg_match_all('/\'(.*)?\'\s*=>\s*\'(.*)?\',/', $configStr, $m);

        // 遍历表单提交过来的的需要修改的数据
        foreach ($_POST as $key => $value) 
        {
            // 替换表单提交过来的新数据
            $configStr = preg_replace("/\'{$key}\'\s*=>\s*\'(.*)?\'/", "'{$key}'=>'{$value}'", $configStr);
        }
        // var_dump($configStr);exit;
        if(file_put_contents( $file, $configStr) )
        {
            $this->success('修改成功！');
        }
        else
        {
            $this->error('修改失败！');
        }



    }



    // 显示数据库替换模板
    public function showTables()
    {
        echo '数据库替换';
    }

    

    // 数据库替换
    public function replaceData()
    {
        echo '数据库替换';
    }




     // 后台主页右边区域内容
    public function main()
    {

        // 获得天气预报
        $data = $this->getWeatherData();
        // 如果没有错误 且请求成功返回数据
        if($data['error'] === 0 && $data["status"] === 'success')
        {   
            $this->assign('list', $data['results'][0]['weather_data']);
            $this->assign('tipt1',$data['results'][0]['index'][0]['des']);
            $this->assign('tipt2',$data['results'][0]['index'][3]['des']);
        }
        else
        {
            $this->assign('empty','<span style="color:red;">可能由于网络原因，导致获取天气超时...请稍后刷新试试...</span>');
        }

        // 获得系统和服务器信息
        $info = $this->getInfo();
        $this->assign('info',$info);
        $this->display();
    }//f


    /**
     * @Function: 百度天气API   获取未来5天的天气预报
     * @author 刘满
     * @param  string  $city 城市名称 : 广州
     * @email  635549913@qq.com
     * @http://api.map.baidu.com/telematics/v3/weather?location=%E5%B9%BF%E5%B7%9E&output=json&ak=4c9dcc281e73f6511fa0107a1502266c
     * @return Array $data
    */
    private function getWeatherData($city='广州')
    {
        // 默认地区
        $area = urldecode($city);
        $url  = "http://api.map.baidu.com/telematics/v3/weather?location={$area}&output=json&ak=4c9dcc281e73f6511fa0107a1502266c";
        // 超时时间
        $timeout = 5;
        
        $ch = curl_init();
        curl_setopt($ch,CURLOPT_URL,$url);
        // 将结果返回 不自动输出
        curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
        curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,$timeout);
        
        // 获得返回的数据
        $data = json_decode(curl_exec($ch),true);
        curl_close($ch);
        return $data;
    }

    
    /**
     * @Function 获得系统和服务器信息
     * @param  string $msg  错误信息
     * @param  array  $data 参数容器
     * @return array  $data 返回参数数组      
     */
    private function getInfo()
    {
        $Msg = null;

        // 链接数据库
        $mysql = mysqli_connect(C('database.hostname'),C('database.username'),C('database.password'));
        if(is_object($mysql))
        {
            $data['mysqlVersion']      = $mysql->server_info;
        }
        else
        {
            $msg .= '数据库链接失败！请检查用户名和密码是否正确！<br>';
        }

        // 检查GD图像处理库
        $gd_info = gd_info();


        $data['PHP_OS']            = PHP_OS;
        $data['SERVER_SOFTWARE']   = $_SERVER["SERVER_SOFTWARE"];
        $data['maxSize']           = ini_get('post_max_size')      ? ini_get('post_max_size')            : '<span class="label label-danger">禁止上传数据</span>' ;
        $data['maxExeTime']        = ini_get('max_execution_time') ? ini_get('max_execution_time')       : '永久执行' ;
        $data['gdVersion']         = $gd_info['GD Version']        ? $gd_info['GD Version']              : '<span class="label label-danger">未安装GD库扩展！</span>'; 
        $data['curlStatus']        = function_exists('curl_init')         ? '<span class="glyphicon glyphicon-ok"></span> 支持' : '<span class="glyphicon glyphicon-remove"></span> 不支持' ;
        $data['fileGetStatus']     = function_exists('file_get_contents') ? '<span class="glyphicon glyphicon-ok"></span> 支持' : '<span class="glyphicon glyphicon-remove"></span> 不支持' ;
        $data['phpVersion']        = PHP_VERSION; 

        // dump($data);exit;
        // 获取备份文件的信息
        // $path = './Public/blackup/';
        // $dir = opendir($path);
        // while($row = readdir($dir)){
        //     if($row !== '.' && $row !== '..'){
        //         $filectime[] = filectime($path.$row);
        //     }
        // }
        // $lastUserInfo = session('lastUserInfo');
        
        // 系统信息数组
        
        // $data['userConut()']       = session('userConut()');
        // $data['blackupTime']       = $filectime                    ? date("Y-m-d H:i:s",end($filectime)) : '<span class="label label-danger">没有备份数据！</span>';
        // $data['lastUsername']      = $lastUserInfo['username'];
        // $data['lastTime']          = $lastUserInfo['last_time'];
        // $data['lastArea']          = $lastUserInfo['last_area'];
        
        return $data;
    }

    

    // 一键更新网站
    public function refresh()
    {
        $path   = './Apps/Runtime';
        $status = $this->delDir($path);
        echo '更新成功！';
    }



    // 删除缓存目录
    private function delDir($path)
    {   
        // 如果能打开这个目录句柄
        if( $handle = opendir($path) )
        {
            while( $filename = readdir($handle) )
            {
                // 如果是当前目录句柄或者是上一级目录
                if( $filename == '.' or $filename == '..' ) continue;

                // 文件的路径
                $filePath = $path."/".$filename;

                // 如果是一个目录，则递归调用自身，继续执行
                if( is_dir($filePath) )
                {   
                    $this->delDir($filePath);
                }

                // 如果是一个文件，则直接删除
                if( is_file($filePath) )
                {   
                    // 判断是否是日志文件
                    if( is_int(strpos( $filename,'log' )) ) continue;
                    if(unlink($filePath))
                    {
                        echo "<span style='color:red'>已删除缓存文件:　".$filename."</span><br>";
                    }
                }
            }//w

            // 关闭资源句柄
            closedir($handle); 
            if( count(scandir($path)) == 2 )
            {
                if(rmdir($path))
                {
                    echo "<span style='color:green'>已删除缓存目录:　".$path."</span><br>"; 
                }
            }

        } 
       
    }//f
   


}//c