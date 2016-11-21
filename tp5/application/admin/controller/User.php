<?php

namespace app\admin\controller;
use think\Controller;
use app\admin\model\User as UserModel;
use think\Redirect;
use think\Db;
use think\Loader;
use think\Session;

class User extends Controller
{

	//用户管理-查询	
	public function teacherQuery(UserModel $user)
	{
		if (!Session::get('username')) {
		
		return $this -> fetch('index/login');

		}

		$list = Db::name('user') -> where('delete_time = 0')->order('uid desc')-> paginate(5);
		
		$page = $list -> render();
		
		return View('',compact('list','page'));
	}
	//添加用户
	public function teachersadd()
	{
		return $this -> fetch();
	}
	//用户详情页
	public function teacherdetail($uid)
	{
		$user = Db::name('user') -> where('uid','=',"$uid") -> select();

		return View('',compact('user'));
	}
	//删除用户
	public function checkDelete(UserModel $user,$uid)
	{
		if ($user::destroy($uid)) {
			
			$this -> success('删除成功');
			
		} else {
			
			$this -> error('删除失败');
			
		}
	}
	//编辑用户
	public function userEdit(UserModel $user,$uid)
	{
		$list = $user -> where("uid = $uid") -> select();
		
		if ($list) {
			
			return View('',compact('list'));
			
		} else {
			
			$this -> error('没有找到指定的用户');
			
		}
		
	}
	
	//修改用户
	public function checkUserEdit()
	{
		
		if (input('post.password')) {
			
			$validate = Loader::validate('User');
		
			if (!$validate -> check(input('post.'))) {
			
			$this -> error($validate->getError());
			exit;
			
			}
			
			$user = new UserModel();
			
			$list = $user -> allowField(true) -> save($_POST,['uid' => input('post.uid')]);
			
			if ($list) {
				
				$this -> redirect('User/teacherQuery');
				
			} else {
				$this -> error('用户更新失败');
			}
			
		} else {
			
			$user = new UserModel;
			
			if (strlen(input('post.username')) < 3)
			{
				$this -> error('用户更新失败');
				exit;
				
			}
			
			$list = [
				
				[
				'uid'		 => input('post.uid'),
				'username'	 => input('post.username'),
				'email'		 => input('post.email')
				
				]
			
			];
			
			$data = $user -> saveAll($list);
			
			if ($data) {
				
				$this -> redirect('User/teacherQuery');
				
			} else {
				
				$this -> error('用户更新失败');
				
			}
			
		}
		
	}
	
	
	//添加用户
	public function checkAdd()
	{
		$validate = Loader::validate('User');
		
		if (!$validate -> check(input('post.'))) {
			
			$this -> error($validate->getError());
			exit;
			
		}
		
		$username = input('post.username');
		$user = UserModel::getByUsername($username);
		
		if ($user) {
			
			$this -> error('用户名已存在，请重新输入');
			exit;
			
		}
		
		$list = new UserModel($_POST);
		
		$suc  = $list -> allowField(true) ->save();
		
		if ($suc) {
			
			$this -> success('添加数据成功','user/teacherQuery');
			
		} else {
			
			$this -> error('添加数据失败');
			
		}
		
		
		
	}
	//查询指定用户
	public function checkselect()
	{
		$username = input('post.username');
		
		//判断是否传值了
		if (!$username) {
			
			$this -> error('请输入需要匹配的值');
			
		}
		
		//模糊匹配对应的数据
		$user = Db::name('user') -> where('username','like',"%$username%")->where('delete_time = 0')->paginate(10);
		$page = $user -> render();
		
		if ($user) {
			
			return View('',compact('user','page'));
			
		} else {
			
			$this -> error('没有你索要匹配的数据');
			
		}
	}
	
}

















