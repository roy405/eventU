<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="map">
    <script>          
       var map, infoWindow;
                function initMap() {
                    map = new google.maps.Map(document.getElementById('map'), {
                        center: {lat: 7.8731, lng: 80.7718},
                        zoom: 7.5,
                        disableDefaultUI: true,
                        styles: [
                            {elementType: 'geometry', stylers: [{color: '#242f3e'}]},
                            {elementType: 'labels.text.stroke', stylers: [{color: '#242f3e'}]},
                            {elementType: 'labels.text.fill', stylers: [{color: '#746855'}]},
                            {
                                featureType: 'administrative.locality',
                                elementType: 'labels.text.fill',
                                stylers: [{color: '#d59563'}]
                            },
                            {
                                featureType: 'poi',
                                elementType: 'labels.text.fill',
                                stylers: [{color: '#d59563'}]
                            },
                            {
                                featureType: 'poi.park',
                                elementType: 'geometry',
                                stylers: [{color: '#263c3f'}]
                            },
                            {
                                featureType: 'poi.park',
                                elementType: 'labels.text.fill',
                                stylers: [{color: '#6b9a76'}]
                            },
                            {
                                featureType: 'road',
                                elementType: 'geometry',
                                stylers: [{color: '#38414e'}]
                            },
                            {
                                featureType: 'road',
                                elementType: 'geometry.stroke',
                                stylers: [{color: '#212a37'}]
                            },
                            {
                                featureType: 'road',
                                elementType: 'labels.text.fill',
                                stylers: [{color: '#9ca5b3'}]
                            },
                            {
                                featureType: 'road.highway',
                                elementType: 'geometry',
                                stylers: [{color: '#746855'}]
                            },
                            {
                                featureType: 'road.highway',
                                elementType: 'geometry.stroke',
                                stylers: [{color: '#1f2835'}]
                            },
                            {
                                featureType: 'road.highway',
                                elementType: 'labels.text.fill',
                                stylers: [{color: '#f3d19c'}]
                            },
                            {
                                featureType: 'transit',
                                elementType: 'geometry',
                                stylers: [{color: '#2f3948'}]
                            },
                            {
                                featureType: 'transit.station',
                                elementType: 'labels.text.fill',
                                stylers: [{color: '#d59563'}]
                            },
                            {
                                featureType: 'water',
                                elementType: 'geometry',
                                stylers: [{color: '#17263c'}]
                            },
                            {
                                featureType: 'water',
                                elementType: 'labels.text.fill',
                                stylers: [{color: '#515c6d'}]
                            },
                            {
                                featureType: 'water',
                                elementType: 'labels.text.stroke',
                                stylers: [{color: '#17263c'}]
                            }
                        ]
                    });

                    infoWindow = new google.maps.InfoWindow;

                    //HTML5 geolocation.
                    if (navigator.geolocation) {
                        navigator.geolocation.getCurrentPosition(function(position) {
                            var pos = {
                                lat: position.coords.latitude,
                                lng: position.coords.longitude
                            };

                            var icon_user = {
                                url: "/img/person_pin.png", // url
                                scaledSize: new google.maps.Size(35, 35), // scaled size
                                origin: new google.maps.Point(0,0), // origin
                            }

                            var marker = new google.maps.Marker({
                                position: pos,
                                map: map,
                                title: 'your location',
                                icon: icon_user
                            });

                            map.setZoom(17);
                            map.panTo(marker.position);

                            infoWindow.setPosition(pos);
                            infoWindow.setContent('Location found.');
                            map.setCenter(pos);


                        }, function() {
                            handleLocationError(true, infoWindow, map.getCenter());
                        });
                    } else {
                        // Browser doesn't support Geolocation
                        handleLocationError(false, infoWindow, map.getCenter());
                    }
                }

                function handleLocationError(browserHasGeolocation, infoWindow, pos) {
                    infoWindow.setPosition(pos);
                    infoWindow.setContent(browserHasGeolocation ?
                        'Error: The Geolocation service failed.' :
                        'Error: Your browser doesn\'t support geolocation.');
                    infoWindow.open(map);
                }         
    </script>
</div>