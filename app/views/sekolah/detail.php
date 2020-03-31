<div class="container">

  <div class="row mt-lg-3">
    <div class="col-lg-12">
      <h1 class="display-4"><?= $data['sekolah_umum']['nama_sekolah']; ?></h1>
    </div>
  </div>

  <div class="row-cols-lg-1 my-lg-3">
    <a href="<?= BASEURL; ?>/sekolah/edit/<?= $data['sekolah_umum']['id_sekolah']; ?>" class="btn btn-outline-primary active tampilPageEdit" role="button" aria-pressed="true" data-id="<?= $data['sekolah_umum']['id_sekolah']; ?>">Edit</a>
    <a href="#" class="btn btn-outline-warning" role="button" aria-pressed="true" onclick="goBack()">Kembali</a>
  </div>

  <div class="row">
    <div class="col-lg-6">
      <?php Flasher::flash(); ?>
    </div>
  </div>

  <div class="row my-lg-3">
    <div class="col-lg-7">
      <div id="googleMap"></div>
    </div>

    <!-- Info Sekolah -->
    <div class="col-lg-5">
      <table class="table table-hover">
        <!-- kondisi, jumlah-->
        <thead class="thead-light">
          <tr>
            <th scope="col" colspan="2">Informasi Sekolah</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope='row'>Nama Sekolah</th>
            <td><?= $data['sekolah_umum']['nama_sekolah']; ?></td>
          </tr>
          <tr>
            <th scope='row'>Siswa Laki-laki</th>
            <td><?= $data['sekolah_umum']['siswa_lk']; ?> orang</td>
          </tr>
          <tr>
            <th scope='row'>Siswa Perempuan</th>
            <td><?= $data['sekolah_umum']['siswa_pr']; ?> orang</td>
          </tr>
          <tr>
            <th scope='row'>Kurikulum</th>
            <td><?= $data['sekolah_umum']['kurikulum']; ?></td>
          </tr>
          <tr>
            <th scope='row'>Luas Tanah</th>
            <td><?= $data['sekolah_umum']['luas_tanah']; ?> m<sup>2</sup></td>
          </tr>
          <tr>
            <th scope='row'>Jumlah Kelas</th>
            <td><?= $data['sekolah_umum']['jumlah_kelas']; ?> kelas</td>
          </tr>
          <tr>
            <th scope='row'>Jumlah Guru</th>
            <td><?= $data['sekolah_umum']['jumlah_guru']; ?> orang</td>
          </tr>
          <tr>
            <th scope='row'>Alamat</th>
            <td><?= $data['sekolah_umum']['alamat']; ?></td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

  <!-- Info kelas -->
  <div class="row my-lg-3">
    <div class="col-lg-12">
      <table class="table table-hover table-sm">
        <caption>Jumlah Kelas : <?= $data['sekolah_umum']['jumlah_kelas']; ?> kelas</caption>
        <!-- no, id_kelas, kondisi, jumlah_meja, jumlah_kursi-->
        <thead class="thead-light">
          <tr>
            <th scope="col" colspan="4">Kelas</th>
            <th scope="col">
              <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#formModalKelas">
                Tambah Kelas
              </button> 
            </th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="col">No. </th>
            <th scope="col">Kondisi</th>
            <th scope="col">Jumlah Meja</th>
            <th scope="col">Jumlah Kursi</th>
            <th scope="col">Edit</th>
          </tr>
          <?php 
            $nomor = 1;
            foreach( $data['sekolah_kelas'] as $kelas ) : 
          ?>
            <tr>
              <td><?= $nomor; ?></td>
              <td><?= $kelas['kondisi_kelas']; ?></td>
              <td><?= $kelas['jumlah_meja']; ?></td>
              <td><?= $kelas['jumlah_kursi']; ?></td>
              <td><a class="btn btn-danger btn-sm" href="<?= BASEURL; ?>/sekolah/hapus/<?= $data['sekolah_umum']['id_sekolah']; ?>/<?= $kelas['id_kelas']; ?>" role="button" onclick="return confirm('Hapus Data?');">Hapus</a></td>
            </tr>
          <?php 
            $nomor++;
            endforeach; 
          ?>
        </tbody>
      </table>
    </div>
  </div>

  <!-- Info Guru -->
  <div class="row my-lg-3">
    <div class="col-lg-12">
      <table class="table table-hover table-sm">
        <caption>Jumlah Guru : <?= $data['sekolah_umum']['jumlah_guru']; ?> labor</caption>
        <!-- no, id_kelas, kondisi, jumlah_meja, jumlah_kursi-->
        <thead class="thead-light">
          <tr>
            <th scope="col" colspan="3">Guru</th>
            <!-- <th scope="col">
              <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#formModalGuru">
                Edit Guru
              </button> 
            </th> -->
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="col">No. </th>
            <th scope="col">Golongan</th>
            <th scope="col">Banyak</th>
          </tr>
          <?php 
            $nomor = 1;
            foreach( $data['sekolah_guru'] as $guru ) : 
          ?>
            <tr>
              <td><?= $nomor; ?></td>
              <td><?= $guru['golongan_guru']; ?></td>
              <td><?= $guru['jumlah_guru_gol']; ?></td>
            </tr>
          <?php 
            $nomor++;
            endforeach; 
          ?>
        </tbody>
      </table>
    </div>
  </div>

  <!-- Info Labor -->
  <div class="row my-lg-3">
    <div class="col-lg-12">
      <table class="table table-hover table-sm">
        <caption>Jumlah Laboratorium : <?= $data['sekolah_labor_jumlah']['jumlah']; ?> labor</caption>
        <!-- no, id_kelas, kondisi, jumlah_meja, jumlah_kursi-->
        <thead class="thead-light">
          <tr>
            <th scope="col" colspan="3">Laboratorium</th>
            <!-- <th scope="col">
              <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#formModalLabor">
                Edit Laboratorium
              </button> 
            </th> -->
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="col">No. </th>
            <th scope="col">Nama Laboratorium</th>
            <th scope="col">Jumlah</th>
          </tr>
          <?php 
            $nomor = 1;
            foreach( $data['sekolah_labor'] as $labor ) : 
          ?>
            <tr>
              <td><?= $nomor; ?></td>
              <td><?= $labor['nama_labor']; ?></td>
              <td><?= $labor['jumlah_labor']; ?></td>
            </tr>
          <?php 
            $nomor++;
            endforeach; 
          ?>
        </tbody>
      </table>
    </div>
  </div>

  <!-- Info Alat -->
  <div class="row my-lg-3">
    <div class="col-lg-12">
      <table class="table table-hover table-sm">
        <caption>Total Alat : <?= $data['sekolah_alat_jumlah']['jumlah_baik']; ?> baik & <?= $data['sekolah_alat_jumlah']['jumlah_buruk']; ?> buruk</caption>
        <!-- no, id_kelas, kondisi, jumlah_meja, jumlah_kursi-->
        <thead class="thead-light">
          <tr>
            <th scope="col" colspan="5">Alat</th>
            <!-- <th scope="col">
              <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#formModalAlat">
                Edit Alat
              </button> 
            </th> -->
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="col">No. </th>
            <th scope="col">Nama Laboratorium</th>
            <th scope="col">Nama Alat</th>
            <th scope="col">Jumlah Alat Baik</th>
            <th scope="col">Jumlah Alat Kurang Baik</th>
          </tr>
          <?php 
            $nomor = 1;
            foreach( $data['sekolah_alat'] as $alat ) : 
          ?>
            <tr>
              <td><?= $nomor; ?></td>
              <td><?= $alat['nama_labor']; ?></td>
              <td><?= $alat['nama_alat']; ?></td>
              <td><?= $alat['kondisi_alat_baik']; ?></td>
              <td><?= $alat['kondisi_alat_buruk']; ?></td>
            </tr>
          <?php 
            $nomor++;
            endforeach; 
          ?>
        </tbody>
      </table>
    </div>
  </div>

</div>