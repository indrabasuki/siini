<?php

/**
 * File Name: M_mahasiswa.php
 * AUTHOR: Indra Basuki
 * Date:
 */
defined('BASEPATH') or exit('No direct script access allowed');

class M_mahasiswa extends CI_Model
{

    public $table = "tbl_mahasiswa";
    public function chekLogin($nim, $password)
    {
        $this->db->where('nim',  $nim);
        $this->db->where('password',  SHA1($password));
        $dosen = $this->db->get($this->table)->row_array();
        return $dosen;
    }
}

/* End of file: M_mahasiswa.php */
