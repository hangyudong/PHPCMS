<?php
namespace app\admin\validate;

use think\Validate;

class Section extends Validate
{
	protected $rule = [
	
		'stopic'	=> 'require|min:3',
		'sname'		=> 'require|min:2',
		'sform'		=> 'require|min:3',
		'scontent'	=> 'require|min:4'
	
	];
	
	protected $message = [
		
		'stopic.require'	=> '板块主题必填',
		'stopic.min'		=> '板块主题最少3个长度',
		'stopic.sname'		=> '板块的名字必填',
		'stopic.min'		=> '板块名字最少2个长度',
		'sform.require'		=> '板块样式必填',
		'sform.min'			=> '板块样式最小值为3个长度',
		'scontent.require'	=> '板块的内容必填',
		'socntent.min'		=> '板块内容最小值为4个长度',
	
	];
}