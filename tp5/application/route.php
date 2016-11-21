<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
use think\Route;
// 注册路由到index模块的News控制器的read操作
Route::rule('first/:nid','index/index/first');
Route::rule('show/:sid','index/index/show');
Route::rule('soft','index/Index/soft');
Route::rule('login','index/Sign/login');
Route::rule('register','index/Sign/register');
Route::rule('logout','index/Sign/logout');
Route::rule('checkLogin','index/Sign/checkLogin');
Route::rule('checkRegister','index/Sign/checkRegister');
Route::rule('video','index/Display/video');
Route::rule('report','index/Display/report');

return [
    '__pattern__' => [
        'name' => '\w+',
    ],
    '[hello]'     => [
        ':id'   => ['index/hello', ['method' => 'get'], ['id' => '\d+']],
        ':name' => ['index/hello', ['method' => 'post']],
    ],

];
