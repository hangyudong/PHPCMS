<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\User;
use app\admin\model\Section;
use app\admin\model\Teacher;
use app\admin\model\Author;
use app\admin\model\Resource;
use app\admin\model\Video;
use app\admin\model\Notify;
use app\admin\model\Head;
use think\Db;
use think\Session;

class Assess extends Controller
{
	//回收站管理
	
	//用户管理
	public function user(User $user)
	{
		if (!Session::get('username')) {
			
		 	return 	$this -> fetch('index/login');
		 	exit;
		}
		$list = Db::name('user') ->where("delete_time > 0") -> paginate(10);
		
		$page = $list -> render();
		
		return View('',compact('list','page'));
		
	}
	
	//恢复用户
	public function useredit($uid)
	{
		$user = new User;
		
		$list = $user -> save(['delete_time' => '0'],['uid' => $uid]);
		
		if ($list) {
			
			$this -> redirect('Assess/user');
			
		} else {
			
			$this -> error('恢复失败');
			
		}
	}
	//真删除用户
	public function userdelete()
	{
		$uid  = input('get.uid');
		$user = Db::name('user');

		
		$list = $user -> where("uid = $uid") -> delete();
		
		
		if ($list) {
			
			echo json_encode(1);

		} else {

			echo json_encode(2);
		}
		
		
	}
	
	//查询指定用户
	public function userSelect()
	{
		$user = Db::name('user');
		//查询指定用户
		$username = input('get.username');
		$list = $user ->where("delete_time > 0") -> where("username","like","%$username%") ->paginate(10);
		
		$page = $list -> render();
		
		if ($list) {
			
			return View('',compact('list','page'));
			
		} else {
			
			$this -> error('没有查到指定的用户');
			
		}
		
	}
	
	//大板块管理
	public function section()
	{
		//搜索出被软删除的数据
		
		$section = Db::name('section');
		
		$list = $section -> where("delete_time > 0") -> paginate(10);
		
		$page = $list -> render();
		
		if ($list) {
			
			return View('',compact('list','page'));
			
		} else {
			$this -> error('没有数据');
		}
	}
	
	//恢复被大板块删除的数据
	
	public function sectionEdite($sid)
	{
		$section = new Section();
		$list = $section -> save(['delete_time' => 0],['sid' => $sid]);
		if ($list) {
			
			$this -> redirect('Assess/section');
			
		} else {
			
			$this -> error('恢复失败');
			
		}
	}
	
	//真删除大板块
	public function sectionDelete(Section $section,$sid)
	{
		if ($section::destroy($sid,true)) {
			
			$this -> redirect('Assess/section');
			
		} else {
			
			$this -> error('删除失败');
			
		}
	}
	
	//模糊匹配数据
	public function sectionSelect()
	{
		$section = Db::name('section');
		
		$sec = input('get.stopic');
		
		$list = $section -> where('delete_time > 0')-> where("stopic","like","%$sec%")  -> paginate(10);
		
		$page = $list -> render();
		
		if ($list) {
			
			return View('',compact('list','page'));
			
		} else {
			
			$this -> error('没有匹配到');
			
		}
		
	}
	
	//简介管理
	public function author()
	{
		$author = Db::name('author');
		
		$list = $author -> where('delete_time > 0') ->paginate(10);
		
		$page = $list -> render();
		
		if ($list) {
			
			return View('',compact('list','page'));
			
		} else {
			
			$this -> error('查询数据失败');
			
		}
		
		
		
	}
	
	//恢复简介数据
	
	public function authorEdite($aid)
	{
		$author = new Author();
		
		$list = $author -> save(['delete_time' => 0],['aid' => $aid]);
		
		if ($list) {
			
			$this -> redirect('Assess/author');
			
		} else {
			
			$this -> error('恢复失败');
			
		}
		
	}
	
	//删除简介数据
	public function authorDelete($aid)
	{
		if (Author::destroy($aid,true)) {
			
			$this -> redirect('Assess/author');
			
		} else {
			
			$this -> error('删除简介失败');
			
		}
	}
	
	//资源管理
	public function resource()
	{
		$resource = Db::name('resource');
		//查找出被软删除的数据
		$list = $resource -> where('delete_time > 0') -> paginate(10);
		
		//分页
		$page = $list -> render();
		
		if ($list) {
			
			return View('',compact('list','page'));
			
		} else {
			
			$this -> error('查找资源失败');
			
		}
		
		
	}
	
	//删除资源
	public function resourceDelete($rid)
	{
		if (Resource::destroy($rid,true)) {
			
			$this -> redirect('Assess/resource');
			
		} else {
			
			$this -> error('删除失败');
			
		}
	}
	
	public function resourceEdite($rid)
	{
		$resource = new Resource();
		
		$list = $resource -> save(
			
			['delete_time' => 0],
			['rid' => $rid]
		
		);
		
		if ($list) {
			
			$this -> redirect('Assess/resource');
			
		} else {
			
			$this -> error('数据恢复成功');
			
		}
	}
	//模糊查询资源
	public function resourceSelect()
	{
		
		$rname = input('get.rname');
		
		$resource = Db::name('resource');
		
		$list = $resource -> where('delete_time > 0') -> where('rname','like',"%$rname%") -> paginate(10); 
		
		$page = $list -> render();
		
		if ($list) {
			
			return View('',compact('list','page'));
			
		} else {
			
			$this -> error('没有匹配到所要查询的数据');
			
		}
	}

