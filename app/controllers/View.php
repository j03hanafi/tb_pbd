<?php

  class View extends Controller {

    public function index() {

      header('Location: ' . BASEURL . '/home');
      exit;

    }

    public function sekolah() {

      $data['title'] = 'Daftar Sekolah';
      $data['sekolah'] = $this->model('Sekolah_model')->getAllSekolah();

      $data['header_status'] = $this->model('Header_model')->getStatus();
      $data['header_akreditasi'] = $this->model('Header_model')->getAkreditasi();
      $data['header_kurikulum'] = $this->model('Header_model')->getKurikulum();
      $data['header_kecamatan'] = $this->model('Header_model')->getKecamatan();

      $this->view('templates/header', $data);
      $this->view('sekolah/all', $data);
      $this->view('templates/footer');

    }

    public function status($id_status) {

      $data['sekolah'] = $this->model('Sekolah_model')->getSekolahByStatus($id_status);
      $data['title'] = 'Daftar Sekolah';

      $data['header_status'] = $this->model('Header_model')->getStatus();
      $data['header_akreditasi'] = $this->model('Header_model')->getAkreditasi();
      $data['header_kurikulum'] = $this->model('Header_model')->getKurikulum();
      $data['header_kecamatan'] = $this->model('Header_model')->getKecamatan();

      $this->view('templates/header', $data);
      $this->view('sekolah/all', $data);
      $this->view('templates/footer');

    }

    public function akreditasi($id_akreditasi) {

      $data['sekolah'] = $this->model('Sekolah_model')->getSekolahByAkreditasi($id_akreditasi);
      $data['title'] = 'Daftar Sekolah';

      $data['header_status'] = $this->model('Header_model')->getStatus();
      $data['header_akreditasi'] = $this->model('Header_model')->getAkreditasi();
      $data['header_kurikulum'] = $this->model('Header_model')->getKurikulum();
      $data['header_kecamatan'] = $this->model('Header_model')->getKecamatan();

      $this->view('templates/header', $data);
      $this->view('sekolah/all', $data);
      $this->view('templates/footer');

    }
    
    public function kurikulum($kurikulum) {

      $data['sekolah'] = $this->model('Sekolah_model')->getSekolahByKurikulum($kurikulum);
      $data['title'] = 'Daftar Sekolah';

      $data['header_status'] = $this->model('Header_model')->getStatus();
      $data['header_akreditasi'] = $this->model('Header_model')->getAkreditasi();
      $data['header_kurikulum'] = $this->model('Header_model')->getKurikulum();
      $data['header_kecamatan'] = $this->model('Header_model')->getKecamatan();

      $this->view('templates/header', $data);
      $this->view('sekolah/all', $data);
      $this->view('templates/footer');

    }


  }