<div class="container">
  <h1><?= $data['title']; ?></h1>
  <div class="row">
    <?php foreach( $data['sekolah'] as $sekolahAll ) : ?>

      <div class="col-lg-4 my-2">
        <div class="card">
          <img src="#" class="card-img-top" alt="#">
          <div class="card-body">
            <h5 class="card-title"><?= $sekolahAll['nama_sekolah']; ?></h5>
            <p class="card-text"><?= $sekolahAll['alamat']; ?></p>
            <a href="<?= BASEURL . '/sekolah/detail/' . $sekolahAll['id_sekolah'];?>" class="btn btn-primary">Detail Sekolah</a>
          </div>
        </div>
      </div>

    <?php endforeach; ?>
  </div>
</div>