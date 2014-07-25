$(document).ready(function(){
  var map;
  function initialize() {
    var mapOptions = {
      center: new google.maps.LatLng(40, 0),
      zoom: 2
    };
    map = new google.maps.Map(document.getElementById("map-canvas"),
      mapOptions);
    for(var i = 0; i< regions.length; i++){
      var marker = new google.maps.Marker({
        position: new google.maps.LatLng(regions[i].latitude, regions[i].longitude),
        map: map,
        url: "http://localhost:3000/" + regions[i].slug
      });

      makeClickEvent(marker);
    }
  }
  function makeClickEvent(marker){
    google.maps.event.addListener(marker, 'click', function() {
      location.href = marker.url;
    });
  }
  console.log(regions);

  google.maps.event.addDomListener(window, 'load', initialize);
});
