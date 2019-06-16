<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	 function __construct()
	 {
	 	 parent::__construct();
		 $this->load->model('Auth_model','dbObject');
	 }

	public function index()
	{
		$this->login();
	}

	public function login($param1='',$param2='')
	{
		if($param1=='do_login'){
				$username = $this->input->post('username');
				$password = md5($this->input->post('username'));

				$data_user = $this->dbObject->login($username,$password);
				if($data_user==TRUE)
				{
					foreach ($data_user as $key) {
						$users = array(
							'full_name' => $key->full_name,
							'username' => $username,
							'login' => TRUE,
							'id_grup' => $key->id_grup
						);

						$this->session->set_userdata($users);
						if($key->id_grup=='1'){
							redirect('admin/dashboard');
						}elseif ($key->id_grup=='2'){
							redirect('staff/dashboard');
						}
					}
				}else {
					$this->session->set_flashdata('notif','<div class="alert alert-danger">Username atau password anda salah</div>');
					redirect('auth');
				}
		}else {
			$this->load->view('login');
		}
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect(base_url());
	}

}
