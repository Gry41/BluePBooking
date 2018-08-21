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
        iconUrl: '/public/assets/marker-icon-2x-00179c4c1ee830d3a108412ae0d294f55776cfeb085c60129a39aa6fc4ae2528.png',
        iconSize: [38, 70], // 95
        iconAnchor: [22, 70], // 94
        popupAnchor: [-3, -76],
        shadowUrl: '/public/assets/markers-shadow-8703a2262710f5e3d29e65d2acdf90d6512e159e119d27b8234731d8a6208a20.png',
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

    // alert(e.latlng.lat);
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