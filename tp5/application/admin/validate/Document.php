<?php

namespace app\admin\Validate;

use think\Validate;

class Document extends Validate
{
	protected $rule = [
		
		'rname' 	=> 'require|length:3,50',
		'rconnect'	=> 'require|length:3,50',
	
	];
	
	protected $message = [
	
		'rname.require' 	=> '资源名必填',
		'rname.length'		=> '资源名长度在3,50之间',
		'rconnect.require'	=> '资源链接必填',
		'rconnect.length'	=> '资源连接的长度在3,50之间'
	
	
	];
	
}