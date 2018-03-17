<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class triuneAuth extends MY_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		https://tua.edu.ph/triune/auth
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://tua.edu.ph/triune
	 *
	 * AUTHOR: Randy D. Lagdaan
	 * DESCRIPTION: Authentitcation Controller. Included login, registration, reset password, create token
	 * DATE CREATED: March 12, 2018
     * DATE UPDATED: March 14, 2018
	 */

    function __construct() {
        parent::__construct();
		$this->load->library('session');
        $this->load->library('form_validation'); 
        $this->load->library('encryption');		
		$this->status = $this->config->item('status'); 
        $this->roles = $this->config->item('roles');
		$this->form_validation->set_error_delimiters('<div class="error">', '</div>');
	}//function __construct()



	public function login()
	{
		header("Access-Control-Allow-Origin: *");
		$data = array();
		$this->template->set('title', 'Authentication');
		
		$this->template->load('authenticationLayout', 'contents' , 'authentication/login', $data);

	}





}