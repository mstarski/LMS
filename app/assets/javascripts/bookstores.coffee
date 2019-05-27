# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# bookstores#show
handleMapDisplay = () -> 
    map_config = 
        minZoom: 8,
        maxZoom: 19,
        attribution: osmAttrib

    map = new L.map "map"
    osmUrl = "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
    osmAttrib = 'Map data © <a href="https://openstreetmap.org">OpenStreetMap</a> contributors'
    osm = new L.TileLayer osmUrl, map_config 

    map.setView(new L.LatLng(gon.latitude, gon.longitude), 19);
    map.addLayer(osm);

    L.marker([gon.latitude, gon.longitude], title: gon.name).addTo(map)


window.addEventListener "load", () ->
    page = document.getElementById "bookstores_show"
    if page?
        handleMapDisplay()
        console.log(gon)
