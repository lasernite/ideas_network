# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Intialize skrollr
window.onload = ->
  s = skrollr.init()
  return


# Mobile Site

$(document).ready ->
  if $( window ).width() < 1024
    $('.nav_what').html 'what'
    $('.nav_who').html 'who'
    $('.nav_lets').html 'do'
return
