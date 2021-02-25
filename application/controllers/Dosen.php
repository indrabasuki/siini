<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * File Name: Dosen.php
 * AUTHOR: Indra Basuki
 * Date:
 */
class Dosen extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        sesiDosen();
        $this->load->model('m_mahasiswa');
        $this->load->model('m_dosen');
        $this->load->model('m_matkul');
        $this->load->model('m_nilai');
    }
    public function index()
    {
        redirect('dosen/dashboard', 'refresh');
    }
    public function dashboard()
    {
        $data = array('title' => 'Dashboard | Panel Dosen SIINI');
        $this->load->view('dosen/header', $data);
        $this->load->view('dosen/dashboard');
        $this->load->view('dosen/footer');
    }
}

/* End of file: Dosen.php */
