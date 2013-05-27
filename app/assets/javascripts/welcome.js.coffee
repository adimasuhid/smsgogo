# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

  goToByScroll = (id) ->
    
    # Remoove "link" from the ID
    id = id.replace("link", "")
    
    # Scroll
    $("html,body").animate
      scrollTop: $("#" + id).offset().top
    , "slow"

  $(".nav li").click (e) ->
    
    # Prevent a page reload when a link is pressed
    e.preventDefault()
    
    # Call the scroll function
    goToByScroll $(this).attr("id")

