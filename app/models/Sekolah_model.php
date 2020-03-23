<?php

  class Sekolah_model {

    private $table = 'sekolah';
    private $db;

    public function __construct() {
      $this->db = new Database;
    }

    public function getAllSekolahData() {

      $this->db->query( 'SELECT * FROM ' . $this->table );
      return $this->db->resultSet();

    }

  }