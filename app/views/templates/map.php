<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBNnzxae2AewMUN0Tt_fC3gN38goeLVdVE&callback=initialize" async defer></script>

<script type="text/javascript">

  var marker;

  function initialize() {

    var infoWindow = new google.maps.InfoWindow;

    var mapOptions = {
      center:new google.maps.LatLng(-0.5830695,116.3202515),
      zoom:40,
      mapTypeId: google.maps.MapTypeId.HYBRID
    } 

    var peta = new google.maps.Map(document.getElementById("googleMap"), mapOptions);

    var bounds = new google.maps.LatLngBounds();

    <?php

      $nama = $data['sekolah_umum']['nama_sekolah'];
      $lat = $data['sekolah_umum']['lat'];
      $long = $data['sekolah_umum']['long'];
      echo "addMarker($lat, $long, '$nama');";

    ?>

    function addMarker(lat, lng, info){
      var lokasi = new google.maps.LatLng(lat, lng);
      bounds.extend(lokasi);
      var marker = new google.maps.Marker({
          map: peta,
          position: lokasi
      });       
      peta.fitBounds(bounds);
      bindInfoWindow(marker, peta, infoWindow, info);
    }

    function bindInfoWindow(marker, peta, infoWindow, html){
        google.maps.event.addListener(marker, 'click', function() {
        infoWindow.setContent(html);
        infoWindow.open(peta, marker);
      });
    }

  }

</script>