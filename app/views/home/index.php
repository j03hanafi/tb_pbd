<h1>Sekolah</h1>

<table border="1">
  <tr>
    <td>id_sekolah</td>
    <td>id_akreditasi</td>
    <td>id_status</td>
    <td>nama_sekolah</td>
    <td>siswa_lk</td>
    <td>siswa_pr</td>
    <td>kurikulum</td>
    <td>luas_tanah</td>
    <td>jumlah_kelas</td>
    <td>jumlah_guru</td>
    <td>alamat</td>
    <td>lat</td>
    <td>long</td>
  </tr>
<?php foreach( $data['sekolah'] as $skl ) : ?>
  <tr>
    <td><?= $skl['id_sekolah']; ?></td>
    <td><?= $skl['id_akreditasi']; ?></td>
    <td><?= $skl['id_status']; ?></td>
    <td><?= $skl['nama_sekolah']; ?></td>
    <td><?= $skl['siswa_lk']; ?></td>
    <td><?= $skl['siswa_pr']; ?></td>
    <td><?= $skl['kurikulum']; ?></td>
    <td><?= $skl['luas_tanah']; ?></td>
    <td><?= $skl['jumlah_kelas']; ?></td>
    <td><?= $skl['jumlah_guru']; ?></td>
    <td><?= $skl['alamat']; ?></td>
    <td><?= $skl['lat']; ?></td>
    <td><?= $skl['long']; ?></td>
  </tr>
<?php endforeach; ?>
</table>