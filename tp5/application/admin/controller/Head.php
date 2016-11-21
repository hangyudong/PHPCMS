<?php
namespace app\admin\controller;

use think\Controller;
use app\admin\model\Head as HeadModel;
use think\Db;
use think\Loader;
use think\Session;


class Head extends Controller
{
	//头文件列表
	public function headQuery()
	{
		if (!Session::get('username')) {
			
			return $this -> fetch('index/login');

		}
		$list = Db::name('head')
				-> alias('H')
				-> where(['H.delete_time' => 0,'S.delete_time' => 0])
				-> join('__SECTION__ S','H.sid = S.sid')
				-> paginate(5);

		$page = $list -> render();

		if ($list) {

			return View('',compact('list','page'));

		} else {

			$this -> error('没有数据');
		}

		
	}

	//查询
	public function headSelect()
	{
		$htitle = input('post.htitle');

	//	dump($htitle);exit;

		$list = Db::name('head')
				-> alias('H')
				-> where(['H.delete_time' => 0,'S.delete_time' => 0])
				-> join('__SECTION__ S','H.sid = S.sid')
				-> where('H.htitle','like',"%$htitle%")
				-> paginate(5);

		$page = $list -> render();

		if ($list) {
			
			return View('headQuery',compact('list','page'));

		} else {
			
			$this -> error('连接失败');

		}

	}

	//删除标题
	
	public function headDelete($hid)
	{
		if (HeadModel::destroy($hid)) {
			
			$this -> success('成功');


		} else {
			
			$this -> error('失败');
		}
		
	}

	//添加标题
	public function headAdd()
	{
		$list = Db::name('section') -> where('delete_time = 0') -> select();

		if ($list) {
			
			return View('',compact('list'));


		} else {
			
			$this -> error('请先添加板块');
		}
		
	} 
	//检查添加标题的内容
	public function saveHead()
	{
		$list = input('post.');
		$validate = Loader::validate('Head');

		if (!$validate -> check($list)) {
			
			$this -> error($validate -> getError());

		} 

		$head = new HeadModel($list);

		$data = $head -> save();

		if ($data) {

			$this -> redirect('Head/headQuery');
		} else {
			$this -> error('添加标题失败');
		}
		
	}
	//修改标题内容

	public function headEdit($hid)
	{
		$list = Db::name('head') 
		->alias('H')
		->join('__SECTION__ S','H.sid = S.sid')
		-> where('H.hid',$hid)
		-> select();

		$data = Db::name('section') -> where("delete_time = 0") -> select();

		if($list && $data) {


			return View('',compact('list','data'));

		} else {

			$this -> error('修改失败');
		}

	}

	//提交要修改的内容
	public function editHead()
	{
		$hid = input('post.hid');
		$head = new HeadModel;

		$list = $head -> save($_POST,['hid' => $hid]);

		if ($list) {
			
			$this -> redirect('Head/headQuery');


		} else {
			
			$this -> error('修改失败');
		}
		

	}




}