<?php 
	
	/**
	 * @param  $data 	    array       要操作的二维数组	
	 * @param  $field 	    string      要提取的字段名称
	 * @return $result      array       提取二维数组中指定字段的值的集合 
	 */
	function i_array_column($data,$field)
	{	
		$result = null;
		if(function_exists('array_column'))
        {
            $result    = array_column($data,$field);
        }
        else
        {	
        	$n = count($data);
            for ($i=0; $i < $n; $i++) 
            { 
                $result[] = $data[$i][$field];
            }
        }

		return $result;
	}//f


	/**
	 * 发起curl请求 获得数据 
	 * @param  $url     	string  	请求的地址
	 * @param  $data    	array   	请求的数据
	 * @param  $toArray 	boolean 	返回的执行结果是否转为数组
	 * @param  $cookie  	string  	请求的cookie
	 * @param  $timeout 	int     	请求超时秒数 默认5
	 * @return curl_exec的执行结果 | $result array
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



	/**
	 * 公共单文件上传函数
	 * @param $savePath    string       保存文件的目录
	 * @param $exts        array        允许上传的文件类型
	 */
	function upload($savePath='album')
	{
		$upload = new \Think\Upload();
		//上传文件大小的最大值
		$upload->maxSize  = 0; 
		$upload->exts     = array('jpg', 'gif', 'png', 'jpeg','mp4');
		$upload->rootPath = './Public/uploads/';
		//文件上传的根目录 默认./Public/uploads
		$upload->savePath = $savePath; 
		$info 			  = $upload->upload();
		return $info;
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