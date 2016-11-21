<?php
namespace app\admin\validate;

use think\Validate;

class Teacher extends Validate
{

	protected $rule = [

		'sid'		=> 'require|number',
		'tname'		=> 'require|min:2',
		'connect'	=> 'require',
		'summary'	=> 'require',

	];

	protected $message = [

		'sid.require'		=> '父板块Id必填',
		'sid.number'		=> '父板块Id是数字',
		'tname.require'		=> '教师名必填',
		'tname.min'			=> '教师名长度为2个',
		'connect.require'	=> '教师名链接必填',
		'summary.require'	=> '教师说明必填'


	];

}