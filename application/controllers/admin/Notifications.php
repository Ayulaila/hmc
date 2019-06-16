<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Notifications extends CI_Controller {

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
		$this->session->set_userdata('menu','notifications');
 		$this->load->model('admin/notifications_model','dbObject');
 	}

	public function index()
	{
			$data['title'] = 'Menu Notifikasi';
			$this->load->view('admin/templates/header',$data);
			$this->load->view('admin/templates/navbar');
			$this->load->view('admin/templates/sidebar');
			$this->load->view('admin/notifications/index');
			$this->load->view('admin/templates/footer');
	}

}
