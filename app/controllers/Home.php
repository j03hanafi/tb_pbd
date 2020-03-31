<?php

  class Home extends Controller {

    public function index() {

      $data['title'] = 'Daftar Sekolah';
      $data['header_status'] = $this->model('Header_model')->getStatus();
      $data['header_akreditasi'] = $this->model('Header_model')->getAkreditasi();
      $data['header_kurikulum'] = $this->model('Header_model')->getKurikulum();
      $data['header_kecamatan'] = $this->model('Header_model')->getKecamatan();

      $this->view( 'templates/header', $data );
      $this->view( 'templates/footer' );

    }

  }