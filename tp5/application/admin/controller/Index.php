<?php
namespace app\admin\controller;

use think\Controller;
use think\Db;
use app\admin\model\Admin;
use think\Session;

class Index extends Controller
{
	public function index()
	{
		$username = Session::get('username');
	//	dump($username);exit;

		if ($username) {
		return View('');
		} else {
			return View('login');
		}
	}
	
	public function login()
	{
		return $this -> fetch();
	}
	
	
	public function checkLogin(Admin $user)
	{
		
		$username = input('post.uname');
		echo json_encode($username);
		$data = $user::getByUsername($username);
		
		if (!$data) {
			
			echo json_encode(1);
			exit;
		}
		
		if ($data['password'] != md5(input('post.upwd'))) {
			
			echo json_encode(1);
			exit;
			
		}
		
		Session::set('username',$username);
		echo json_encode(2);
		
	//	return View('index',compact('data'));
		
		
	}
	
/*

	//检测用户名密码是否正确
	public function checklogin()
	{
		$uname = input('post.uname');
		$upwd = md5(input('post.upwd'));
		
		$admin = new Admin;
		$username = $admin->where('username',$uname)->select();
		
		if ($username) {
			//echo json_encode($username[0]['upwd']);
			if ($upwd == $username[0]['password']) {
				echo json_encode(2);

				Session::set('username',$uname);
			} else {
				echo json_encode(1);
			}
		} else {
			echo json_encode(1);
		}
	}
*/
	
	public function logout()
	{
		// 清除session（当前作用域）
		Session::clear();
		// 清除think作用域
		Session::clear('think');
		
		return $this -> fetch('login');
	}
	

	//修改管理员密码
	public function checkEditPassword()
	{
		return $this -> fetch();
	}

	

	
}