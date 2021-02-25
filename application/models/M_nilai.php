<?php

/**
 * File Name: M_nilai.php
 * AUTHOR: Indra basuki
 * Date:
 */
defined('BASEPATH') or exit('No direct script access allowed');

class M_nilai extends CI_Model
{

    public $table = "tbl_nilai";
    public function data()
    {
        $query = "SELECT * FROM $this->table ORDER BY nim ASC";
        return $this->db->query($query)->result();
    }
}

/* End of file: M_nilai.php */
