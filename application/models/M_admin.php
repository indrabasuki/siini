<?php

/**
 * File Name: M_admin.php
 * AUTHOR: Indra Basuki
 * Date:
 */
defined('BASEPATH') or exit('No direct script access allowed');

class M_admin extends CI_Model
{

    public $table = "tbl_admin";
    public function chekLogin($username, $password)
    {
        $this->db->where('username',  $username);
        $this->db->where('password',  SHA1($password));
        $admin = $this->db->get($this->table)->row_array();
        return $admin;
    }
}

/* End of file: M_admin.php */
