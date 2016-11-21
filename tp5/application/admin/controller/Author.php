<?php

namespace app\admin\controller;

use think\Controller;
use app\admin\model\Author as AuthorModel;
use think\Loader;
use think\Session;

class Author extends Controller
{
	
	//作者介绍页
	public function userdocumentQuery(AuthorModel $author)
	{
		if (!Session::get('username')) {
			
			return $this -> fetch('index/login');

		}
		
		$list = $author -> select();
		
		return View('',compact('list'));
		
	}
	
	//添加作者简介页
	
	public function authoradd()
	{
		return $this -> fetch();
	}
	
	//将数据添加到数据库
	
	public function checkadd()
	{
		$validate = Loader::validate('Author');
		
		if (!$validate -> check(input('post.')))
		{
			$this -> error($validate -> getError());
			exit;
		}
		
		$author = new AuthorModel($_POST);
		
		$list = $author -> allowField(true) -> save();
		
		if ($list) {
			
			//添加数据成功
			$this -> redirect('Author/userdocumentQuery');
			
		} else {
			
			//添加数据失败
			$this -> error('添加数据失败');
			
		}
		
	
	}
	
	public function authorDelete($aid)
	{	
		//软删除
		if (AuthorModel::destroy($aid)) {
			
			$this -> redirect('Author/userdocumentQuery');
			
		} else {
			
			$this -> error('删除失败');
			
		}
	}
	
	public function authorUpdate(AuthorModel $author , $aid) {
		
		$list = $author::get($aid);
		
		
		
		return View('',compact('list'));
		
	}
	
	public function checkEdit(AuthorModel $author)
	{
		$list = input('post.');
		
		$suc  = $author -> data($list,true) -> isUpdate(true) -> save();
		
		if ($suc) {
			
			$this -> redirect('Author/userdocumentQuery');
			
		} else {
			
			$this -> error('编辑数据库失败');
			
		}
		
	}
	
	
}






















