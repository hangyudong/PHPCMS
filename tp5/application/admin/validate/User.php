<?php

namespace app\admin\validate;

use think\Validate;

class User extends Validate
{
	protected $rule = [
	
		'username'	=> 'require|length:3,8|token',
		'password'	=> 'require|confirm:repassword|length:3,8',
		'email'		=> 'email',
	];
	
	protected $message = [
	
		'username.require'	=> '用户名必填',
		'username.length'	=> '用户名长度在3到8之间',
		'password.require'	=> '密码必填',
		'password.confirm'	=> '两次密码不一致',
		'password.length'	=> '密码长度在3到8',
		'email'				=> '邮箱格式不正确',
	
	
	];
	
}