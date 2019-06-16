<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {

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
	  if ($this->session->userdata('login') == false || $this->session->userdata('id_grup') != '1') redirect('auth/logout');
		$this->session->set_userdata('menu','users');
 		$this->load->model('admin/users_model','dbObject');
 	}

	public function index()
	{
	}

	public function profile($param1='',$param2='')
	{
		if($param1=='edit')
		{
			$data['title'] = 'Edit Profile Users';
			$data['users'] = $this->dbObject->get_by_id_general('user','username',$this->session->userdata('username'));
			$this->load->view('admin/templates/header',$data);
			$this->load->view('admin/templates/navbar');
			$this->load->view('admin/templates/sidebar');
			$this->load->view('admin/users/profile');
			$this->load->view('admin/templates/footer');
		}elseif ($param1=='do_edit') {

		}elseif ($param1=='cek_username') {
			if($this->dbObject->get_by_id_general('user','username',$this->input->get('username'))==TRUE){
				echo "0";
			}else {
				echo "1";
			}
		}
	}

	public function create($param1='',$param2=''){
		if($param1=='do_create'){
			$users = array(
				'full_name' => $this->input->post('full_name'),
				'username' => $this->input->post('username'),
				'password' => md5($this->input->post('password')),
				'email' => $this->input->post('email'),
				'address' => $this->input->post('address'),
				'jenis_kelamin' => $this->input->post('jenis_kelamin'),
				'tanggal_lahir' => $this->input->post('tanggal_lahir'),
				'phone_number' => $this->input->post('phone_number'),
				'id_grup' => $this->input->post('id_grup'),
			);

			if($this->dbObject->create_general('user',$users)==TRUE){
				$this->session->set_flashdata('notif','<div class="alert alert-success">User berhasil di daftarkan</div>');
				redirect('admin/users/create');
			}else {
				$this->session->set_flashdata('notif','<div class="alert alert-danger">User gagal di daftarkan</div>');
				redirect('admin/users/create');
			}
		}else {
			$data['title'] = 'Create Users';
			$data['group'] = $this->dbObject->get_general('user_grup');
			$this->load->view('admin/templates/header',$data);
			$this->load->view('admin/templates/navbar');
			$this->load->view('admin/templates/sidebar');
			$this->load->view('admin/users/create');
			$this->load->view('admin/templates/footer');
		}
	}

}
