var map;
var mode;
var myIcon;
var newIcon;
var is_marked = false;
var m;
//alert('HI');
// document.addEventListener('DOMContentLoaded', function() {
//     var elems = document.querySelectorAll('select');
//     alert("select OK");
//     var instances = M.FormSelect.init(elems, );
//     alert("FIN OK");
// });
$(document).ready(function(){
    
    // $('.carousel').carousel();
    //$('.date_picker').datepicker();
    //alert('HI');
    
    map = L.map('map', {
        center: [23.135, -82.3818],
        zoom: 15,
        minZoom: 8,
        doubleClickZoom: false
    });
    map.on('click', onMapClick);

    //L.tileLayer('/map/get_map/{z}/{x}/{y}.png').addTo(map);
   
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map);

    newIcon = L.icon({
        iconUrl: '/assets/marker-icon-2x.png',
        iconSize: [38, 70], // 95
        iconAnchor: [22, 70], // 94
        popupAnchor: [-3, -76],
        shadowUrl: '/assets/marker-shadow.png',
        shadowSize: [68, 95],
        shadowAnchor: [22, 94]
    });
});
function onMapClick(e){
    // var url = '/map/save_point?x=' + e.latlng.lat.toString() + '&y=' + e.latlng.lng.toString();
    // var url2 = '/map/save_point';

    // var data = {
    //     x:e.latlng.lat.toString(),
    //     y:e.latlng.lng.toString()
    // }
    // // $.post(url2,data,function(result){
    // //
    // // });
    // $.getJSON(url,function(data){
    //     //alert(data);
    // });

    $('#rent_X').val(e.latlng.lat);
    $('#rent_Y').val(e.latlng.lng);
    if(is_marked)
        map.removeLayer(m);
    is_marked = true;

    m = new L.marker([e.latlng.lat, e.latlng.lng], {
        icon: newIcon
        // fillColor: 'red',
        // fillOpacity: 0.5,
        //riseOnHover: true
    });
    m.bindPopup('A pretty CSS3 popup.<br> Easily customizable.');

    m.on('click',function(){
        m.openPopup();
    });

    map.addLayer(m);
}