<?php

class Kategori_m extends CI_Model
{
    public function getAllKategori()
    {
        return $this->db->get('tb_kategori')->result_array();
    }
    public function getKategoriById($id)
    {
        return $this->db->get_where('tb_kategori', ['id_kategori' => $id])->row_array();
    }
    public function delete($id)
    {
        $this->db->where('id_kategori', $id);
        $this->db->delete('tb_kategori');
    }
}
