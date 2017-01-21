"use strict";

window.initMap = function() {
        // Create a map object and specify the DOM element for display.
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 19.8798982, lng: -103.6052334},
          zoom: 9

        });


var infowindow = new google.maps.InfoWindow({
  content: ''
});
var marcadores = [{
  position: {
    lat:19.6883289,
    lng: -103.4696257
  },
  contenido: '<h3>Ubicacion Actual</h3>'+ '<h3>Ciudad Guzman</h3>' + 'Kilometro 86'
}, {
  position: {
    lat: 19.4335231,
    lng: -103.4949645
  },
  contenido: '<h3>Caseta a Tonila</h3>'+ 'Kilometro 129'
},
{
 position: {
   lat: 19.879142,
   lng: -103.5193104
 },
 contenido: '<h3>Sayula/Usmajac</h3>'+ 'Kilometro 65'
},
{
 position: {
   lat: 19.933248,
   lng: -103.530056
 },
 contenido: '<h3>Caseta Atoyac</h3>'+ 'Kilometro 59'
},
{
 position: {
   lat: 20.372907,
   lng: -103.576236
 },
 contenido: '<h3>Caseta Acatlan</h3>'+ 'Kilometro 7'
}];
for (var i = 0, j = marcadores.length; i < j; i++) {
  var contenido = marcadores[i].contenido;
  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(marcadores[i].position.lat, marcadores[i].position.lng),
    map: map
  });
  (function(marker, contenido) {
    google.maps.event.addListener(marker, 'click', function() {
      infowindow.setContent(contenido);
      infowindow.open(map, marker);
    });
  })(marker, contenido);
}
}

      //acatlan, sayula, san marcos

/*var map;
window.initMap = function() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -34.397, lng: 150.644},
    zoom: 13,
    styles:
    [
        {
            "featureType": "water",
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#e9e9e9"
                },
                {
                    "lightness": 17
                }
            ]
        },
        {
            "featureType": "landscape",
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#f5f5f5"
                },
                {
                    "lightness": 20
                }
            ]
        },
        {
            "featureType": "road.highway",
            "elementType": "geometry.fill",
            "stylers": [
                {
                    "color": "#ffffff"
                },
                {
                    "lightness": 17
                }
            ]
        },
        {
            "featureType": "road.highway",
            "elementType": "geometry.stroke",
            "stylers": [
                {
                    "color": "#ffffff"
                },
                {
                    "lightness": 29
                },
                {
                    "weight": 0.2
                }
            ]
        },
        {
            "featureType": "road.arterial",
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#ffffff"
                },
                {
                    "lightness": 18
                }
            ]
        },
        {
            "featureType": "road.local",
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#ffffff"
                },
                {
                    "lightness": 16
                }
            ]
        },
        {
            "featureType": "poi",
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#f5f5f5"
                },
                {
                    "lightness": 21
                }
            ]
        },
        {
            "featureType": "poi.park",
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#dedede"
                },
                {
                    "lightness": 21
                }
            ]
        },
        {
            "elementType": "labels.text.stroke",
            "stylers": [
                {
                    "visibility": "on"
                },
                {
                    "color": "#ffffff"
                },
                {
                    "lightness": 16
                }
            ]
        },
        {
            "elementType": "labels.text.fill",
            "stylers": [
                {
                    "saturation": 36
                },
                {
                    "color": "#333333"
                },
                {
                    "lightness": 40
                }
            ]
        },
        {
            "elementType": "labels.icon",
            "stylers": [
                {
                    "visibility": "off"
                }
            ]
        },
        {
            "featureType": "transit",
            "elementType": "geometry",
            "stylers": [
                {
                    "color": "#f2f2f2"
                },
                {
                    "lightness": 19
                }
            ]
        },
        {
            "featureType": "administrative",
            "elementType": "geometry.fill",
            "stylers": [
                {
                    "color": "#fefefe"
                },
                {
                    "lightness": 20
                }
            ]
        },
        {
            "featureType": "administrative",
            "elementType": "geometry.stroke",
            "stylers": [
                {
                    "color": "#fefefe"
                },
                {
                    "lightness": 17
                },
                {
                    "weight": 1.2
                }
            ]
        }
    ]
  });
}*/
