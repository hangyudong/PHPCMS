<?php

namespace app\index\controller;

use think\Controller;
use think\Image;
use think\Db;
use app\index\model\User;
use app\index\model\Section;
use app\index\model\Notify;
use app\index\model\Head;
use app\index\model\Author;
use app\index\model\Resource;
use app\index\model\Teacher;
use app\index\model\Words;
use think\Request;
use think\Session;

class Index extends Controller {

    public function index() {

        $data = Section::all();
        Session::set('section', $data);
        $this->assign('data', Session::get('section'));

        $content = Notify::all();
        $this->assign('content', $content);
        return $this->fetch('index');
    }

    public function first($nid) {
        if (session('username')) {
            $data = Notify::where('nid', $nid)->select();

            $this->assign('haha', $data);

            $this->assign('data', Session::get('section'));
            
            $list = Words::order('create_time desc')->paginate(5);
            $page = $list->render();
            $this->assign('list', $list);
            $this->assign('page', $page);
            return $this->fetch();

        } else {

            $this->redirect('Sign/login');
        }
    }
    

    public function show($sid) {
        if (session('username')) {
            $data = Head::where('sid', $sid)->select();
            $this->assign('data_head', $data);

            $data_author = Author::all();
            $this->assign('data_author', $data_author);


            $data_resource = Resource::all();
            $this->assign('data_resource', $data_resource);


            $data_teacher = Teacher::all(['sid' => $sid]);
            $this->assign('data_teacher', $data_teacher);

            $this->assign('data', Session::get('section'));

            return $this->fetch();
        } else {

            $this->redirect('Sign/login');
        }
    }

    public function soft() {
        if (session('username')) {
            $data_resource = Resource::all();
            $this->assign('data_resource', $data_resource);

            $this->assign('data', Session::get('section'));
            return $this->fetch();
        }
    }

}
