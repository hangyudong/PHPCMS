<?php
namespace app\admin\validate;
use think\Validate;

class Author extends Validate
{
	protected $rule = [
	
		'intro'		=> 'require|min:5|token',
		'goal'		=> 'require|min:10',
		'wechat'	=> 'require'
	
	];
	
	protected $message = [
		
		'intro.require'	=>'简介必填',
		'intro.min'		=>'简介最少5个',
		'goal.require'	=> '目标必填',
		'goal.min'		=> '目标最少10个字',
		'wechat.require'=> '微信必填'
		
	
	];
}































