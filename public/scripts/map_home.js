var map;
var mode;
var myIcon;
var newIcon;
var is_marked = false;
var m;

$(document).ready(function(){
    
    map = L.map('map', {
        center: [23.135, -82.3818],
        zoom: 15,
        minZoom: 8,
        doubleClickZoom: false
    });
    
    // map.on('click', onMapClick);

    //L.tileLayer('/map/get_map/{z}/{x}/{y}.png').addTo(map);
   
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map);

    // alert("Hi");
    newIcon = L.icon({
        iconUrl: '/assets/marker-icon-2x-00179c4c1ee830d3a108412ae0d294f55776cfeb085c60129a39aa6fc4ae2528.png',
        iconSize: [38, 55], // 95
        iconAnchor: [22, 40], // 94
        popupAnchor: [-3, -76],
        shadowUrl: '/assets/marker-shadow-264f5c640339f042dd729062cfc04c17f8ea0f29882b538e3848ed8f10edb4da.png',
        shadowSize: [68, 70],
        shadowAnchor: [22, 70]
    });
    var url = '/rents/all_points';
    $.getJSON(url,function(data){
        for (let i = 0; i < data.length; i++) {
            const element = data[i];
            // alert(array)
            if(data[i].X != null)
            {
                m = new L.marker([data[i].X, data[i].Y], {
                    icon: newIcon
                });
                // m.bindPopup('id = ' + data[i].id);
                m.on('click',function(){
                    window.location.href = '/rents/' + data[i].id;
                });

                map.addLayer(m);
            }
        }
    });

});
// function onMapClick(e){
//     // var url = '/map/save_point?x=' + e.latlng.lat.toString() + '&y=' + e.latlng.lng.toString();
//     // var url2 = '/map/save_point';

//     // var data = {
//     //     x:e.latlng.lat.toString(),
//     //     y:e.latlng.lng.toString()
//     // }
//     // // $.post(url2,data,function(result){
//     // //
//     // // });
//     // $.getJSON(url,function(data){
//     //     //alert(data);
//     // });

//     $('#rent_X').val(e.latlng.lat);
//     $('#rent_Y').val(e.latlng.lng);
//     if(is_marked)
//         map.removeLayer(m);
//     is_marked = true;

//     m = new L.marker([e.latlng.lat, e.latlng.lng], {
//         icon: newIcon
//     });
//     m.bindPopup('A pretty CSS3 popup.<br> Easily customizable.');

//     m.on('click',function(){
//         m.openPopup();
//     });

//     map.addLayer(m);
// }