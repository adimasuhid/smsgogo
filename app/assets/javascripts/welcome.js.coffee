# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

  setToActive = (id) ->
    $(".nav li").removeClass("active")
    $("#"+id).addClass("active")

  getScrolledID = ->
    home = $("#home").offset().top
    contact = $("#contact").offset().top
    pricing = $("#pricing").offset().top
    about = $("#about").offset().top

    current_position = $(window).scrollTop() + 70

    if current_position < about
      position =  "homelink"
    else if current_position >= about && current_position < pricing
      position =  "aboutlink"
    else if current_position >= pricing && current_position < contact
      position =  "pricinglink"
    else
      position =  "contactlink"

    return position

  goToByScroll = (id) ->
    setToActive(id)
    
    # Remoove "link" from the ID
    id = id.replace("link", "")
    
    # Scroll
    $("html,body").animate
      scrollTop: $("#" + id).offset().top - 70
    , "slow"

  $(".nav li").click (e) ->
    
    # Prevent a page reload when a link is pressed
    e.preventDefault()
    
    # Call the scroll function
    goToByScroll $(this).attr("id")

  $("#checkout").click (e) ->
    e.preventDefault()
    goToByScroll "pricinglink"

  $("#contactus").click (e) ->
    e.preventDefault()
    goToByScroll "contactlink"

  $(window).scroll ->
    position = getScrolledID()
    setToActive(position)