	//公告管理
	public function notice()
	{
		$notify = Db::name('notify');

		$list = $notify -> where('delete_time > 0') -> paginate(10);

		$page = $list -> render();

		if ($list) {
			
			return View('',compact('list','page'));


		} else {
			
			$this -> error('连接失败，查询数据失败');

		}
	}
	//真删除
	public function notifyDelete($nid)
	{
		if (Notify::destroy($nid,true)) {

			$this -> redirect('Assess/notice');

		} else {

			$this -> error('删除失败');

		}
	}

	//恢复
	public function notifyEdit($nid)
	{

		$notice = new Notify;

		$list = $notice -> save([

				'delete_time' => 0,

			],[

				'nid'	=> $nid,

				]);

		if ($list) {
			
			$this -> redirect('Assess/notice');

		} else {
			
			$this -> error('恢复失败');

		}
		

	}

	//公告的的模糊查询
	public function notifySelect()
	{
		$notice = Db::name('notify');
		$nname  = input('get.nname'); 

		$list = $notice -> where('delete_time > 0') -> where('nname','like',"%$nname%") -> paginate(10);

		$page = $list -> render();

		if ($list) {

			return View('',compact('list','page'));

		} else {

			$this -> error('没有匹配到所要查询的数据');

		}

	}

	//教师的查询
	public function teacher()
	{
		$list = Db::name('teacher') -> alias('T') -> where('T.delete_time > 0') -> join('__SECTION__ S','T.sid = S.sid') -> paginate(5);

		 $page = $list -> render();

		if ($list) {

			return View('',compact('list','page'));

		} else {

			$this -> error('查询教师失败');
		}

	}


	//教师的真删除
	public function tDelete($tid)
	{
		if (Teacher::destroy($tid,true)) {

			$this -> redirect('Assess/teacher');

		} else {

			$this -> error('删除失败');

		}	
	}

	//老师板块的恢复
	public function tEdit(Teacher $teacher,$tid)
	{
		//恢复老师板块
		
		$list = $teacher
				->save(

					['delete_time'	=> 0],
					['tid'			=> $tid]

					);


				if ($list) {
				
				$this -> redirect('Assess/teacher');


			} else {
				
				$this -> error('恢复失败');
				
			}		

	}

	//教师的模糊查询
	public function teacherSelect()
	{

		$tname = input('get.tname');

		$list = Db::name('teacher') 
				-> alias('T')
				-> where('T.delete_time > 0')
				-> where('T.tname','like',"%$tname%")
				-> join('__SECTION__ S','T.sid = S.sid')
				-> paginate(5);

		$page = $list -> render();

		if ($list) {
			
			return View('teacher',compact('list','page'));

		} else {
			
			$this -> error('没有匹配到所要查询的数据');
		}
		

	}

	//视屏回收站
	public function video()
	{
		$list = Db::name('video')
				->alias('V')
				->join('__SECTION__ S','V.sid = S.sid')
				->join('__TEACHER__ T','V.tid = T.tid')
				->where('V.delete_time > 0')
				->field('V.create_time,V.update_time,V.vid,V.vname,V.vconnect,T.tname,S.stopic')
				->paginate(5);

		$page = $list -> render();

		if ($list) {
			
			return View('',compact('list','page'));

		} else {
			
			$this -> error('没有查询到数据');

		}
		
		
	}
	//恢复
	public function vEdit($vid)
	{
		$video = new Video;

		$list = Db::name('video') -> where('vid',$vid) -> update([

				'delete_time' => 0
			]);
		if ($list) {
			
			$this -> redirect('Assess/video');

		} else {
			
			$this -> error('恢复失败');
		}
		
	}
	//删除
	public function vDelete($vid)
	{
		if(Video::destroy($vid,true)){

			$this -> redirect('Assess/video');

		} else {

			$this -> error('删除失败');

		}
	}
	//查询
	public function videoSelect()
	{
		$vname = input('get.vname');

		$list  = Db::name('video')
				-> alias('V')
				-> join('__SECTION__ S','V.sid = S.sid')
				-> join('__TEACHER__ T','V.tid = T.tid')
				-> where('V.vname','like',"%$vname%")
				-> where('V.delete_time > 0')
				-> paginate(5);
		$page  = $list -> render();

		if ($list) {

			return View('video',compact('list','page'));

		} else {

			$this -> error('没有查询到匹配的数据');

		}

	}


	//标题管理
	public function head()
	{
		$list = Db::name('head')
				->alias('H')
				->where('H.delete_time > 0')
				->join('__SECTION__ S','H.sid = S.sid')
				->paginate(5);
		$page = $list -> render();

		if ($list) {
			
			return View('',compact('list','page'));

		} else {
			
			$this -> error('没有删除的标题');

		}
		

	}
	
	//标题恢复
	public function headEdit($hid)
	{
		$list = Db::name('head') -> where('hid',$hid) ->update(['delete_time' => 0]);

		if ($list) {
			
			$this -> redirect('Assess/head');

		} else {
			
			$this -> error('标题恢复失败');

		}
		
	}

	//标题真删除
	public function headDelete($hid)
	{
		if(Head::destroy($hid,true))
		{
			$this -> redirect('Assess/head');
		} else {
			$this -> error('标题删除成功');
		}
	}
	
	//查标题
	public function headSelect()
	{
		$htitle = input('post.htitle');

		$list = Db::name('head')
				->alias('H')
				->join('__SECTION__ S','H.sid = S.sid')
				->where('H.htitle','like',"%$htitle%")
				->where('H.delete_time > 0')
				->paginate(5);

		$page = $list -> render();

		if ($list) {
			
			return View('head',compact('list','page'));

		} else {
			
			$this -> error('没有匹配到所要查询的数据');
		}
		

	}

}



















