<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class triuneMain extends MY_Controller {

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

    function __construct() {
        parent::__construct();
		$this->load->library('session');
		$this->load->library('form_validation'); 
		$this->form_validation->set_error_delimiters('<div class="error">', '</div>');
		$this->status = $this->config->item('status'); 
		$this->roles = $this->config->item('roles');
	}//function __construct()

	public function index()
	{
		header("Access-Control-Allow-Origin: *");
		$data = array();
		$this->template->set('title', 'Home');
		$this->template->load('default_layout', 'contents' , 'authentication/registration', $data);

	}

	public function about()
	{
					$data = array();
					$this->template->set('title', 'about');
					$this->template->load('default_layout', 'contents' , 'about', $data);
	}	


	public function viewPDF() {
		$this->load->library('Pdf');
		$this->load->view('viewPDF');		
	}


	public function checkUserName() {
		if(!empty($_POST["userName"])) {
			$userName = $_POST["userName"];
			$userRecord = $this->_getRecordsData($data = array('userName'), $tables = array('triune_user'), $fieldName = array('userName'), $where = array($userName), 
				$join = null, $joinType = null, $sortBy = null, $sortOrder = null, $limit = null, 
				$fieldNameLike = null, $like = null, 
				$whereSpecial = null, $groupBy = null );

			if(empty($userRecord)) {
				echo 0;
			} else {
				echo 1;
			}			
		}
	}

	public function createToken() {

		$this->form_validation->set_rules('userName', 'User Name', 'required|alpha_numeric');
		$this->form_validation->set_rules('emailAddress', 'Email Address', 'required|valid_email');  
		$this->form_validation->set_rules('lastName', 'Last Name', 'required|alpha_numeric');    
		$this->form_validation->set_rules('firstName', 'First Name', 'required|alpha_numeric');    
		$this->form_validation->set_rules('middleName', 'Middle Name', 'required|alpha_numeric');    
		$this->form_validation->set_rules('studentNumber', 'Student Number', 'required|regex_match[/^\d+[-]?\d+$/]');    
		$this->form_validation->set_rules('birthDate', 'Birth Date', 'required|regex_match[/\d{4}\-\d{2}-\d{2}/]');    

		$emailAddress = $this->input->post('emailAddress');
		$userName = $this->input->post('userName');
		$lastName = $this->input->post('lastName');
		$middleName = $this->input->post('middleName');
		$firstName = $this->input->post('firstName');
		$birthDate = $this->input->post('birthDate');
		$studentNumber = $this->input->post('studentNumber');


		if ($this->form_validation->run() == FALSE) {   

			$this->session->set_flashdata('msg', 'All fields are required to be proper. Please try again!');
			$this->session->set_flashdata('emailAddress', $emailAddress);
			$this->session->set_flashdata('userName', $userName);
			$this->session->set_flashdata('lastName', $lastName);
			$this->session->set_flashdata('middleName', $middleName);
			$this->session->set_flashdata('firstName', $firstName);
			$this->session->set_flashdata('birthDate', $birthDate);
			$this->session->set_flashdata('studentNumber', $studentNumber);
			redirect(base_url());
		}else{    
			

			$emailAddressExist = $userRecord = $this->_getRecordsData($data = array('emailAddress'), $tables = array('triune_user'), $fieldName = array('emailAddress'), $where = array($emailAddress), 
				$join = null, $joinType = null, $sortBy = null, $sortOrder = null, $limit = null, 
				$fieldNameLike = null, $like = null, 
				$whereSpecial = null, $groupBy = null );

			$userNameExist = $userRecord = $this->_getRecordsData($data = array('userName'), $tables = array('triune_user'), $fieldName = array('userName'), $where = array($userName), 
				$join = null, $joinType = null, $sortBy = null, $sortOrder = null, $limit = null, 
				$fieldNameLike = null, $like = null, 
				$whereSpecial = null, $groupBy = null );
					

			if(!empty($emailAddressExist)){
				//$this->session->set_flashdata('flash_message', 'User email already exists');
				//redirect(site_url().'main/login');
				echo "Email Address Exist";
			} elseif(!empty($userNameExist)) {
				
				echo "UserName Exist";
				
			} else {
				echo "Continue";

				$userEnrolled = $userRecord = $this->_getRecordsData($data = array('ID'), 
					$tables = array('triune_personal_data'), 
					$fieldName = array('lastName', 'firstName', 'middleName', 'studentNumber', 'birthDate'), 
					$where = array($lastName, $firstName, $middleName, $studentNumber, $birthDate), 
					$join = null, $joinType = null, $sortBy = null, $sortOrder = null, $limit = null, 
					$fieldNameLike = null, $like = null, 
					$whereSpecial = null, $groupBy = null );
				
				if(!empty($userEnrolled)) {

					echo "Proceed with creating token";
				} else {
					$this->session->set_flashdata('msg', "The personal information you've typed do not matched with your current records!");
					$this->session->set_flashdata('emailAddress', $emailAddress);
					$this->session->set_flashdata('userName', $userName);
					$this->session->set_flashdata('lastName', $lastName);
					$this->session->set_flashdata('middleName', $middleName);
					$this->session->set_flashdata('firstName', $firstName);
					$this->session->set_flashdata('birthDate', $birthDate);
					$this->session->set_flashdata('studentNumber', $studentNumber);
					redirect(base_url());
				}

			}           
		}

	}
}
