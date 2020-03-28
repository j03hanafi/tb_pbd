<?php

  class Sekolah_model {

    private $table = 'sekolah';
    private $db;

    public function __construct() {
      $this->db = new Database;
    }

    public function getAllSekolah() {

      $this->db->query( 'SELECT * FROM ' . $this->table );
      return $this->db->resultSet();

    }

    public function getSekolahByStatus($id_status) {

      $this->db->query( 'SELECT *, nama_status FROM ' . $this->table . ' INNER JOIN status ON status.id_status = sekolah.id_status WHERE sekolah.id_status=:id');
      $this->db->bind('id', $id_status);
      return $this->db->resultSet();

    }

    public function getSekolahByAkreditasi($id_akreditasi) {

      $this->db->query( 'SELECT *, akreditasi FROM ' . $this->table . ' INNER JOIN akreditasi ON akreditasi.id_akreditasi = sekolah.id_akreditasi WHERE sekolah.id_akreditasi=:id');
      $this->db->bind('id', $id_akreditasi);
      return $this->db->resultSet();

    }
    
    public function getSekolahByKurikulum($kurikulum) {

      $this->db->query( 'SELECT * FROM ' . $this->table . ' WHERE kurikulum=:kurikulum');
      $this->db->bind('kurikulum', $kurikulum);
      return $this->db->resultSet();

    }


    public function getSekolahById($id_sekolah) {

      $this->db->query('SELECT * FROM ' . $this->table . ' WHERE id_sekolah=:id');
      $this->db->bind('id', $id_sekolah);
      return $this->db->single();

    }

    public function getKelas($id_sekolah) {

      $query = "
        SELECT 
          kelas.id_kelas,
          kondisi_kelas,
          jumlah_meja,
          jumlah_kursi
        FROM
          kelas
        INNER JOIN kondisi_kelas ON kondisi_kelas.id_kondisi_kelas = kelas.id_kondisi_kelas
        INNER JOIN sekolah ON sekolah.id_sekolah = kelas.id_sekolah
        WHERE kelas.id_sekolah=:id
        ";

        $this->db->query($query);
        $this->db->bind('id', $id_sekolah);
        return $this->db->resultSet();

    }

    public function getLabor($id_sekolah) {

      $query = "
        SELECT 
          detail_labor.id_detail_labor,
          nama_labor,
          jumlah_labor
        FROM
          detail_labor
        INNER JOIN labor ON labor.id_labor = detail_labor.id_labor
        INNER JOIN sekolah ON sekolah.id_sekolah = detail_labor.id_sekolah
        WHERE detail_labor.id_sekolah=:id
      ";

      $this->db->query($query);
      $this->db->bind('id', $id_sekolah);
      return $this->db->resultSet();

    }

    public function getLaborSum($id_sekolah) {

      $query = "
        SELECT 
          sum(jumlah_labor) as jumlah
        FROM
          detail_labor
        WHERE id_sekolah=:id;
      ";

      $this->db->query($query);
      $this->db->bind('id', $id_sekolah);
      return $this->db->single();

    }

    public function getAlat($id_sekolah) {

      $query = "
        SELECT 
          detail_alat.id_detail_alat,
          nama_labor,
          nama_alat,
          kondisi_alat_baik,
          kondisi_alat_buruk
        FROM
          detail_alat
        INNER JOIN alat ON alat.id_alat = detail_alat.id_alat
        INNER JOIN labor ON labor.id_labor = detail_alat.id_labor
        INNER JOIN sekolah ON sekolah.id_sekolah = detail_alat.id_sekolah
        WHERE detail_alat.id_sekolah=:id
      ";

      $this->db->query($query);
      $this->db->bind('id', $id_sekolah);
      return $this->db->resultSet();

    }

    public function getAlatSum($id_sekolah) {

      $query = "
        SELECT 
          sum(kondisi_alat_baik) as jumlah_baik,
          sum(kondisi_alat_buruk) as jumlah_buruk
        FROM
          detail_alat
        WHERE id_sekolah=:id
      ";

      $this->db->query($query);
      $this->db->bind('id', $id_sekolah);
      return $this->db->single();

    }

    public function getGuru($id_sekolah) {

      $query = "
        SELECT 
          detail_guru.id_detail_guru,
          golongan_guru,
          jumlah_guru_gol
        FROM
          detail_guru
        INNER JOIN guru ON guru.id_guru = detail_guru.id_guru
        INNER JOIN sekolah ON sekolah.id_sekolah = detail_guru.id_sekolah
        WHERE detail_guru.id_sekolah=:id
      ";

      $this->db->query($query);
      $this->db->bind('id', $id_sekolah);
      return $this->db->resultSet();

    }

  }