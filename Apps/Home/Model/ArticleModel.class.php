<?php 
namespace Home\Model;
use Think\Model;
class ArticleModel extends Model {

	/**
	 * 获取指定的文章数据
	 * @param $pid string  文章的所属栏目ID
	 */
	public function getArticle($id)
	{
		$data = M("Article")->select();
		return $data;
	}







}//f