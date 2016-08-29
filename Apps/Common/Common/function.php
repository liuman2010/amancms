<?php 

	/**
	 * 发起curl请求 获得数据 
	 * @param  $url     	string  	请求的地址
	 * @param  $data    	array   	请求的数据
	 * @param  $toArray 	boolean 	返回的执行结果是否转为数组
	 * @param  $cookie  	string  	请求的cookie
	 * @param  $timeout 	int     	请求超时秒数 默认5
	 * @return curl_exec的执行结果
	 */
	function curl($url,$data=null,$toArray=false,$cookie,$timeout=5)
	{
		$useragent  = 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0';
		$referer    = 'http://www.baidu.com/';

	    $ch = curl_init();
	    curl_setopt($ch,CURLOPT_URL,$url);
		curl_setopt($ch, CURLOPT_USERAGENT,$useragent);
		curl_setopt($ch, CURLOPT_REFERER,$referer);
		curl_setopt($ch, CURLOPT_COOKIE,$cookie);
	    
		// get方式
		if( empty($data) )
		{
	        // 将结果返回 不自动输出
	        curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
	        // 超时秒数
	        curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,$timeout);
		}

		// post方式
		if( is_array($data) )
		{
			curl_setopt($ch, CURLOPT_POST,true);
			curl_setopt($ch, CURLOPT_POSTFIELDS,$data);
		}

		// 获得返回的数据
		$result = curl_exec($ch);
		curl_close($ch);

		if($toArray == true)
		{
			return json_decode($result,true);
		}
		return $result;
	}


	// 获取用户真实IP
	function getIp()
	{ 
        $onlineip='未检测到'; 
        if(getenv('HTTP_CLIENT_IP')&&strcasecmp(getenv('HTTP_CLIENT_IP'),'unknown'))
        { 
            $onlineip=getenv('HTTP_CLIENT_IP'); 
        }

        if(getenv('HTTP_X_FORWARDED_FOR')&&strcasecmp(getenv('HTTP_X_FORWARDED_FOR'),'unknown'))
        { 
            $onlineip=getenv('HTTP_X_FORWARDED_FOR'); 
        } 

        if(getenv('REMOTE_ADDR')&&strcasecmp(getenv('REMOTE_ADDR'),'unknown'))
        { 
            $onlineip=getenv('REMOTE_ADDR'); 
        }

        if(isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'],'unknown'))
        { 
            $onlineip=$_SERVER['REMOTE_ADDR']; 
        }

        if($_SERVER["REMOTE_ADDR"] == '::1')
        {
        	$onlineip='本地局域网';
        }
        return $onlineip; 
    } 


 ?>