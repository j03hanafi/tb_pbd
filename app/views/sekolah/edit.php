<div class="container">

  <div class="row mt-lg-3">
    <div class="col-lg-12">
      <h1 class="display-4"><?= $data['sekolah_umum']['nama_sekolah']; ?></h1>
    </div>
  </div>

  <div class="row-cols-lg-1 my-lg-3">
    <a href="#" class="btn btn-outline-warning" role="button" aria-pressed="true" onclick="goBack()">Kembali</a>
  </div>

  <div class="row my-lg-5">
    <div class="col-lg-12">
      <!-- form edit informasi sekolah -->
      <form action="<?= BASEURL; ?>/sekolah/update/info" method="post">
      
        <h3>Informasi Sekolah</h3>

        <div class="form-group">
          <label for="namaSekolah">Nama Sekolah</label>
          <input type="text" class="form-control" id="namaSekolah" value="<?= $data['sekolah_umum']['nama_sekolah']; ?>">
        </div>

        <div class="form-row">
          <div class="form-group col-lg-6">
            <label for="siswaLk">Siswa Laki-laki</label>
            <input type="number" class="form-control" id="siswaLk" value="<?= $data['sekolah_umum']['siswa_lk']; ?>">
          </div>
          <div class="form-group col-lg-6">
            <label for="siswaPr">Siswa Perempuan</label>
            <input type="number" class="form-control" id="siswaPr" value="<?= $data['sekolah_umum']['siswa_pr']; ?>">
          </div>
        </div>

        <div class="form-group">
          <label for="kurikulum">Kurikulum</label>
          <select class="form-control" id="kurikulum">
            <option value="K-13" selected>K-13</option>
            <option value="KTSP">KTSP</option>
          </select>
        </div>

        <div class="form-row">
          <div class="form-group col-lg-4">
            <label for="luasTanah">Luas Tanah</label>
            <input type="number" class="form-control" id="luasTanah" value="<?= $data['sekolah_umum']['luas_tanah']; ?>">
          </div>
          <div class="form-group col-lg-4">
            <label for="jumlahKelas">Jumlah Kelas</label>
            <input type="number" class="form-control" id="jumlahKelas" value="<?= $data['sekolah_umum']['jumlah_kelas']; ?>" readonly>
          </div>
          <div class="form-group col-lg-4">
            <label for="jumlahGuru">Jumlah Guru</label>
            <input type="number" class="form-control" id="jumlahGuru" value="<?= $data['sekolah_umum']['jumlah_guru']; ?>" readonly>
          </div>
        </div>

        <div class="form-group">
          <label for="alamat">Alamat</label>
          <input type="text" class="form-control" id="alamat" value="<?= $data['sekolah_umum']['alamat']; ?>">
        </div>

        <button type="submit" class="btn btn-primary">Simpan Informasi Sekolah</button>

      </form>
    </div>
  </div>

</div>