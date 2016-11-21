<?php
namespace app\admin\controller;

use think\Controller;
use app\admin\model\Section;
use app\admin\model\Teacher;
use think\Loader;
use think\Db;
use think\Session;

class Sort extends Controller
{
	//分类界面
	public function classQuery()
	{
		if (!Session::get('username')) {
			
			return $this -> fetch('index/login');

		}
		$list = Db::name('section') -> where("delete_time=0") -> paginate(5);
		$page = $list -> render();

		foreach ($list as $key => $value) {
			
			$sid = $value['sid'];

			$Tlist = Db::name('teacher') -> where("delete_time = 0") -> select();

		}

		

		return View('',compact('list','page','Tlist'));
	}
	//添加大分类的html界面
	public function classadd()
	{

		return $this -> fetch();
	}
	
	//处理提交的大分类
	public function checkclassadd()
	{
		$validate = Loader::validate('Section');
		
		if (!$validate -> check(input('post.'))) {
			
			$this -> error($validate -> getError());
			exit;
			
		}
		
		$section = new Section($_POST);
		
		$list = $section -> allowField(true) -> save();

		if ($list) {
			
			$this -> redirect('sort/classQuery');
			
		} else {
			
			$this -> error('添加数据失败');
			
		}
		
		
	}
	
	//修改大板块
	public function classupdate(Section $section,$sid)
	{
		$list = $section -> where("sid = $sid") -> select();
		
		
		return View('',compact('list'));
	}
	
	public function checkUpdateSort(Section $section)
	{
		$validate = Loader::validate('Section');
		
		if (!$validate -> check(input('post.'))) {
			
			$this -> error($validate -> getError());
			exit;
		}
		
		$list = $section -> data(input('post.'),true) -> isUpdate(true) -> save();
		
		if ($list) {
			
			$this -> redirect('Sort/classQuery');
			
		} else {
			
			$this -> error('更新数据失败');
			
		}
	}
	
	//删除大板块
	public function sectionDelete(Section $section,$sid)
	{
		if ($section::destroy($sid)) {
			
			$this -> redirect('sort/classQuery');
			
		} else {
			
			$this -> error('删除失败');
			
		}
	}
	
	
	//显示小分类界面
	public function subjectquery($sid)
	{
		
		$list = Db::name('teacher') -> where("sid = $sid") -> where("delete_time = 0") -> paginate(5);
		$page =	$list -> render();
		//得到主板块的id
		$sList = Db::name('section') -> where("sid = $sid") -> select();

		if ($list) {

			return View('',compact('list','sList','page'));

		} else {

			$this -> error('不存在小数据');

		}
	}
	//添加小分类的html界面
	public function subjectAdd($sid)
	{
		if ($sid) {

			return View('',compact('sid'));

		} else {

			$this -> error('未查找到父级板块');

		}
	}

	//执行添加程序
	public function checkSubjectAdd()
	{//dump(input('post.'));die;
		$tname = input('post.tname');
		
		$sid   = input('post.sid');


		$list = Db::name('teacher') -> where("sid = $sid") ->where("tname","$tname")-> paginate(10);

		$sName = " ";

		foreach ($list as $value)
		{

				$sName = $value['tname'];
		}

	
		if ($tname == $sName) {

			$this -> error('教师姓名已存在，无需重新输入');

		}

			$validate = Loader::validate('Teacher');

		if (!$validate -> check(input('post.'))) {
			
			$this -> error($validate -> getError());

		} 

		$tehcher = new Teacher($_POST);
		
		$check = $tehcher ->allowField(true) -> save();

		if ($check) {
			
			$this -> success("添加成功");

		} else {
			
			$this -> error('添加教师失败');
		}		


		
	}

	//删除教师
	public function tDelete($tid)
	{
		if (Teacher::destroy($tid)) {
			
			$this -> success('删除成功');

		} else {
			
			$this -> error('删除失败');

		}
		
	}

	//修改教师
	public function tEdit($tid)
	{
		$list = Db::name('teacher') -> where("tid = $tid") -> select();

		if ($list) {
			
			return View('',compact('list'));


		} else {
			
			$this -> error('修改教师板块失败');
		}
		
	}
	
	//提交需要修改的内容
	public function checkEdit($tid)
	{
		$teacher = new Teacher;

		$list    = $teacher -> save($_POST,['tid' => $tid]);

		if ($list) {
			
			$this -> success('修改成功');

		} else {
			
			$this -> error('修改失败');
		}
		
	}
	
}