<?php

namespace app\admin\validate;

use think\Validate;


class Head extends Validate
{
	protected $rule    = [

		'htitle'	=> 'require|min:2',
		'sid'		=> 'require',
		'hcontent'	=> 'require|min:2',
		'hconnect'	=> 'require',

	];

	protected $message = [

		'htitle.require'	=> '标题必填',
		'htitle.min'		=> '标题最少两个长度',
		'sid.require'		=> '请添加大板块',
		'hcontent.require'	=> '内容必填',
		'hcontent.min'		=> '内容最小长度为两个',
		'hconnect.require'	=> '连接必填'
	];
}