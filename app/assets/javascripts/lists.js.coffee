# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $("#myModal .modal-footer .btn-success").click ->
    console.log "wuut"
    $("#new_list").submit()
