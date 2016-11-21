<?php
namespace app\admin\model;
use think\Model;
use traits\model\SoftDelete;

class User extends Model
{
	use SoftDelete;
	protected static $deleteTime = 'delete_time';
	
	protected $auto = ['password'];
	
	protected function setPasswordAttr($value)
	{
		return md5($value);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}