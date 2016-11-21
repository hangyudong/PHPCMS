<?php

namespace app\admin\Validate;

use think\Validate;

class Video extends Validate
{

	protected $rule = [

		'type' 			=> 'require|number',
		'smallTypeId'	=> 'require|number',
		'vname'			=> 'require|min:2',
		'vconnect'		=> 'require|min:2'

	];


	protected $message = [

		'type.require'			=> '大模块必填',
		'type.number'			=> '大模块不存在',
		'smallTypeId.require'	=> '教师必填',
		'smallTypeId.number'	=> '教师不存在',
		'vname.require'			=> '视屏名必填',
		'vname.min'				=> '视屏名最少俩个字',
		'vconnect.require'		=> '视屏链接必填',
		'vconnect.min'			=> '视屏链接最少俩'


	];


}