<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_bukuaib extends CI_Model
{
  public function get_data()
  {
    return $this->db->get('data_bukuaib');
  }

  public function update($nim)
  {
    return $this->db->get_where('data_bukuaib', array('nim'=>$nim));
  }
}
 ?>
