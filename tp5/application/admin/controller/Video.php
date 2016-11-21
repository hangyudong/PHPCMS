<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use app\admin\model\Video as VideoModel;
use app\admin\model\Section;
use think\Loader;
use think\Session;
//视屏管理
class Video extends Controller
{
	
	//视屏列表
	public function videoQuery()
	{
		if (!Session::get('username')) {
		return $this -> fetch('index/login');
	}
		//三表联合查询
		$list = Db::name('video')
				-> alias('V')
				-> where("V.delete_time = 0")
				-> where("T.delete_time = 0")
				-> where("S.delete_time = 0")
				-> join('__SECTION__ S','V.sid = S.sid')
				-> join('__TEACHER__ T','V.tid = T.tid')
				-> field('V.vid,V.vname,V.create_time,V.update_time,V.vconnect,S.stopic,T.tname')
				-> paginate(5);

		$page = $list->render();

		if ($list) {
			
			return View('',compact('list','page'));

		} else {
			
			$this -> error('没有查找到数据');

		}
		

		
	}

	//删除视屏
	public function vDelete($vid)
	{
		if (VideoModel::destroy($vid)) {
			
			$this -> redirect('Video/videoQuery');

		} else {
			
			$this -> error('删除视屏失败');

		}
		
	}
	
	//添加视屏
	public function videosAdd()
	{
		$list = Db::name('section') -> where('delete_time = 0') -> select();


		if ($list) {
			
			return View('',compact('list'));

		} else {
			
			$this -> error('请添加大板块');

		}
		
	}
	
	//ajax匹配
	public function cha()
	{
		$sid = input('post.sid');

		$data = Db::name("teacher")->where('sid',$sid) ->where("delete_time = 0")->select();

		echo json_encode($data);
	}

	//添加
	public function checkAdd() 
	{
		$data 	= input('post.');

		$validate	=  Loader::validate('Video');

		if (!$validate -> check(input('post.'))) {
			
			$this -> error($validate->getError());	

		} 
		

		$sid 		= input('post.type');
		$tid 		= input('post.smallTypeId');
		$vname 		= input('post.vname');
		$vconnect 	= input('post.vconnect');

		$video = new VideoModel;

		$video -> data([

				'sid'		=> $sid,
				'tid'		=> $tid,
				'vname'		=> $vname,
				'vconnect'	=> $vconnect	

			]);

		$list = $video -> save();

		if ($list) {
			
			$this -> redirect('Video/videoQuery');

		} else {
			
			$this -> error('添加失败');

		}

	}

	//修改
	public function vEdit($vid)
	{
		$list = Db::name('video') 
				->alias('V')
				->where('V.vid',$vid)
				->join('__SECTION__ S','V.sid = S.sid')
				->join('__TEACHER__ T','V.tid = T.tid')
				->select();

		if ($list) {
			
			return View('',compact('list'));


		} else {
			
			$this -> error('修改错误，没有查找到');
		}
		
	}
	//提交需要修改的值
	public function checkEidt()
	{
		$data = input('post.');

		$video = new VideoModel;

		$list = $video -> allowField(true) -> isupdate(true) -> save($data);

		if ($list) {

			$this -> redirect('Video/videoQuery');

		} else {

			$this -> error('修改失败');

		}

	}

	//查询video
	public function videoSelect()
	{
		$vname = input('get.vname');

		$list = Db::name('video')
				->alias('V')
				->join('__SECTION__ S','V.sid = S.sid')
				->join('__TEACHER__ T','V.tid = T.tid')
				->where([
						'V.delete_time'	=> 0,
						'S.delete_time'	=> 0,
						'T.delete_time'	=> 0,
					])
				->where('V.vname','like',"%$vname%")
				->paginate(5);

		$page = $list -> render();

		if ($list) {

			return View('videoQuery',compact('list','page'));

		} else {

			$this -> error('没有匹配到你查询的值');
		}
	}
		
}