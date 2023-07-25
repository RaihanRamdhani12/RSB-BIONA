<?php

namespace App\Controllers;

use App\Models\ModelLogin;

class Home extends BaseController
{
    public function __construct()
    {
        $this->ModelLogin = new ModelLogin();
    }

    // login logout
    public function login()
    {
        return view('login');
    }

    public function proses_login()
    {
        $request  = \Config\Services::request();
        $username = $request->getVar('username');
        $password = $request->getVar('password');
        $dataUser = $this->ModelLogin->where([
            'username' => $username,
        ])->first();

        if ($dataUser) {
            if (password_verify($password, $dataUser->password)) {
                session()->set([
                    'username' => $dataUser->username,
                    'status_login' => TRUE,
                ]);
            } else {
                session()->setFlashdata('error', 'Username/Password Salah');
                return redirect()->to(base_url('login'));
            }
        } else {
            session()->setFlashdata('error', 'Username/Password Salah');
            return redirect()->to(base_url('login'));
        }
    }
    
    public function contact_proses()
    {
        $request = \Config\Services::request();
        $username = $request->getPost('username');
        $password = $request->getPost('password');
        $data = [
            'username' => $username,
            'password' => password_hash($password, PASSWORD_BCRYPT),
        ];
        $this->ModelLogin->contact($data);
        return redirect()->to(base_url(''));
    }

    // logout
    public function logout()
    {
        $session = session();
        $session->destroy();
        return redirect()->to(base_url('index'));
    }

    // halaman
    public function halaman() {
echo view ("halaman");
    }
}