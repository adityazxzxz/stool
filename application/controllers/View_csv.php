<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class View_csv extends CI_Controller {

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
	public function index()
	{
		$dir    = 'uploads/';
		$files1 = scandir($dir);
		$scanned = array_diff($files1, array('..', '.'));
		foreach ($scanned as $key => $value) {
			echo $value."<br>";
		}

		//$this->load->view('view_csv');
	}
};
