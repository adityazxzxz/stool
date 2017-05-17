<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Upload extends CI_Controller {

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
		$this->load->view('upload');
	}

	public function do_upload()
        {
                $config['upload_path']          = './uploads/';
                $config['allowed_types']        = 'csv';
                $config['file_name']			= date('Y-m-d_His');

                $this->load->library('upload', $config);
                $this->upload->overwrite = true;
                $upload = $this->upload->do_upload('csv_file');
                $upload_data = $this->upload->data();
                if($upload)
                	echo "Upload Berhasil<br>";
                else
                	echo "Upload gagal<br>";
                
                echo anchor('/','Upload kembali');
        }
};
