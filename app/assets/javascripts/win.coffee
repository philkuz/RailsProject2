# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->

  i = 0
  while i < 100
     $('#yes').animate { 'zoom': 10 }, 2000
     $('#yes').animate { 'zoom': 0.5}, 2000
     $('#howard').hide 1000
     $('#howard').show 1000
     i++
  return
