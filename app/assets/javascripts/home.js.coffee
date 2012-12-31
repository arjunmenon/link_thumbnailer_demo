# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('form').bind('ajax:success', (event, data) ->

    $('#title').html('')
    $('#desc').html('')
    $('.carousel-inner').html('')

    $('#title').html(data.title)
    $('#desc').html(data.description)

    i = 0
    data.images.map (e) ->
      if i is 0
        $('.carousel-inner').append("<div class='item active'><img src='#{e.source_url}' /></div>")
      else
        $('.carousel-inner').append("<div class='item'><img src='#{e.source_url}' /></div>")

      i += 1

    $('.carousel-control').show() if data.images.length > 1
  )
