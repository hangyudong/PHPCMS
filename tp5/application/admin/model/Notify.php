<?php

namespace app\admin\model;
use think\Model;
use traits\model\SoftDelete;

class Notify extends Model
{
	use SoftDelete;
	protected static $deleteTime = 'delete_time';


}