window.addEventListener('load', function(){
    var geocoder;
    var map;
    function initialize() {
        geocoder = new google.maps.Geocoder();
        var latlng = new google.maps.LatLng(54.3401527,10.1244517);
        var mapOptions = {
            zoom: 14,
            center: latlng
        }
        map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
    }

    function codeAddress() {
        var street1 = jQuery('input[name=street1]').val(),
        street2 = jQuery('input[name=street2]').val(),
        zip = jQuery('input[name=zipCode]').val(),
        city = jQuery('input[name=city]').val(),
        country = jQuery('input[name=country]').val();

        var address = street1;
        if(street2.length > 0){
            address += ' '+street2;
        }
        address += ', '+zip+' '+country;
        console.log(address)
        geocoder.geocode( { 'address': address}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                console.log(results[0].geometry);
                var loc = results[0].geometry.location;
                map.setCenter(loc);
                var marker = new google.maps.Marker({
                    map: map,
                    position: loc
                });
                console.log(loc);
                $('input[name=latitude]').val(loc.k.toString().replace(/\./g, ','));
                $('input[name=longitude]').val(loc.B.toString().replace(/\./g, ','));

            } else {
                alert('Geocode was not successful for the following reason: ' + status);
            }
        });
    }
    jQuery('#findLocation').click(function(event){
        codeAddress();
        event.preventDefault();
    }).tooltip({
        placement: 'right',
        title: 'Trägt Koordinaten automatisch ein'
    });
    var tip = {
        title: 'Benutzen Sie den Knopf rechts',
        placement: 'top auto'
    };
    $('input[name=longitude]').closest('.form-group').tooltip(tip);
    $('input[name=latitude]').closest('.form-group').tooltip(tip);

//    google.maps.event.addDomListener(window, 'load', initialize);
    initialize()

});