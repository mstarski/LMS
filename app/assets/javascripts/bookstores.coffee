# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# bookstores#show
handleMapDisplay = () -> 
    map = new L.map("map")



window.addEventListener "load", () ->
    page = document.getElementById "bookstores_show"
    if page?
        handleMapDisplay()
