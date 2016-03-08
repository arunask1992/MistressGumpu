// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('.eventsmap').ready(function() {
    $.ajax({
        url: '/events_list',
        type: 'get',
        success: function (data) {
            var current_lat = 12.8844681;
            var current_long = 77.6377612;
            var mymap = L.map('eventsmap').setView([current_lat,current_long], 13);
            L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
                id: 'mapbox.streets',
                accessToken: 'pk.eyJ1IjoibWFkaHVtaXRoYXAiLCJhIjoiY2lsajFxNDJnM3dnZ3Y2bTAzNDF2bDh1byJ9.1CrFHATHc4-BD2F69nfTRw'
            }).addTo(mymap);
            add_marker(mymap, current_lat, current_long, "<b>You are here</b>");
        }
    });
});

var add_marker = function(map, lat, long, popup) {
    var marker = L.marker([lat, long]).addTo(map);
            marker.bindPopup(popup);
            marker.on('mouseover', function (e) {
                this.openPopup();
            });
            marker.on('mouseout', function (e) {
                this.closePopup();
            });
}
