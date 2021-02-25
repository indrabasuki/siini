<?php

/**
 * File Name: M_matkul.php
 * AUTHOR: Indra Basuki
 * Date:
 */
defined('BASEPATH') or exit('No direct script access allowed');

class M_matkul extends CI_Model
{

    public $table = "tbl_matakuliah";
    public function data()
    {
        $query = "SELECT * FROM $this->table ORDER BY kode_mk ASC";
        return $this->db->query($query)->result();
    }

    # code...

}

/* End of file: M_matkul.php */
