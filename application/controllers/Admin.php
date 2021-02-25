<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * File Name: Admin.php
 * AUTHOR:Indra Basuki 
 * Date:
 */
class Admin extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        sesiAdmin();
        $this->load->model('m_mahasiswa');
        $this->load->model('m_dosen');
        $this->load->model('m_admin');
        $this->load->model('m_matkul');
        $this->load->model('m_nilai');
    }
    public function index()
    {
        redirect('admin/dashboard', 'refresh');
    }
    public function dashboard()
    {
        $data = array(
            'title' => 'Dashboard | Panel Admin SIINI', 'mtk'   => $this->db->query("SELECT * FROM tbl_matakuliah")->num_rows(),
            'mhs'   => $this->db->query("SELECT * FROM tbl_mahasiswa")->num_rows(),
            'dsn'   => $this->db->query("SELECT * FROM tbl_dosen")->num_rows(),
            'adm'   => $this->db->query("SELECT * FROM tbl_admin")->num_rows()
        );
        $this->load->view('admin/header', $data);
        $this->load->view('admin/dashboard');
        $this->load->view('admin/footer');
    }
}

/* End of file: Admin.php */
