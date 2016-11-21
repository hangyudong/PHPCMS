<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Resource;
use think\Db;
use think\Loader;
use think\Session;

class Document extends Controller
{
	//首页显示连接界面
	public function documentQuery(Resource $resource)
	{
		if (!Session::get('username')) {
			
			return $this -> fetch('index/login');

		}

		$list = Db::name('resource') -> where('rid > 0')->where('delete_time = 0') -> paginate(10);
		$page = $list -> render();
		
		return View('',compact('list','page'));
	}
	
	//指向添加的html界面
	public function documentadd()
	{
		return $this -> fetch();
	}
	
	//添加新资源
	public function saveResource()
	{
		$validate = Loader::validate('Document');
		
		if (!$validate -> check(input('post.'))) {
			
			$this -> error($validate -> getError());
			exit;
			
		}
		
		$resource = new Resource($_POST);
		
		$list = $resource -> allowField(true) -> save();
		
		if ($list) {
			
			$this->redirect('Document/documentQuery');
			
		} else {
			
			$this ->error('连接添加失败');
			
		}
		
	}
	//删除资源
	public function delete($rid)
	{
		
		if (Resource::destroy($rid)) {
			
			$this -> redirect('Document/documentQuery');
			
		} else {
			
		}
		
		
	}
	//编辑资源
	public function edit($rid)
	{
		$list = Db::name('resource') -> where ("rid = $rid") -> select();
		
		return View('',compact('list'));
		
		
	}
	
	//修改资源
	public function checkeidt()
	{
		$validate = Loader::validate('Document');
		
		if (!$validate -> check(input('post.'))) {
			
			$this -> error($validate -> getError());
			exit;
			
		}
		
		$resource = new Resource;
		//可以实现批量更新数据
		$list = $resource -> data(input('post.'),true)->isUpdate(true)-> save();
		
		if ($list) {
			$this -> redirect('Document/documentQuery');
		} else {
			
			$this -> error('更新失败');
			
		}
	}
	
	//查询指定的资源
	public function resourceSelect()
	{
		$rname = input('post.rname');
		
		$res   = new Resource;
		
		$list  = $res -> where('rname','like',"%$rname%") ->where('delete_time=0') -> select();
		
		return View('',compact('list'));
		
	}
	
	
	
	
}