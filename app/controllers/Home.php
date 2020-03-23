<?php

  class Home extends Controller {

    public function index() {

      $data['judul'] = 'Daftar Sekolah';
      $data['sekolah'] = $this->model( 'Sekolah_model' )->getAllSekolahData();

      $this->view( 'templates/header', $data );
      $this->view( 'home/index', $data );
      $this->view( 'templates/footer' );

    }

  }