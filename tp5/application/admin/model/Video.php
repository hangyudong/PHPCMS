<?php

namespace app\admin\Model;

use think\Model;
use traits\model\SoftDelete;

/**
* 类名是Video
* 继承Model
*/
class Video extends Model
{
	use SoftDelete;
	protected static $deleteTime = 'delete_time';
}