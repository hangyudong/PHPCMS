<?php

namespace app\admin\model;

use think\Model;
use traits\model\SoftDelete;

class Author extends Model
{
	use SoftDelete;
	protected static $deleteTime = 'delete_time';
	
	
}





















