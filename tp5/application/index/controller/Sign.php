<?php

namespace app\index\controller;

use think\Controller;
use think\Validate;
use app\index\model\User;
use app\index\model\Section;
use think\Session;

class Sign extends Controller {

    public function login() {
        $this->assign('data', Session::get('section'));
        return $this->fetch();
    }

    public function register() {
        $this->assign('data', Session::get('section'));
        return $this->fetch();
    }

    public function checkUsername() {
        $data['username'] = input('post.username');
        $result = User::where($data)->select();
        if ($result) {
            //$result['status'] = 1;
            return json(['status' => 1]);
        } else {

            //echo json_encode(['status' => 0]);
            return json(['status' => 0]);
        }
    }

    public function checkEmail() {
        $data['email'] = input('post.email');
        $result = User::where($data)->select();
        if ($result) {
            //$result['status'] = 1;
            return json(['status' => 1]);
        } else {

            //echo json_encode(['status' => 0]);
            return json(['status' => 0]);
        }
    }

    public function checkRegister(User $user) {
        $rule = [
            'username|用户名' => 'require|length:3,10',
            'password|密码' => 'require|confirm:repassword',
            'email|邮箱' => 'email',
            'captcha|验证码' => 'require|captcha',
        ];
        $message = [
            'username.require' => '用户名必须传',
            'username.length' => '长度必须在6到12之间',
            'password.confirm' => '两次密码不一致',
            'email' => '您输入的不是邮箱',
            'captcha.require' => '验证码必须填写',
            'captcha.captcha' => '验证码错误',
        ];
        $data = input('post.');

        $validate = new Validate($rule, $message);
        $result = $validate->check($data);
        if (!$result) {
            echo $validate->getError();
            die;
        }

        $status = $user->data($data)->allowField(true)->save();
        if ($status) {
            $this->success('注册成功', '/login');
        } else {
            $this->error('注册失败', '/register');
        }
    }

    public function checkLogin() {
        $data = input('post.');
        $data['password'] = md5($data['password']);
        $status = User::where($data)->select();
        if ($status) {
            session('username', $data['username']);
            $this->success('登录成功', '/');
        } else {
            $this->error('登录失败', '/login');
        }
    }

    public function logout() {
        session('username', null);
        $this->success('退出成功', '/');
    }

}
