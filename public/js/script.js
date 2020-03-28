$(function() {
  // mengubah elemen di html ketika tombol tambah di klik
  $(".tombolTambahData").on("click", function() {
    $("#judulModal").html("Tambah Data Mahasiswa");
    $(".modal-footer button[type=submit]").html("Tambah Data");
  });

  // mengubah elemen di html ketika tombol tambah di klik
  $(".tampilModalUbah").on("click", function() {
    $("#judulModal").html("Ubah Data Mahasiswa");
    $(".modal-footer button[type=submit]").html("Ubah Data");
    $(".modal-body form").attr(
      "action",
      "http://localhost/training-mvc-php/public/mahasiswa/ubah"
    );

    // mengirimkan data dari database ke element yang ada dalam modal
    // mengambil id data
    const id = $(this).data("id");

    // mengisi form otomatis dengan ajax
    $.ajax({
      url: "http://localhost/training-mvc-php/public/mahasiswa/getubah",
      data: { id: id },
      method: "post",
      dataType: "json",
      success: function(data) {
        $("#id").val(data.id);
        $("#nama").val(data.nama);
        $("#jurusan").val(data.jurusan);
        $("#alamat").val(data.alamat);
      }
    });
  });
});
