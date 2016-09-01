<?php 
namespace Admin\Model;
use Think\Model;
class ArticleModel extends Model {

	// 自动验证
	protected $_validate = array(
			array('title','require','文档标题不能为空！'),
			array('editorValue','require','文档内容不能为空！'),
	);


	// return 上传的缩略图文件路径或者表单里填的路径
	public function getThumb($uppicName,$thumbPath)
	{
	  // 检测是否有图片上传 并且没有错误
      if($uppicName['error'] === 0 )
      {
        // 实例化图像处理类
        $image  = new \Think\Image();
        // 上传文件
        $info = upload('./article_thumb/');
        if(!$info) return false;
        $upFilePath = './Public/uploads/'.$info['uppic']['savepath'].$info['uppic']['savename'];
        $imgInfo = $image->open($upFilePath);
        $image->thumb(450,450)->save($upFilePath);
        $thumbPath = C('TMPL_PARSE_STRING.__UPS__').ltrim($info['uppic']['savepath'],'.').$info['uppic']['savename'];;
      }
      else
      { 
        // 默认缩略图
        if( empty($thumbPath) ) $thumbPath = '/Public/static/images/admin/default_thumbpic.gif';
      }
      return $thumbPath;
	}//f
	

}//c