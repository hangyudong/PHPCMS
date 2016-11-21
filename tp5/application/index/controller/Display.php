<?php

namespace app\index\controller;

use think\Controller;
use think\Session;
use think\Validate;
use app\index\model\Video;
use app\index\model\User;

class Display extends Controller {

    public function video($tid, $sid) {
        if (session('username')) {
            $data = Video::where('sid', $sid)->where('tid', $tid)->select();
            $this->assign('video', $data);

            $this->assign('data', Session::get('section'));
            return $this->fetch();
        } else {

            $this->redirect('Sign/login');
        }
    }

    public function report() {
     
        $rule = [
            'content|留言内容' => 'require|length:10,50',
            'captcha|验证码' => 'require|captcha',
        ];
        $message = [
            'username.require' => '用户名必须传',
            'username.length' => '长度必须在10到50之间',
            'captcha.require' => '验证码必须填写',
            'captcha.captcha' => '验证码错误',
        ];
        $data = input('post.');
        $data['username'] = session('username');
        $validate = new Validate($rule, $message);
        $result = $validate->check($data);
        if (!$result) {
            return json(['status' => 0,'msg' => $validate->getError(), 'data' => null]);
        }
        $words = model('Words');
        $status = $words->data($data)->allowField(true)->save();
        if ($status) {
            //$result['status'] = 1;
            $data['create_time'] = date('Y-m-d H:i:s');
            return json(['status' => 1, 'msg' => '留言成功', 'data' => $data]);
        } else {
            //echo json_encode(['status' => 0]);
            return json(['status' => 0,'msg' => '出现异常，请刷新重试！', 'data' => null]);
        }
    }
    
    

}
