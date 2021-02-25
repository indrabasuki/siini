<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * File Name: Mahasiswa.php
 * AUTHOR: Indra Basuki
 * Date:
 */
class Mahasiswa extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        sesiMahasiswa();
        $this->load->model('m_mahasiswa');
        $this->load->model('m_dosen');
        $this->load->model('m_matkul');
        $this->load->model('m_nilai');
    }
    public function index()
    {
        redirect('mahasiswa/dashboard', 'refresh');
    }
    public function dashboard()
    {
        $data = array('title' => 'Dashboard | Panel Mahasiswa SIINI');
        $this->load->view('mahasiswa/header', $data);
        $this->load->view('mahasiswa/dashboard');
        $this->load->view('mahasiswa/footer');
    }
}

/* End of file: Mahasiswa.php */
