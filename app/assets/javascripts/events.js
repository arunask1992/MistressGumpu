// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('.eventsmap').ready(function() {
    var current_lat = 12.8844681;
    var current_long = 77.6377612;
    var mymap = L.map('eventsmap').setView([current_lat,current_long], 13);
    L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
        id: 'mapbox.streets',
        accessToken: 'pk.eyJ1IjoibWFkaHVtaXRoYXAiLCJhIjoiY2lsajFxNDJnM3dnZ3Y2bTAzNDF2bDh1byJ9.1CrFHATHc4-BD2F69nfTRw'
    }).addTo(mymap);
    var marker = L.marker([current_lat, current_long]).addTo(mymap);
    bind_popup(marker, "<b>You are here</b>");
    $.ajax({
        url: '/events_list',
        type: 'get',
        success: function (data) {
            for (i = 0; i < data.length; i++) { 
                my_event = data[i];
                add_marker_with_icon(mymap, my_event.venue_latitude, my_event.venue_logitude, "<b>".concat(my_event.title).concat("</b>"));
            }
        }
    });
});

var add_marker_with_icon = function(map, lat, long, popup) {
    var marker_icon = L.icon({
        iconUrl: '/assets/cal.png',
        iconSize:     [30, 27], 
        iconAnchor:   [22, 94], 
        popupAnchor:  [-3, -76]
    });
    var marker = L.marker([lat, long], {icon: marker_icon}).addTo(map);
    bind_popup(marker, popup);
};

var bind_popup = function(marker, popup) {
    marker.bindPopup(popup);
    marker.on('mouseover', function (e) {
        this.openPopup();
    });
    marker.on('mouseout', function (e) {
        this.closePopup();
    });
}
