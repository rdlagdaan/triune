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

		$this->session->set_flashdata('emailAddress', $emailAddress);
		$this->session->set_flashdata('userName', $userName);
		$this->session->set_flashdata('lastName', $lastName);
		$this->session->set_flashdata('middleName', $middleName);
		$this->session->set_flashdata('firstName', $firstName);
		$this->session->set_flashdata('birthDate', $birthDate);
		$this->session->set_flashdata('studentNumber', $studentNumber);


		if ($this->form_validation->run() == FALSE) {   

			$this->session->set_flashdata('msg', 'All fields are required to be proper. Please try again!');
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
				$this->session->set_flashdata('msg', 'Email Address Already Exist!');
				redirect(base_url());
	
			} elseif(!empty($userNameExist)) {
				
				$this->session->set_flashdata('msg', 'Username Already Exist!');
				redirect(base_url());
				
			} else {

				$userEnrolled = $userRecord = $this->_getRecordsData($data = array('ID'), 
					$tables = array('triune_personal_data'), 
					$fieldName = array('lastName', 'firstName', 'middleName', 'studentNumber', 'birthDate'), 
					$where = array($lastName, $firstName, $middleName, $studentNumber, $birthDate), 
					$join = null, $joinType = null, $sortBy = null, $sortOrder = null, $limit = null, 
					$fieldNameLike = null, $like = null, 
					$whereSpecial = null, $groupBy = null );
				
				if(!empty($userEnrolled)) {


                    $clean = $this->security->xss_clean($this->input->post(NULL, TRUE));

					$triune_user = null;
					$triune_user = array(
						  'userName' => $clean['userName'],
						  'emailAddress' => $clean['emailAddress'],
						  'firstNameUser' => $clean['firstName'],
						  'lastNameUser' => $clean['lastName'],
						  'userNumber' => $clean['studentNumber'],
						  'role' => $this->roles[0],
						  'status' => $this->status[0],
					); 
				    $id = $this->_insertRecords($tableName = 'triune_user', $triune_user);
					
					$token = substr(sha1(rand()), 0, 30); 
					$date = date('Y-m-d');

					$triune_token = null;
					$triune_token = array(
						  'token' => $token,
						  'userID' => $id,
						  'timeStamp' => $date,
					); 
				    $id = $this->_insertRecords($tableName = 'triune_token', $triune_token);
					$token = $token . $id;

                    $qstring = $this->_base64urlEncode($token);                      

                    $url = site_url() . 'triuneMain/complete/token/' . $qstring;
                    $link = '<a href="' . $url . '">' . $url . '</a>'; 
                               
                    $message = '';                     
                    $message .= '<strong>You have signed up with our website</strong><br>';
                    $message .= '<strong>Please click:</strong> ' . $link;                          
 
                    //echo $message; //send this in email
					
					$this->_sendMail($toEmail ="rdlagdaan@gmail.com", $subject = "token created", $message);

				} else {
					$this->session->set_flashdata('msg', "The personal information you've typed do not matched with your current records!");
					redirect(base_url());
				}

			}           
		}

	}


}
