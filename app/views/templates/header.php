<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?= $data['title']; ?></title>
  <link rel="stylesheet" href="<?= BASEURL; ?>/css/bootstrap.min.css">
  <style>* { padding = 0; margin = 0; }</style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #6435C9;">
    <div class="container-fluid">
      <a class="navbar-brand" href="<?= BASEURL; ?>">Home</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <!-- Sekolah -->
          <li class="nav-item">
            <a class="nav-item nav-link " href="<?= BASEURL; ?>/view/sekolah">Sekolah</a>
          </li>
          <!-- Kecamatan -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Kecamatan
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li>
          <!-- Status -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Status
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <?php foreach( $data['header_status'] as $status ) : ?>
                <a class="dropdown-item" href="<?= BASEURL; ?>/view/status/<?= $status['id_status'] ?>"><?= $status['nama_status'] ?></a>
              <?php endforeach; ?>
            </div>
          </li>
          <!-- Akreditasi -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Akreditasi
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <?php foreach( $data['header_akreditasi'] as $akreditasi ) : ?>
                <a class="dropdown-item" href="<?= BASEURL; ?>/view/akreditasi/<?= $akreditasi['id_akreditasi'] ?>"><?= $akreditasi['akreditasi'] ?></a>
              <?php endforeach; ?>
            </div>
          </li>
          <!-- Kurikulum -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Kurikulum
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <?php foreach( $data['header_kurikulum'] as $kurikulum ) : ?>
                <a class="dropdown-item" href="<?= BASEURL; ?>/view/kurikulum/<?= $kurikulum['kurikulum'] ?>"><?= $kurikulum['kurikulum'] ?></a>
              <?php endforeach; ?>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Main Content -->
  <main class="flex-shrink-0" role="main">