<?php

namespace app\index\model;

use think\Model;
use think\Request;
//use traits\model\SoftDelete;

class User extends Model {

    //use SoftDelete;

    //protected static $deleteTime = 'delete_time';
    protected $insert = ['password'];

    public function setPasswordAttr($value) {
        return md5($value);
    }

}
