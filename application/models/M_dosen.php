<?php

/**
 * File Name: M_dosen.php
 * AUTHOR: Indra Basuki
 * Date:
 */
defined('BASEPATH') or exit('No direct script access allowed');

class M_dosen extends CI_Model
{

    public $table = "tbl_dosen";
    public function chekLogin($nid, $password)
    {
        $this->db->where('nid',  $nid);
        $this->db->where('password',  SHA1($password));
        $dosen = $this->db->get($this->table)->row_array();
        return $dosen;
    }
    public function data()
    {
        $query = "SELECT * FROM $this->table ORDER BY nid ASC";
        return $this->db->query($query)->result();
    }
}

/* End of file: M_dosen.php */
