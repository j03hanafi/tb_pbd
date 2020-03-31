<?php

  class Sekolah extends Controller {

    public function index() {

      header('Location: ' . BASEURL . '/home');
      exit;

    }

    public function detail($id_sekolah) {

      $data['sekolah_umum'] = $this->model('Sekolah_model')->getSekolahById($id_sekolah);

      $data['sekolah_kelas'] = $this->model('Sekolah_model')->getKelas($id_sekolah);
      $data['sekolah_kelas_tambahId'] = $this->model('Sekolah_model')->kelasTambahId();

      $data['sekolah_guru'] = $this->model('Sekolah_model')->getGuru($id_sekolah);

      $data['sekolah_labor'] = $this->model('Sekolah_model')->getLabor($id_sekolah);
      $data['sekolah_labor_jumlah']  = $this->model('Sekolah_model')->getLaborSum($id_sekolah);

      $data['sekolah_alat'] = $this->model('Sekolah_model')->getAlat($id_sekolah);
      $data['sekolah_alat_jumlah'] = $this->model('Sekolah_model')->getAlatSum($id_sekolah);

      $data['title'] = 'Info ' . $data['sekolah_umum']['nama_sekolah'];

      $data['header_status'] = $this->model('Header_model')->getStatus();
      $data['header_akreditasi'] = $this->model('Header_model')->getAkreditasi();
      $data['header_kurikulum'] = $this->model('Header_model')->getKurikulum();
      $data['header_kecamatan'] = $this->model('Header_model')->getKecamatan();

      $this->view('templates/header', $data);
      $this->view('templates/map', $data);
      $this->view('sekolah/detail', $data);
      $this->view('templates/modal', $data);
      $this->view('templates/footer');

    }

    public function edit($id_sekolah) {

      $data['sekolah_umum'] = $this->model('Sekolah_model')->getSekolahById($id_sekolah);

      $data['sekolah_kelas'] = $this->model('Sekolah_model')->getKelas($id_sekolah);

      $data['title'] = 'Edit Data Sekolah';

      $data['header_status'] = $this->model('Header_model')->getStatus();
      $data['header_akreditasi'] = $this->model('Header_model')->getAkreditasi();
      $data['header_kurikulum'] = $this->model('Header_model')->getKurikulum();
      $data['header_kecamatan'] = $this->model('Header_model')->getKecamatan();

      $this->view('templates/header', $data);
      $this->view('sekolah/edit', $data);
      $this->view('templates/footer');

    }

    public function tambahKelas($id_sekolah) {

      if($this->model('Sekolah_model')->tambahDataKelas($_POST, $id_sekolah) > 0) {
        Flasher::setFlash('berhasil', 'ditambahkan', 'success');
        header('Location: '. BASEURL .'/sekolah/detail/' . $id_sekolah);
        exit;
      }
      else {
        Flasher::setFlash('gagal', 'ditambahkan', 'dagner');
        header('Location: '. BASEURL .'/sekolah/detail/' . $id_sekolah);
        exit;
      }

    }

    public function hapus($id_sekolah, $id_kelas) {

      if($this->model('Sekolah_model')->hapusDataKelas($id_kelas, $id_sekolah) > 0) {
        Flasher::setFlash('berhasil', 'dihapus', 'success');
        header('Location: ' . BASEURL . '/sekolah/detail/' . $id_sekolah);
        exit;
      }
      else {
        Flasher::setFlash('gagal','dihapus','danger');
        header('Location: ' . BASEURL . '/sekolah/detail/' . $id_sekolah);
        exit;
      }

    }

  }