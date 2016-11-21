<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Notify;
use think\Db;
use think\Loader;
use think\Session;

class Notice extends Controller
{
	
	//�鿴����
	public function noticequery(Notify $n)
	{	
		if (!Session::get('username')) {
		
		return $this -> fetch('index/login');

		}
		$notify = Db::name('notify');

		$list = $notify -> where('delete_time = 0') -> paginate(10);

		$page = $list -> render();

		if ($list) {
			
			return View('',compact('list','page'));


		} else {
			
			$this -> error('����ʧ�ܣ���ѯ����ʧ��');

		}

	}

	//ɾ������
	public function notifyDelete($nid)
	{
		if (Notify::destroy($nid)) {
			
			$this -> redirect('Notice/noticequery');

		} else {
			
			$this -> error('ɾ��ʧ��');

		}
		
	}

	//��ӹ���
	public function noticeAdd()
	{
		return $this -> fetch();
	}

	//��ӹ�������
	public function checkAdd()
	{

		$validate = Loader::validate('notify');

		if (!$validate->check(input('post.'))) {
			
			$this -> error($validate->getError());
			exit;
		} 
		
		$notify = new Notify($_POST);

		$lsit = $notify -> allowField(true) -> save();

		if ($lsit) {

			$this -> redirect('Notice/noticequery');
			exit;

		} else {

			$this -> error('���ʧ��');

		}

	}
	
	
	//�޸Ĺ���
	public function notifyEdit(Notify $notify,$nid)
	{

		$list = $notify -> where("nid = $nid") -> select();

		if ($list) {

			return View('',compact('list'));

		} else {

			$this -> error('û���ҵ�ָ���Ĺ���');

		}
	}

	//���Ĺ���
	public function checkEdite()
	{
		$notify = new Notify();

		$list = $notify -> allowField(true) -> save($_POST,['nid' =>input('post.nid') ]);

		if ($list) {
			
			$this -> redirect('Notice/noticequery');

		} else {
			
			$this -> redirect('����ʧ��');
		}
		

	}

	//ģ����ѯ
	public function notifySelect()
	{

		$notify = Db::name('notify');

			$nname = input('get.nname');

		$list = $notify 
		-> where("delete_time = 0")
		-> where('nname','like',"%$nname%") 
		-> paginate(10);

		$page = $list -> render();

		if ($list) {
			
			return View('',compact('list','page'));


		} else {
			
			$this -> error('����ʧ�ܣ���ѯ����ʧ��');

		}

	}




}