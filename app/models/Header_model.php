<?php

  class Header_model {

    private $table = 'sekolah';
    private $db;

    public function __construct() {
      $this->db = new Database;
    }

    public function getStatus() {

      $query = "SELECT * FROM status";
      $this->db->query($query);
      return $this->db->resultSet();

    }

    public function getAkreditasi() {

      $query = "SELECT * FROM akreditasi";
      $this->db->query($query);
      return $this->db->resultSet();

    }
    
    public function getKurikulum() {

      $query = "SELECT DISTINCT kurikulum FROM sekolah";
      $this->db->query($query);
      return $this->db->resultSet();

    }

    public function getKecamatan() {

      $query = "SELECT * FROM kecamatan";
      $this->db->query($query);
      return $this->db->resultSet();

    }

  }
