<?php
namespace app\admin\validate;

use think\Validate;

class Notify extends Validate
{
	protected $rule = [

		'nconnect'	=> 'require|min:3',
		'nform'		=> 'require|min:2',
		'nname'		=> 'require|min:2',
		'nconnect'	=> 'require'
	];

	protected $message = [

		'nconnect.require' 	=> '连接必填',
		'nconnect.min'		=> '连接的最小两个长度',
		'nform.require'		=> '样式必填',
		'nform.min'			=> '样式长度最少两个',
		'nname.require'		=> '标签内容必填',
		'nname.min'			=> '标签长度最小值两个',
		'nconnect.require'	=> '内容必填'		

	];

}