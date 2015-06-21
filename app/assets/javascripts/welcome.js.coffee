# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Intialize skrollr
window.onload = ->
  s = skrollr.init()
  return

# Scroll smoothly to anchors
$ ->
  $('a[href*=#]:not([href=#])').click ->
    if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
      target = $(@hash)
      target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
      if target.length
        $('html,body').animate { scrollTop: target.offset().top }, 1000
        return false
    return
  return



# Mobile Site
$(document).ready ->
  if $( window ).width() < 1024
    $('.nav_what').html 'what'
    $('.nav_who').html 'how'
    $('.nav_lets').html 'do'
return
