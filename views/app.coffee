$ ->
  hex = ->
    $.ajax { url: '/hex' }
  
  red = hex()
  green = hex()
  blue = hex()

  red.done (hh)->
    $("#r").css 'background-color', "##{hh}0000"
  green.done (hh)->
    $("#g").css 'background-color', "#00#{hh}00"
  blue.done (hh)->
    $("#b").css 'background-color', "#0000#{hh}"
  
  red.done (hh) ->
    console.log(hh)

  color = $.when(red, green, blue)

  color.done (r, g, b) ->
    $("#color").css 'background-color', "##{r[0]}#{g[0]}#{b[0]}"
  

  
  $('#message').ajaxError (event, jqxhr) ->
    $(this).text event
    console.log event, jqxhr

